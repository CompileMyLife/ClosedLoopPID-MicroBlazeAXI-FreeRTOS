#include <stdio.h>
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"
#include "nexys4io.h"
#include "platform.h"
#include "xil_printf.h"

// Definitions for peripheral NEXYS4IO
#define N4IO_DEVICE_ID          XPAR_NEXYS4IO_0_DEVICE_ID
#define N4IO_BASEADDR           XPAR_NEXYS4IO_0_S00_AXI_BASEADDR

void vApplicationMallocFailedHook(void) {
   taskDISABLE_INTERRUPTS();
   /* Loop forever here if xTaskCreate() fails. */
   for(;;);
}
void vNexys4IOTask(void *pvParameters) {
    uint32_t status;
    uint8_t buttons;
    uint16_t switches;

    // Initialize Nexys4IO hardware
    status = NX4IO_initialize(N4IO_BASEADDR);
    if (status != XST_SUCCESS) {
        xil_printf("ERROR: Failed to initialize Nexys4IO hardware.\r\n");
        vTaskDelete(NULL); // Terminate task
    }

    for (;;) {
        // Read button states and switches
        buttons = NX4IO_getBtns();
        switches = NX4IO_getSwitches();

        // Update LEDs to match switch states
        NX4IO_setLEDs(switches);

        // Print button and switch states to the terminal
        xil_printf("Buttons: 0x%X, Switches: 0x%X\r\n", buttons, switches);

        vTaskDelay(pdMS_TO_TICKS(500)); // Delay for 500ms
    }
}

int main() {
    // Necessary FreeRTOS initializations
    init_platform();

    xil_printf("Setting up Nexys4IO Task...\r\n");

    xTaskCreate(vNexys4IOTask, "Nexys4IO Task", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY + 1, NULL);

    // Start the scheduler.
    vTaskStartScheduler();

    // If all is well, the scheduler will now be running, and the following line will never be reached.
    for (;;);
    return 0;
}
