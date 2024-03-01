#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stdint.h>
#include <ctype.h>

#include "FreeRTOS.h"
#include "task.h"
#include "xintc.h"
#include "xiic.h"
#include "xuartlite_l.h"
#include "xuartlite.h"
#include "xstatus.h"
#include "xparameters.h"
#include "platform.h"
#include "microblaze_sleep.h"
#include "xil_printf.h"

#include "mpu6050.h"
#include "nexys4IO.h"
#include "pid_controller.h"
#include "Fusion.h"



#define INTC_DEVICE_ID          XPAR_MICROBLAZE_0_AXI_INTC_DEVICE_ID
#define IIC_DEVICE_ID           XPAR_IIC_0_DEVICE_ID
#define UART_DEVICE_ID          XPAR_AXI_UARTLITE_0_DEVICE_ID
#define UART_BASEADDR           XPAR_AXI_UARTLITE_0_BASEADDR

// Definitions for peripheral NEXYS4IO
#define N4IO_DEVICE_ID          XPAR_NEXYS4IO_0_DEVICE_ID
#define N4IO_BASEADDR           XPAR_NEXYS4IO_0_S00_AXI_BASEADDR
#define N4IO_HIGHADDR           XPAR_NEXYS4IO_0_S00_AXI_HIGHADDR

#define AXI_TIMER_INTR_NUM      XPAR_MICROBLAZE_0_AXI_INTC_AXI_TIMER_0_INTERRUPT_INTR
#define AXI_UARTLITE_INTR_NUM   XPAR_MICROBLAZE_0_AXI_INTC_AXI_UARTLITE_0_INTERRUPT_INTR

#define SWITCH_MASK             0xFFFF
#define BUTTON_MASK             0xFF

#define GYRO_TO_RADIANS 0.00013323124061025415
#define ACCEL_TO_G (1.0 / 16384.0)


// Function prototypes
void vPIDTask(void *pvParameters);

void vMenuTask(void *pvParameters);

void vDataTask(void *pvParameters);

void vExitTask(void *pvParameters);

int init_sys(void);

uint8_t bttn_formatter(uint8_t* bttns);

// AXI Peripherals
XIntc       irq_Ctrlr;
XIic        i2c_dev;
XUartLite   uart_dev;
XIic_Config *ConfigPtr;

// Task Handles
TaskHandle_t xPID  = NULL;
TaskHandle_t xData = NULL;
TaskHandle_t xMenu = NULL;
TaskHandle_t xExit = NULL;

// Global Variables

typedef struct {
    volatile real_t currentAngle;
    volatile real_t targetAngle;
    volatile int16_t gyroOffsetX, gyroOffsetY, gyroOffsetZ;
} SystemState;

typedef struct {
    int16_t offsetX;
    int16_t offsetY;
    int16_t offsetZ;
    // Other members can be added as needed
} GyroData;

SPid pid;

GyroData gyroData;

// Fusion stuff
FusionAhrs ahrs;

// Initialize system state
SystemState systemState;
int main(void) {

    init_platform();

    if (init_sys() != XST_SUCCESS) {
        cleanup_platform();
        return -1;
    }

    FusionAhrsInitialise(&ahrs);

    usleep(1000000);

    /*if (mpu6050_getID(&i2c_dev, &data) != XST_SUCCESS){
        cleanup_platform();
        return -1;
    }*/

    xTaskCreate(vPIDTask,  "PID  Task", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY + 1, &xPID);
    xTaskCreate(vMenuTask, "MENU Task", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY + 1, &xMenu);
    xTaskCreate(vDataTask, "DATA Task", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY + 1, &xData);
    xTaskCreate(vExitTask, "EXIT Task", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY + 1, &xExit);

    vTaskSuspend(xData);
    vTaskSuspend(xPID);
    vTaskSuspend(xExit);

    vTaskResume(xMenu);
    vTaskStartScheduler();

    microblaze_disable_interrupts();
    cleanup_platform(); // This line is technically unreachable.

    return 0;
}

