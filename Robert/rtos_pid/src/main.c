#include "FreeRTOS.h"
#include "task.h"
#include "nexys4io.h"
#include "platform.h"
#include "xil_printf.h"

// Definitions for peripheral NEXYS4IO
#define N4IO_DEVICE_ID          XPAR_NEXYS4IO_0_DEVICE_ID
#define N4IO_BASEADDR           XPAR_NEXYS4IO_0_S00_AXI_BASEADDR
#define N4IO_HIGHADDR           XPAR_NEXYS4IO_0_S00_AXI_HIGHADDR

// Function prototypes
void vPIDTask(void *pvParameters);
int init_sys(void);

int main() {
    init_platform();

    if (init_sys() != XST_SUCCESS) {
        xil_printf("Initialization failed!\r\n");
        cleanup_platform();
        return -1;
    }

    xTaskCreate(vPIDTask, "PID Task", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY + 1, NULL);
    vTaskStartScheduler();

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
    uint32_t status = NX4IO_initialize(N4IO_BASEADDR);
    if (status != XST_SUCCESS) {
        xil_printf("Nexys4IO initialization failed!\r\n");
        return XST_FAILURE;
    }
    return XST_SUCCESS;
}
