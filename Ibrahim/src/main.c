#include <stdio.h>
#include <stdlib.h>

#include "FreeRTOS.h"
#include "task.h"
#include "xintc.h"
#include "xiic.h"
#include "xstatus.h"
#include "xparameters.h"
#include "platform.h"
#include "xil_printf.h"

#include "mpu6050.h"
#include "nexys4IO.h"


#define INTC_DEVICE_ID          XPAR_MICROBLAZE_0_AXI_INTC_DEVICE_ID
#define IIC_DEVICE_ID           XPAR_IIC_0_DEVICE_ID

// Definitions for peripheral NEXYS4IO
#define N4IO_DEVICE_ID          XPAR_NEXYS4IO_0_DEVICE_ID
#define N4IO_BASEADDR           XPAR_NEXYS4IO_0_S00_AXI_BASEADDR
#define N4IO_HIGHADDR           XPAR_NEXYS4IO_0_S00_AXI_HIGHADDR

#define AXI_TIMER_INTR_NUM      XPAR_MICROBLAZE_0_AXI_INTC_AXI_TIMER_0_INTERRUPT_INTR
#define AXI_UARTLITE_INTR_NUM   XPAR_MICROBLAZE_0_AXI_INTC_AXI_UARTLITE_0_INTERRUPT_INTR

// Function prototypes
void vPIDTask(void *pvParameters);
int init_sys(void);

XIntc	irq_Ctrlr;
XIic    i2c_dev;
XIic_Config *ConfigPtr;

int main(void) {

    init_platform();

    xil_printf("ECE 544 Project 2 mainline\r\n");
    xil_printf("By Ibrahim Binmahfood and Robert Wilcox\r\n");

    if (init_sys() != XST_SUCCESS) {
        xil_printf("Initialization failed!\r\n");
        cleanup_platform();
        return -1;
    }

    xTaskCreate(vPIDTask, "PID Task", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY + 1, NULL);
    vTaskStartScheduler();

    microblaze_disable_interrupts();
    xil_printf("ECE 544 Project 2 mainline...ending\r\n");
    cleanup_platform(); // This line is technically unreachable.
    return 0;
}

void vPIDTask(void *pvParameters) {
    for (;;) {
        uint8_t buttons = NX4IO_getBtns();
        uint16_t switches = NX4IO_getSwitches();

        NX4IO_setLEDs(switches); // Reflect switch states on LEDs

        xil_printf("Buttons: 0x%X, Switches: 0x%X\r\n", buttons, switches);

        vTaskDelay(pdMS_TO_TICKS(500)); // Simulate control task workload
    }
}

int init_sys(void) {
	uint32_t status;

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

	XIntc_Enable(&irq_Ctrlr, AXI_TIMER_INTR_NUM);
	XIntc_Enable(&irq_Ctrlr, AXI_UARTLITE_INTR_NUM);

	return XST_SUCCESS;
}
