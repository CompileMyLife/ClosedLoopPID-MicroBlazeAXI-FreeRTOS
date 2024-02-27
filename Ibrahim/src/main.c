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
#define BUTTON_MASK				0xFF

// Function prototypes
void vPIDTask(void *pvParameters);

void vMenuTask(void *pvParameters);

void vDataTask(void *pvParameters);

void vExitTask(void *pvParameters);

int init_sys(void);

uint8_t bttn_formatter(uint8_t* bttns);

// AXI Peripherals
XIntc	    irq_Ctrlr;
XIic        i2c_dev;
XUartLite   uart_dev;
XIic_Config *ConfigPtr;

// Task Handles
TaskHandle_t xPID  = NULL;
TaskHandle_t xData = NULL;
TaskHandle_t xMenu = NULL;
TaskHandle_t xExit = NULL;

// Global Variable
volatile uint8_t t_angle;

int main(void) {
	u8 data;

    init_platform();

    if (init_sys() != XST_SUCCESS) {
        cleanup_platform();
        return -1;
    }
    usleep(1000000);

    if (mpu6050_getID(&i2c_dev, &data) != XST_SUCCESS){
    	cleanup_platform();
    	return -1;
    }

    xil_printf("INFO:init_sys()\tMPU6050::WHO_AM_I = 0x%02X\r\n", data);

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
	for (;;) {
		print("PID\r\n");

        uint8_t buttons = NX4IO_getBtns();
        buttons = bttn_formatter(&buttons);
        vTaskSuspend(xData);
        vTaskSuspend(xExit);
        vTaskSuspend(xMenu);

        if (buttons & (BUTTON_MASK)){
            if (buttons & (1 << 1)) t_angle += 1;
            if (buttons & (1 << 8)) t_angle -= 1;

            xil_printf("DEBUG:vPIDTask()\tButtons: 0x%02X\r\n", buttons);
            vTaskSuspend(xPID);
            vTaskResume(xExit);
        }
        
        vTaskDelay(pdMS_TO_TICKS(500)); // Simulate control task workload
    }
}

// Display user info
// Wait for 'r' or 'R' input to resume tasks
void vMenuTask(void *pvParameters) {
	uint8_t c;
	for (;;) {
    	print("INFO:vMenuTask()\tECE 544 Project 2\r\n");
    	print("INFO:vMenuTask()\tBy Ibrahim Binmahfood (ibrah5@pdx.edu)\r\n");
    	print("INFO:vMenuTask()\tand Robert Wilcox     (rwilcox@pdx.edu)\r\n");
    	print("MENU\r\n");

        print("Do wish to activate RUN Mode? Type 'r' or 'R':\r\n");
        c = XUartLite_RecvByte(UART_BASEADDR);

        if ((c == 'r') || (c == 'R')){
            print("Set the Target Angle = \r\n");

            for (int i = 0; i < 3; i++){
            	t_angle = XUartLite_RecvByte(UART_BASEADDR);
            }

            if ((t_angle >= 0) && (t_angle <= 180)) {
                vTaskSuspend(xMenu);
            	vTaskResume(xData);
                vTaskResume(xPID);
                vTaskResume(xExit);
            }

            print("ERROR:vMenuTask()\tQuery User for Target Angle Failed\r\n");
        }

        vTaskDelay(pdMS_TO_TICKS(500)); // Simulate control task workload
    }
}

// Collect data from MPU6050 sensor
// Compute angles and store them in a variable
void vDataTask(void *pvParameters) {
    for (;;) {
        print("DATA\r\n");
        vTaskSuspend(xMenu);
        vTaskSuspend(xPID);
        vTaskSuspend(xExit);

        // Code for Data task

        vTaskDelay(pdMS_TO_TICKS(500)); // Simulate control task workload
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

	ConfigPtr = XIic_LookupConfig(IIC_DEVICE_ID);
	if (ConfigPtr == NULL) {
		return XST_FAILURE;
	}

	status = XIic_CfgInitialize(&i2c_dev, ConfigPtr, ConfigPtr->BaseAddress);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	
	status = mpu6050_init(&i2c_dev);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

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
