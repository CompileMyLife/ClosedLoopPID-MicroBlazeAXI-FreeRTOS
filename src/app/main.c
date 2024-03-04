/**
 * @file main.c
 * @brief Main program for a real-time PID-controlled system using the MPU6050 sensor.
 *
 * This program implements a real-time system for angle stabilization based on input from the MPU6050 sensor,
 * utilizing a PID control scheme. It runs on a MicroBlaze processor with a FreeRTOS operating system, managing tasks
 * for data collection, user input, PID control, and system exit handling. The system uses UART for user interaction,
 * allowing runtime adjustments to the target angle and control parameters. It also features an LED "bubble level" display
 * for visual feedback on the target and current angles. Key components include the Xilinx Interrupt Controller for
 * managing hardware interrupts, the XIic driver for I2C communication with the MPU6050, and the XUartLite driver for UART
 * communication. The program also utilizes the Fusion Digital Motion Processing library for improved sensor data fusion
 * and stability.
 *
 * Functionalities include:
 * - Real-time data collection from the MPU6050 gyroscope and accelerometer.
 * - PID control for angle stabilization.
 * - User interface via UART for runtime control and system status display.
 * - Visual feedback through LEDs on the Nexys4IO board.
 * - System exit handling through a switch-based interface.
 *
 * This file contains the main entry point, task definitions, initialization routines, and utility functions
 * for system operation.
 *
 * @author Ibrahim Binmahfood & Robert Wilcox; integration of Fusion library by x-io Technologies.
 * @date 2024-03-03
 */

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


// Alias for Interrupt Controller Peripheral
#define INTC_DEVICE_ID          XPAR_MICROBLAZE_0_AXI_INTC_DEVICE_ID

// Alias for I2C Controller Peripheral
#define IIC_DEVICE_ID           XPAR_IIC_0_DEVICE_ID

// Alias for UART Lite Peripheral 
#define UART_BASEADDR           XPAR_AXI_UARTLITE_0_BASEADDR
#define AXI_UARTLITE_INTR_NUM   XPAR_MICROBLAZE_0_AXI_INTC_AXI_UARTLITE_0_INTERRUPT_INTR

// Aliases for NEXYS4IO Peripheral
#define N4IO_DEVICE_ID          XPAR_NEXYS4IO_0_DEVICE_ID
#define N4IO_BASEADDR           XPAR_NEXYS4IO_0_S00_AXI_BASEADDR
#define N4IO_HIGHADDR           XPAR_NEXYS4IO_0_S00_AXI_HIGHADDR

// Alias for AXI Timer Peripheral
#define AXI_TIMER_INTR_NUM      XPAR_MICROBLAZE_0_AXI_INTC_AXI_TIMER_0_INTERRUPT_INTR

// Masks
#define SWITCH_MASK             0xFFFF
#define BUTTON_MASK             0xFF

#define TOTAL_LEDS              16
#define MID_LED                 (TOTAL_LEDS / 2)

// Conversion Definitions
#define GYRO_TO_RADIANS         0.00013323124061025415
#define ACCEL_TO_G              (1.0 / 16384.0)

#define MAX_ANGLE               180 // Max target angle

// TASKS

/**
 * @brief The task function for the PID control loop.
 * 
 * This task periodically calculates the required correction to minimize the error between the target angle and 
 * the current angle. The task also handles user input to adjust the target angle, BTNU increases the angle
 * while BTND decreases it.
 * 
 * @param pvParameters Parameters for the task, not used.
 */
void vPIDTask(void *pvParameters);

/**
 * @brief The task function for displaying the user menu and handling user input.
 * 
 * This task provides a user interface through UART. It allows the user to activate different modes of operation and 
 * set the target angle for the system. It also resumes other tasks based on user input.
 * Use r/R for run mode at the first selection, then select either r/R for read mode or d/D for data mode.
 * Read mode prints information about the data given, while data mode just prints the raw data, making it easy
 * to put into a spreadsheet.
 * 
 * @param pvParameters Parameters for the task, not used.
 */
void vMenuTask(void *pvParameters);

/**
 * @brief The task function for collecting and processing data from the MPU6050 sensor.
 * 
 * This task periodically reads data from the gyroscope and accelerometer, 
 * processes this data to calculate the current angle, and updates the system 
 * state with this new angle. This task implements Fusion Attitude And Heading 
 * Reference System package by xioTechnologies to stabilize gyroscope input and 
 * get a very accurate angle reading.
 * 
 * @param pvParameters Parameters for the task, not used.
 */
