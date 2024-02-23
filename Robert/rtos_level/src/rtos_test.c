#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"  
#include "xstatus.h"
#include "xiic.h"   
#include "xintc.h"
#include "FreeRTOS.h" 
#include "task.h"
#include "queue.h" 
#include "timers.h"  
#include "mpu6050.h" 
#include "nexys4IO.h" 


typedef struct {
    uint8_t buttons;
    uint16_t switches;
} user_input_t;

uint8_t swizzleBtns(uint8_t btns);

void Data_Task(void *pvParameters) {
   init_platform(); 

    while (1) {
         // Read button states using the CORRECT GPIO instance
        user_input_t input_data;

        input_data.buttons = swizzleBtns(NX4IO_getBtns());
        xil_printf("Buttons: %02X\r\n", input_data.buttons);  

        // Read slide switch states similarly  
        input_data.switches =  NX4IO_getSwitches();
        xil_printf("Switches: %04X\r\n", input_data.switches);

        // Add code to send data to other tasks 
        //xQueueSend(input_data_queue, &input_data, 0); // 0 for no blocking 

        

        vTaskDelay(pdMS_TO_TICKS(100)); // delay
    }
}

int main() {
    // ... Initialization of MPU6050 and other peripherals

    QueueHandle_t input_data_queue = xQueueCreate(3, sizeof(user_input_t));


    // Create your tasks
    xTaskCreate(Data_Task, "Data", 200, NULL, 1, NULL); // ... add other tasks

    vTaskStartScheduler(); 

    // Should never reach here
    return 0; 
}

/********** Helper functions **********/

/**
 * swizzleBtns() - formats the btns register from Nexys4IO for easy processing
 *
 * @brief 
 * rearranges the bits from the Nexys4IO register {3'b0, 1'b0, BTNU(BTN0), BTND(BTN3), BTNL(BTN2), BTNR(BTN1)}
 * to {BTND(BTN3), BTNL(BTN2), BTNR(BTN1), BTNU(BTN0)}
 *
 * @param btns  button vector returned by Nexys4IO driver
 * @return      swizzled buttons
 */
uint8_t swizzleBtns(uint8_t btns) {
    uint8_t btnd, btnl, btnr, btnu;     // individual buttons
    uint8_t b;                          // swizzled buttons vector

    btnu = (btns & 0x08) >> 3;
    btnd = (btns & 0x04) >> 2;
    btnl = (btns & 0x02) >> 1;
    btnr = (btns & 0x01) >> 0;
    b = (btnd << 3) | (btnl << 2) | (btnr << 1) | (btnu << 0);
    return b;
}