// Implement PID Control based on data from DataTask()
// Adjust t_angle based on BTN0 to inc or BTN3 to dec
void vPIDTask(void *pvParameters) {


    // UNTUNED, JUST GUESSES
    const real_t Kp = 1.0; 
    const real_t Ki = 0.1;
    const real_t Kd = 0.05;

    // Initialize PID controller (might move to separate init function)
    pid.propGain = Kp;
    pid.integratGain = Ki;
    pid.derGain = Kd;
    pid.integratMax = 100;
    pid.integratMin = -100;
    pid.integratState = 0;
    pid.derState = 0;

    for (;;) {

    	// Fetch the current angle from the sensor
    	real_t measuredAngle = systemState.currentAngle;
    	real_t targetAngle = systemState.targetAngle;
    	xil_printf("Measured angle at top of PID: %d\r\n", measuredAngle);

        uint8_t buttons = NX4IO_getBtns();
        buttons = bttn_formatter(&buttons);

        // Adjust target angle based on button presses
        if (buttons & (1 << 0)) { // up pressed
            targetAngle += 1.0;
        }
        if (buttons & (1 << 3)) { // down pressed
            targetAngle -= 1.0;
        }

        // Compute PID correction
        real_t error = targetAngle - measuredAngle;
        real_t correction = UpdatePID(&pid, error, measuredAngle);

        xil_printf("Current Angle = %d, Target Angle = %d, Correction suggestion = %d\r\n", (int)measuredAngle, (int)targetAngle, (int)correction);
        
        vTaskDelay(pdMS_TO_TICKS(500)); // Simulate control task workload
    }
}

// Display user info
// Wait for 'r' or 'R' input to resume tasks
void vMenuTask(void *pvParameters) {

	xil_printf("Entered menu\r\n");
    uint8_t c;
    char t_angle_str[4];  // largest num is three characters {'1', '8', '0', '\0'}
    for (;;) {
        print("INFO:vMenuTask()\tECE 544 Project 2\r\n");
        print("INFO:vMenuTask()\tBy Ibrahim Binmahfood (ibrah5@pdx.edu)\r\n");
        print("INFO:vMenuTask()\tand Robert Wilcox     (rwilcox@pdx.edu)\r\n");
        print("MENU\r\n");

        print("Do wish to activate RUN Mode? Type 'r' or 'R':\r\n");
        c = XUartLite_RecvByte(UART_BASEADDR);

        if ((c == 'r') || (c == 'R')){
            print("Set the Target Angle = \r\n");
            
            if (fgets(t_angle_str, 3, stdin) != NULL) {
                systemState.targetAngle = atoi(t_angle_str);    // convert str->int
                if ((systemState.targetAngle >= 0) && (systemState.targetAngle <= 180)) {

                    xil_printf("User entered %d degrees\r\n", atoi(t_angle_str)); // Print the target angle

                    xil_printf("Target Angle set to: %d degrees\r\n", (int)systemState.targetAngle); // Print the target angle

                    vTaskResume(xData);
                    vTaskResume(xPID);
                    vTaskResume(xExit);
                    vTaskSuspend(xMenu);
                } else {
                    print("ERROR:vMenuTask()\tInvalid Target Angle. Please enter a value between 0 and 180.\r\n");
                }
            } else {
                print("ERROR:vMenuTask()\tQuery User for Target Angle Failed\r\n");
            }
        }

        vTaskDelay(pdMS_TO_TICKS(500)); // Simulate control task workload
    }
}

// Collect data from MPU6050 sensor
// Compute angles and store them in a variable
void vDataTask(void *pvParameters) {

	TickType_t previousTick = xTaskGetTickCount();
	int16_t offsetX = gyroData.offsetX;
	int16_t offsetY = gyroData.offsetY;
	int16_t offsetZ = gyroData.offsetZ;

	for (;;) {
	        int16_t gyroX, gyroY, gyroZ;
	        int16_t accelX, accelY, accelZ;

	        // Fetch gyroscope data
	        mpu6050_getGyroData(&i2c_dev, &gyroX, X_AXIS);
	        mpu6050_getGyroData(&i2c_dev, &gyroY, Y_AXIS);
	        mpu6050_getGyroData(&i2c_dev, &gyroZ, Z_AXIS);

	        // Fetch accelerometer data
	        // Assuming mpu6050_getAccelData function exists
	        mpu6050_getAccelData(&i2c_dev, &accelX, &accelY, &accelZ);

	        // Apply offsets and convert to required units
	        gyroX -= offsetX;
	        gyroY -= offsetY;
	        gyroZ -= offsetZ;

	        FusionVector gyroscope = {
	            .axis.x = gyroX * GYRO_TO_RADIANS,
	            .axis.y = gyroY * GYRO_TO_RADIANS,
	            .axis.z = gyroZ * GYRO_TO_RADIANS,
	        };

	        FusionVector accelerometer = {
	            .axis.x = accelX * ACCEL_TO_G,
	            .axis.y = accelY * ACCEL_TO_G,
	            .axis.z = accelZ * ACCEL_TO_G,
	        };

	        // Calculate deltaTime
	        TickType_t currentTick = xTaskGetTickCount();
	        float deltaTime = (currentTick - previousTick) / (float)configTICK_RATE_HZ;
	        previousTick = currentTick;

	        // Update Fusion AHRS
	        FusionAhrsUpdateNoMagnetometer(&ahrs, gyroscope, accelerometer, deltaTime);

	        // Get and convert orientation to Euler angles
	        FusionQuaternion quaternion = FusionAhrsGetQuaternion(&ahrs);
	        FusionEuler euler = FusionQuaternionToEuler(quaternion);

	        // Print the Roll angle
	        xil_printf("Roll: %d degrees\r\n", (int)euler.angle.roll);

	        vTaskDelay(pdMS_TO_TICKS(50)); // Maintain task periodicity
	    }
	}