void vDataTask(void *pvParameters);

/**
 * @brief The task function for handling system exit conditions.
 * 
 * This task monitors for a specific condition (a switch being activated) to suspend data collection and 
 * PID control tasks, stopping the system's active operations and returning control to the user.
 * 
 * @param pvParameters Parameters for the task, not used.
 */
void vExitTask(void *pvParameters);

// HELPER FUNCTIONS


/**
 * @brief Initializes the system peripherals and tasks.
 * 
 * This function initializes the system's peripherals including the IIC device, UART device, 
 * and the MPU6050 sensor. It also configures and calibrates the gyroscopes, sets up the interrupt controller, 
 * and initializes the UART for communication. If any initialization fails, it will clean up and exit the program.
 * 
 * @return Returns XST_SUCCESS if all initializations are successful, otherwise returns XST_FAILURE.
 */
int init_sys(void);


/**
 * @brief Formats button input to a more usable form.
 * 
 * This function takes the raw button input values and rearranges them into a format where each bit represents 
 * a button state in a more readable order. This formatted value is easier to use for button state checks in the program.
 * 
 * @param bttns Pointer to the raw button input value.
 * @return Returns a uint8_t value where each bit represents the state of a button.
 */
uint8_t bttn_formatter(uint8_t* bttns);

/**
 * @brief Updates the LED display based on the current and target angles, "bubble level"
 * 
 * This function calculates which LEDs should be lit based on the current and target angles and updates the 
 * Nexys4IO board's LEDs accordingly. It ensures that LEDs represent these angles visually for the user.
 * Two lit LEDs are used to represent the target angle, while a single LED represents the current angle.
 * 
 * @param currentAngle The current angle of the system.
 * @param targetAngle The target angle for the system to achieve.
 */
void updateLEDs(real_t currentAngle, real_t targetAngle);

/**
 * @brief Reads an angle value from the UART input.
 * 
 * This function captures numeric input from the UART terminal until an end-of-line character is detected. 
 * It stores this input in a buffer as a string which can then be converted to a numeric value representing an angle.
 * 
 * @param buffer The buffer where the input string is stored.
 * @param bufferSize The size of the buffer.
 */
void readAngle(char* buffer, int bufferSize);

// Global Variable
volatile uint displayMode;

// data struct
typedef struct {
    volatile real_t currentAngle;
    volatile real_t targetAngle;
    volatile int16_t gyroOffsetX, gyroOffsetY, gyroOffsetZ;
} SystemState;

// Calibration struct
typedef struct {
    int16_t offsetX;
    int16_t offsetY;
    int16_t offsetZ;
} GyroData;

// Task Handles
TaskHandle_t xPID  = NULL;
TaskHandle_t xData = NULL;
TaskHandle_t xMenu = NULL;
TaskHandle_t xExit = NULL;

// AXI Peripherals
XIntc       irq_Ctrlr;
XIic        i2c_dev;
XIic_Config *ConfigPtr;

// Initialize PID Data structure
SPid pid;

// Initialize Gyro Data structure
GyroData gyroData;

// Initialize Fusion ahrs
FusionAhrs ahrs;

// Initialize System state
SystemState systemState;

int main(void) {

    // Initialize microblaze platform
    init_platform();

    // Initialize the embedded system
    if (init_sys() != XST_SUCCESS) {
        cleanup_platform();
        return -1;
    }

    // Inittialize Fusion AHRS
    FusionAhrsInitialise(&ahrs);

    // Sleep for 1 sec to let stuff initialize 
    usleep(1000000);

    // Create the FreeRTOS Tasks with Minimal Stack Sizes and same priority level
    // The Data Task requires more stack space so it is multiplied by 3 to
    // prevent stackoverflows due to Fusion pkg being math heavy
    xTaskCreate(vPIDTask,  "PID  Task", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY + 1, &xPID);
    xTaskCreate(vMenuTask, "MENU Task", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY + 1, &xMenu);
    xTaskCreate(vDataTask, "DATA Task", configMINIMAL_STACK_SIZE * 3, NULL, tskIDLE_PRIORITY + 1, &xData);
    xTaskCreate(vExitTask, "EXIT Task", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY + 1, &xExit);

    // Suspend all but menu
    vTaskSuspend(xData);
    vTaskSuspend(xPID);
    vTaskSuspend(xExit);
    
    vTaskResume(xMenu);
    
    // Begin the Task Scheduler to Menu Task
    vTaskStartScheduler();

    microblaze_disable_interrupts();
    cleanup_platform();                 // This line should be unreachable.

    return 0;
}

