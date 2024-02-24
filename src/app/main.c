#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "platform.h"
#include "xparameters.h"
#include "xuartlite.h"
#include "xil_printf.h"
#include "xstatus.h"
#include "xiic.h"
#include "xintc.h"
#include "task.h"
#include "queue.h"
#include "timers.h"
#include "FreeRTOS.h"

#include "mpu6050.h"
#include "nexys4io.h"

typedef struct {
	uint8_t buttons;
	uint16_t switches;
} user_input_t;

user_input_t input_data;

int main(void) {

    uint32_t status;

    xil_printf("ECE 544 Project 2 mainline\r\n");
    xil_printf("By Ibrahim Binmahfood and Robert Wilcox\r\n");

    init_platform();
    status = init_sys();
    if (XST_SUCCESS != status) {
        xil_printf("ERROR(main): System Initialization Failed\r\n");
        return 1;
    }

    // Data Task etc
    while (1) {
    	input_data.buttons = swizzleBtns(NX4IO_getBtns());
    	input_data.switches = swizzleBtns(NX4IO_getSwitches());

    	xil_printf("Buttons: %02X\tSwitches: %04X\r\n", input_data.buttons, input_data.switches);


    }

    microblaze_disable_interrupts();
    xil_printf("ECE 544 Project 2 mainline...ending\r\n");
    cleanup_platform();

    return 0;
}

int init_sys(void) {
	uint32_t status;

	status = NX4IO_initialize(N4IO_BASEADDR);
	if (status != XST_SUCCESS) {
		return XST_FALURE;
	}

	status = mpu6050_init(&i2c_dev);
	if (status != XST_SUCCESS) {
			return XST_FAILURE;
	}

	status = XIntc_Initialize(&irq_Ctrlr, INTC_DEVICE_ID);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	status = XIntc_Connect(&irq_Ctrlr, IIC_INTR_ID,
				(XInterruptHandler) XIic_InterruptHandler,
				IicInstPtr);
	if (status != XST_SUCCESS) {
			return XST_FAILURE;
	}

	status = XIntc_Start(&irq_Ctrlr, XIN_REAL_MODE);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	XIntc_Enable(&irq_Ctrlr, );

	return XST_SUCCESS;
}