// Check slide switch status
// Suspend vDataTask() and vPIDTask() if switch is triggered
void vExitTask(void *pvParameters) {
    for (;;) {
        print("EXIT\r\n");

        uint16_t switches = NX4IO_getSwitches();
        
        NX4IO_setLEDs(switches); // Reflect switch states on LEDs

        xil_printf("DEBUG:vExitTask()\tSwitches: 0x%04X\r\n", switches);

        if (switches & SWITCH_MASK) {
            vTaskSuspend(xData);
            vTaskSuspend(xPID);
            vTaskSuspend(xExit);
            vTaskResume(xMenu);
        }
         
        vTaskDelay(pdMS_TO_TICKS(500)); // Simulate control task workload
    }
}

int init_sys(void) {
    int status;
    status = NX4IO_initialize(N4IO_BASEADDR);
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    // Initialize IIC driver
    status = InitIic(&i2c_dev, IIC_DEVICE_ID);
    if (status != XST_SUCCESS) {
        xil_printf("Failed to initialize IIC\r\n");
        cleanup_platform(); // Cleanup before exiting
        return -1;
    }

    // Initialize MPU6050 sensor
    status = mpu6050_init(&i2c_dev);
    if (status) {
        xil_printf("Failed to initialize MPU6050 sensor\r\n");
        cleanup_platform(); // Cleanup before exiting
        return -1;
    }

    // Calibrate Gyro
    calibrateGyro(&i2c_dev, &gyroData.offsetX, &gyroData.offsetY, &gyroData.offsetZ);
    xil_printf("Gyro calibrated. Offsets: X=%d, Y=%d, Z=%d\n", gyroData.offsetX, gyroData.offsetY, gyroData.offsetZ);

    u8 RecvBuffer[1]; 

    if(readRegister(&i2c_dev, 0x75, RecvBuffer) != XST_SUCCESS) {
        xil_printf("Failed to read WHO_AM_I register\r\n");
    } else {
        // Print received data
        xil_printf("Received WHO_AM_I: 0x%X\r\n", RecvBuffer[0]);
    }

    mpu6050_gyroCfg(&i2c_dev, GYRO_FS_SEL_500DPS);

    status = XIntc_Initialize(&irq_Ctrlr, INTC_DEVICE_ID);
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    status = XIntc_Start(&irq_Ctrlr, XIN_REAL_MODE);
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    status = XUartLite_Initialize(&uart_dev, UART_DEVICE_ID);
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    XIntc_Enable(&irq_Ctrlr, AXI_TIMER_INTR_NUM);
    XIntc_Enable(&irq_Ctrlr, AXI_UARTLITE_INTR_NUM);
    
    return XST_SUCCESS;
}

uint8_t bttn_formatter(uint8_t* bttns) {
    uint8_t bttn_d, bttn_l, bttn_r, bttn_u;
    uint8_t formatted_bttns;

    bttn_u = (*bttns & 0x08) >> 3;
    bttn_d = (*bttns & 0x04) >> 2;
    bttn_l = (*bttns & 0x02) >> 1;
    bttn_r = (*bttns & 0x01) >> 0;
    formatted_bttns = (bttn_d << 3) | (bttn_l << 2) | (bttn_r << 1) | (bttn_u << 0);

    return formatted_bttns;
}