/**
 * @brief The task function for the PID control loop.
 * 
 * This task periodically calculates the required correction to minimize the error between the target angle and 
 * the current angle. The task also handles user input to adjust the target angle, BTNU increases the angle
 * while BTND decreases it.
 * 
 * @param pvParameters Parameters for the task, not used.
 */
void vPIDTask(void *pvParameters) {

    const real_t Kp = 2.0; 
    const real_t Ki = 0.01;
    const real_t Kd = 1.0;

    // Initialize PID controller
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

        // Read buttons
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

        // Update LED field
        updateLEDs(systemState.currentAngle, systemState.targetAngle);

        // Display data based on display mode
        
        // Check if read mode was asserted
        if((displayMode  == 'r') || (displayMode  == 'R')) {
            xil_printf("Current Angle = %d, Target Angle = %d, Correction suggestion = %d\r\n", 
                    (int)measuredAngle, (int)targetAngle, (int)correction);
        }

        // Check if data gather mode was asserted
        if((displayMode  == 'd') || (displayMode  == 'D')) {
            xil_printf("%d %d %d\r\n", 
                    (int)measuredAngle, (int)targetAngle, (int)correction);
        }
        
        // Update target angle before exiting task
        systemState.targetAngle = targetAngle;
        
        vTaskDelay(pdMS_TO_TICKS(100)); // Simulate control task workload
    }
}

/**
 * @brief The task function for displaying the user menu and handling user input.
 * 
 * This task provides a user interface through UART. It allows the user to activate different modes of operation and 
 * set the target angle for the system. It also resumes other tasks based on user input.
 * Use r/R for run mode at the first selection, then select either r/R for read mode or d/D for data mode.
 * Read mode prints information about the data given, while data mode just prints the raw data, making it easy
 * to put into a spreadsheet.
 * 
 * @param pvParameters Parameters for the task, not used.
 */
void vMenuTask(void *pvParameters) {
   print("DEBUG:Entered vMenuTask()\r\n"); // Log to UART stdout entered Menu Task

    // Variables to use for retrieving user input from stdin UART
    uint8_t c;
    char t_angle_str[5];  // largest num is four characters {'1', '8', '0', \0'}

    for (;;) {
        print("INFO:vMenuTask()\tECE 544 Project 2\r\n");
        print("INFO:vMenuTask()\tBy Ibrahim Binmahfood (ibrah5@pdx.edu)\r\n");
        print("INFO:vMenuTask()\tand Robert Wilcox     (rwilcox@pdx.edu)\r\n");

        // Ask user if to activate run mode
        print("Do wish to activate RUN Mode? Type 'r' or 'R':\r\n");
        c = XUartLite_RecvByte(UART_BASEADDR);  // retrieve byte character from user

        // Ask user if to activate read mode or gather data mode 
        print("Do you wish to use read mode or data gather mode? Choose 'R/r' or 'D/d':\r\n");
        displayMode = XUartLite_RecvByte(UART_BASEADDR);    // retrieve byte character from user

        // Check if user activated run mode
        if ((c == 'r') || (c == 'R')) {
            // Ask user for target angle
            print("Set the Target Angle = \r\n");
            
            // Call readAngle to fill t_angle_str with user input
            readAngle(t_angle_str, sizeof(t_angle_str));

            // After readAngle, t_angle_str contains the input terminated by '\0'
            systemState.targetAngle = atoi(t_angle_str);    // Convert string to integer
            
            // Validate and use the target angle set
            // Check if target angle within range of 0 <= targetAngle <= 180
            if ((systemState.targetAngle >= 0) && (systemState.targetAngle <= 180)) {
                // Log to UART stdout the target angle value retrieved
                xil_printf("DEBUG:User entered %d degrees\r\n", systemState.targetAngle);
                xil_printf("DEBUG:Target Angle set to: %d degrees\r\n", systemState.targetAngle);

                // Resume all other tasks but suspend the Menu Task
                vTaskResume(xData);
                vTaskResume(xPID);
                vTaskResume(xExit);

                vTaskSuspend(xMenu);
            } 

            // The user entered a value not between 0 and 180 inclusive
            else {
                print("ERROR:vMenuTask()\tInvalid Target Angle. Please enter a value between 0 and 180.\r\n");
            }
        }
    }
}

/**
 * @brief The task function for collecting and processing data from the MPU6050 sensor.
 * 
 * This task periodically reads data from the gyroscope and accelerometer, 
 * processes this data to calculate the current angle, and updates the system 
 * state with this new angle. This task implements Fusion Attitude And Heading 
 * Reference System package by xioTechnologies to stabilize gyroscope input and 
 * get a very accurate angle reading.
 * 
 * @param pvParameters Parameters for the task, not used.
 */
void vDataTask(void *pvParameters) {

    // Set up variable to keep track of cycles for Fusion
    TickType_t previousTick = xTaskGetTickCount();

    // get gyro offsets from calibration
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
        mpu6050_getAccelData(&i2c_dev, &accelX, &accelY, &accelZ);

        // Apply offsets
        gyroX -= offsetX;
        gyroY -= offsetY;
        gyroZ -= offsetZ;

        // Create fusion vector struct with gryo data
        FusionVector gyroscope = {
            .axis.x = gyroX * GYRO_TO_RADIANS,
            .axis.y = gyroY * GYRO_TO_RADIANS,
            .axis.z = gyroZ * GYRO_TO_RADIANS,
        };

        // Create fusion vector struct with accel data
        FusionVector accelerometer = {
            .axis.x = accelX * ACCEL_TO_G,
            .axis.y = accelY * ACCEL_TO_G,
            .axis.z = accelZ * ACCEL_TO_G,
        };

        // Calculate deltaTime based on ticks
        TickType_t currentTick = xTaskGetTickCount();
        float deltaTime = (currentTick - previousTick) / (float)configTICK_RATE_HZ;
        previousTick = currentTick;

        // Update Fusion AHRS
        FusionAhrsUpdateNoMagnetometer(&ahrs, gyroscope, accelerometer, deltaTime);

        // Get and convert orientation to Euler angles
        FusionQuaternion quaternion = FusionAhrsGetQuaternion(&ahrs);
        FusionEuler euler = FusionQuaternionToEuler(quaternion);

        // Update the current angle from the euler struct
        systemState.currentAngle = euler.angle.roll;

        vTaskDelay(pdMS_TO_TICKS(100)); // Task wait
    }
}

/**
 * @brief The task function for handling system exit conditions.
 * 
 * This task monitors for a specific condition (a switch being activated) to suspend data collection and 
 * PID control tasks, stopping the system's active operations and returning control to the user. 
 * 
 * @param pvParameters Parameters for the task, not used.
 */
void vExitTask(void *pvParameters) {
  print("DEBUG:Entered vExitTask()\r\n");

    for (;;) {
        // Retrieve current Switches
        uint16_t switches = NX4IO_getSwitches();

        // Check if any of the switches are asserted
        if (switches & SWITCH_MASK) {
            // Suspend Data, PID, and Exit tasks except for xMenu
            vTaskSuspend(xData);
            vTaskSuspend(xPID);
            vTaskResume(xMenu);
            vTaskSuspend(xExit);
        }
         
        vTaskDelay(pdMS_TO_TICKS(500)); // Simulate control task workload
    }
}  

/**
 * @brief Initializes the system peripherals and tasks.
 * 
 * This function initializes the system's peripherals including the IIC device, UART device, 
 * and the MPU6050 sensor. It also configures and calibrates the gyroscopes, sets up the interrupt controller, 
 * and initializes the UART for communication. If any initialization fails, it will clean up and exit the program.
 * 
 * @return Returns XST_SUCCESS if all initializations are successful, otherwise returns XST_FAILURE.
 */
int init_sys(void) {

    int status;
    uint8_t RecvBuffer[1]; 

    // Iniitialize NX4IO
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

    // Calibrate MPU6050
    calibrateGyro(&i2c_dev, &gyroData.offsetX, &gyroData.offsetY, &gyroData.offsetZ);
    xil_printf("Gyro calibrated. Offsets: X=%d, Y=%d, Z=%d\r\n", gyroData.offsetX, gyroData.offsetY, gyroData.offsetZ);

    // Check if the WHO_AM_I register in MPU6050 retrieved successfully
    if(readRegister(&i2c_dev, 0x75, RecvBuffer) != XST_SUCCESS) {
        xil_printf("Failed to read WHO_AM_I register\r\n");
    } else {
        // Print received data
        xil_printf("Received WHO_AM_I: 0x%X\r\n", RecvBuffer[0]);
    }

    // Configure MPU6050
    mpu6050_gyroCfg(&i2c_dev, GYRO_FS_SEL_500DPS);

    // Initialize the Interrupt Controller
    status = XIntc_Initialize(&irq_Ctrlr, INTC_DEVICE_ID);
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    // Start the Interrupt Controller such that interrupts are enabled for all
    // devices that cause interrupts
    status = XIntc_Start(&irq_Ctrlr, XIN_REAL_MODE);
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    // Enable the AXI Timer and UART lite interrupts
    XIntc_Enable(&irq_Ctrlr, AXI_TIMER_INTR_NUM);
    XIntc_Enable(&irq_Ctrlr, AXI_UARTLITE_INTR_NUM);
    
    return XST_SUCCESS;
}

/**
 * @brief Formats button input to a more usable form.
 * 
 * This function takes the raw button input values and rearranges them into a format where each bit represents 
 * a button state in a more readable order. This formatted value is easier to use for button state checks in the program.
 * 
 * @param bttns Pointer to the raw button input value.
 * @return Returns a uint8_t value where each bit represents the state of a button.
 */
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

/**
 * @brief Updates the LED display based on the current and target angles, "bubble level"
 * 
 * This function calculates which LEDs should be lit based on the current and target angles and updates the 
 * Nexys4IO board's LEDs accordingly. It ensures that LEDs represent these angles visually for the user.
 * Two lit LEDs are used to represent the target angle, while a single LED represents the current angle.
 * 
 * @param currentAngle The current angle of the system.
 * @param targetAngle The target angle for the system to achieve.
 */
void updateLEDs(real_t currentAngle, real_t targetAngle) {
    uint16_t leds = 0; // Start with all LEDs off

    // Calculate the LED index for the target angle, ensuring it stays within the range
    // 180 is max range for target angle, as any more would be redundant, and hard to represent
    // with just 16 LEDs
    int targetLedIndex = (int)((targetAngle / MAX_ANGLE) * (TOTAL_LEDS - 1));

    // Target indication uses two LEDs
    leds |= (1 << targetLedIndex); // Light up the target LED
    if (targetLedIndex < TOTAL_LEDS - 1) {
        leds |= (1 << (targetLedIndex + 1)); // Also light up the next LED 
    } else {
        // If target is at the last LED, light up the previous one as well to keep two LEDs lit
        leds |= (1 << (targetLedIndex - 1));
    }

    // Calculate the LED index for the current angle, ensuring it is within range.
    // Also limited to 180
    int currentLedIndex = (int)((currentAngle / MAX_ANGLE) * (TOTAL_LEDS - 1));

    // Light up the LED for the current angle unless it overlaps with the target LEDs,
    // in which case we don't need to worry about it, because that section will
    // already be lit.
    if (currentLedIndex != targetLedIndex && currentLedIndex != targetLedIndex + 1) {
        leds |= (1 << currentLedIndex);
    }

    NX4IO_setLEDs(leds); // Update the LEDs
}

/**
 * @brief Reads an angle value from the UART input.
 * 
 * This function captures numeric input from the UART terminal until an end-of-line character is detected. 
 * It stores this input in a buffer as a string which can then be converted to a numeric value representing an angle.
 * 
 * @param buffer The buffer where the input string is stored.
 * @param bufferSize The size of the buffer.
 */
void readAngle(char* buffer, int bufferSize) {

    // Count for input
    int count = 0;

    while (count < bufferSize - 1) { // Leave space for null terminator

        // Get a byte from uart
        char c = XUartLite_RecvByte(UART_BASEADDR);

        // '\r' or '\n' indicates end of input
        if (c == '\r' || c == '\n') {
            break; 
        }
        buffer[count++] = c;
    }
    buffer[count] = '\0'; // Null-terminate the string
}


// Fusion AHRS LICENSE
/*
 The MIT License (MIT)

Copyright (c) 2021 x-io Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated 
documentation files (the "Software"), to deal in the Software without restriction, including without limitation 
the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and 
to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions 
of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED 
TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF 
CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS 
IN THE SOFTWARE.

 */
