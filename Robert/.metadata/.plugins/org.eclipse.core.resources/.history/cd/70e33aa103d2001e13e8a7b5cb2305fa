/**
* @file proj_1.c
*
* @author Robert Wilcox (wilcox6@pdx.edu)
*
* @brief
* This program implements a test program for the Nexys4IO peripheral and driver, then runs a program which
* demonstrates several of the peripherals on the board. 
*
* The operation of the program is straightforward. A self-test that check on the operation of the LEDs and 7-segment display.
* The FIT interrupt is enables after that, writing the switches to their green LED counterparts, and using the buttons to increment
* the RGB1 LED. The RGB2 LED is lit from pwm data from RGB1, using a pwm analyzer.
*
* @note
* This implementation unifies the app for both Nexys A7 and the Boolean board.  The biggest change is that
* BTNC (the center button) is removed because the Boolean board only has 4 pushbuttons. The buttons are mapped
* as follows [NexysA7(Boolean)]:
* 
*                o BTNU(BTN0)
*
* BTNL(BTN2) o       o BTNR(BTN1)
*
*                o BTND(BTN3) 
*
* The button vector expected is {BTND(BTN3), BTNL(BTN2), BTNR(BTN1), BTNU(BTN0)}
* 
* BTNU is used to control RGB1 Green, BTNR for blue, BRRND for red, and BRNL for reset.
*
* A Combination of BTNS U and R will reset the program.
*
*
* <pre>
* MODIFICATION HISTORY:
* ---------------------
* Ver   Who  Date     Changes
* ----- ---- -------- -----------------------------------------------
* 1.00a	RW	8-Feb-2024		First release of the program
* 2.00a RW	10-Feb-2024		Mostly working, pwm analyzer issues
* 3.00a RW  13-Feb-2024		Fully working
*</pre>
*
******************************************************************************/
 
/*********** Include Files **********/
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xstatus.h"
#include "microblaze_sleep.h"

#include "xtmrctr.h"
#include "xintc.h"
#include "nexys4IO.h"

/********** DEBUG OUTPUT FLAG **********/
//#define _DEBUG  1		// uncomment to enable debug output

/*********** Peripheral-related constants **********/
// Clock frequencies
#define CPU_CLOCK_FREQ_HZ		XPAR_CPU_CORE_CLOCK_FREQ_HZ
#define AXI_CLOCK_FREQ_HZ		XPAR_CPU_M_AXI_DP_FREQ_HZ

// AXI timer parameters (used to set Nexys4IO RGB Clock period)
// Timing Interval = (1998 + 2) * (1/10MHz) -> 50 KHz/PWM Period * 512) => 98Hz
#define N4IO_PWM_CLK_DEVICE_ID	XPAR_TMRCTR_0_DEVICE_ID
#define N4IO_PWM_CLK_BASEADDR	XPAR_TMRCTR_0_BASEADDR
#define N4IO_PWM_CLK_HIGHADDR	XPAR_TMRCTR_0_HIGHADDR
#define N4IO_PWM_CLK_FREQ_HZ 	XPAR_TMRCTR_0_CLOCK_FREQ_HZ
#define N4IO_PWM_CLK_TIMER_NUM	0
#define N4IO_PWM_CLK_TIMER_VAL	1998

// Definitions for peripheral NEXYS4IO
#define N4IO_DEVICE_ID		    XPAR_NEXYS4IO_0_DEVICE_ID
#define N4IO_BASEADDR		    XPAR_NEXYS4IO_0_S00_AXI_BASEADDR
#define N4IO_HIGHADDR		    XPAR_NEXYS4IO_0_S00_AXI_HIGHADDR

// Definitions for Fixed Interval timer - 100 MHz input clock, 2Hz output clock
// Used as interval to handle the slide switches and pushbuttons
#define FIT_IN_CLOCK_FREQ_HZ	XPAR_CPU_CORE_CLOCK_FREQ_HZ
#define FIT_CLOCK_FREQ_HZ		2
#define FIT_INTR_NUM			XPAR_MICROBLAZE_0_AXI_INTC_FIT_TIMER_0_INTERRUPT_INTR

//Definitions for Interrupt Controller
#define INTC_DEVICE_ID			XPAR_INTC_0_DEVICE_ID
#define INTC_BASEADDR			XPAR_INTC_0_BASEADDR
#define INTC_HIGHADDR			XPAR_INTC_0_HIGHADDR

// Define the GPIO device
#define RGB_PWM_GPIO_DEVICE_ID XPAR_AXI_GPIO_0_DEVICE_ID

// Define the PWMAnalyzer devices
#define PWM_ANALYZER_RED_BASEADDR   XPAR_PWM_ANALYZER_0_S00_AXI_BASEADDR
#define PWM_ANALYZER_GREEN_BASEADDR XPAR_PWM_ANALYZER_1_S00_AXI_BASEADDR
#define PWM_ANALYZER_BLUE_BASEADDR  XPAR_PWM_ANALYZER_2_S00_AXI_BASEADDR

/*********** Application-specific constants **********/
#define NBTNS 			4		// number of buttons
#define MAX_DUTY_CYCLE 1023

/********** AXI Peripheral Instances **********/
XTmrCtr		N4IO_TimerInst;	// Timer instance for N4IO rgb clock input
XIntc 		INTC_Inst;		// Interrupt Controller instance


/********** Global Variables **********/

// define XGpio device globally
XGpio RGBPwmGpio;


// These are volatile because they are generated in the FIT handler which is asynchronous
// to the program. We want to make sure the current values of the variables are returned
volatile bool newbtnsSw = false; // true if the FIT handler updated global buttons and switch values
volatile uint16_t sw = 0;	// switches - set in the FIT handler
volatile uint8_t btns = 0;	// buttons - set in the FIT handler
volatile uint32_t dutyCycleRed = 0;
volatile uint32_t dutyCycleGreen = 0;
volatile uint32_t dutyCycleBlue = 0;
volatile bool resetToTop = false; // flag to reset to top of main
volatile bool resetPWMAnalyzer = false; // flag to reset PWM analyzer (can't detect 0 edges)



/********** Function Prototypes **********/
// interrupt handlers
void FIT_Handler(void);

// initialization functions
int  N4IO_RGB_timer_initialize(void);
int	 do_init(void);
void setRGBPwm(uint32_t redDuty, uint32_t greenDuty, uint32_t blueDuty, int enable);

// other functions
uint8_t swizzleBtns(uint8_t btns);
void nexys4io_selfTest(void);
void updateRGB2LED();
uint8_t numToSevenSeg(uint8_t num);
void displayNumOnSSEG(enum _NX4IO_ssegbanks bank, enum _NX4IO_ssegdigits leftDigit, uint8_t num);

/********** Main Program **********/
int main()
{
	usleep(1000000);
	// Announce that the application has started
	xil_printf("ECE 544 project 1 Application\r\n");
	xil_printf("By Robert Wilcox (wilcox6@pdx.edu)\r\n\n");

	init_platform();
	uint32_t sts = do_init();
	if (XST_SUCCESS != sts){
		xil_printf("FATAL(main): System initialization failed\r\n");
		return 1;
	}

	// Initialize Xgpio
	uint32_t gpioInitStatus;
	gpioInitStatus = XGpio_Initialize(&RGBPwmGpio, XPAR_AXI_GPIO_0_DEVICE_ID);
	if(XST_SUCCESS != gpioInitStatus) {
		xil_printf("GPIO Initialization Failed\r\n");
		return XST_FAILURE;
	}

	while(1) {

		// perform the self test
		microblaze_disable_interrupts();
		nexys4io_selfTest();

		// main loop
		microblaze_enable_interrupts();
		while (1) {

			// update/analyze the rgb PWM duty cycle(s) if they were changed by the FIT handler
			if (newbtnsSw) {

				// write the switches to the LEDs
				NX4IO_setLEDs(sw);
				xil_printf("New switches: 0x%04X\tNew buttons: 0x%02X\n\r", sw, btns);
				newbtnsSw = false;
			}

			if(resetToTop) {
				resetToTop = false;
				break;
			}

		}  // Loop after self test

	} // main loop

    // say goodbye and exit - should never reach here
	microblaze_disable_interrupts();
	NX410_SSEG_setAllDigits(SSEGHI, CC_BLANK, CC_B, CC_LCY, CC_E, DP_NONE);
	NX410_SSEG_setAllDigits(SSEGLO, CC_B, CC_LCY, CC_E, CC_BLANK, DP_NONE);
    xil_printf("ECE 544 Nexys4IO Test Program...ending\r\n");
    cleanup_platform();
    return 0;
}


/********** Interrupt Handlers **********/

/****************************************************************************/
/**
* Fixed interval timer interrupt handler
*
* Reads the switches and sets the handshaking signal if any changes.
* Reads the button and sets the handshaking signal if any changes.
* Checks/sets the global newbtnsSw which is the handshake between the interrupt handler and main
*
* @note:  pushbutton mapping: {0 0 0 btnC btnU btnD btnL btnR}
*
* @note  This handler should be called about twice per second
*****************************************************************************/
void FIT_Handler(void)
{
	static bool isInitialized = false;	// true if the function has run at least once
	static uint8_t prevBtns;			// previous value of button register
	static uint16_t prevSw;				// previous value of the switch register
	static bool dpOn;					// true if decimal point 0 is on
	static bool resetFlag = false;
	
	uint8_t btns_int;					// temp btns. Needs to be swizzled to get bits in right place for main()

	// initialize the static variables the first time the function is called
	if (!isInitialized) {
		prevBtns = 0x0F;	// invert btns to get everything started
		prevSw = 0xFFFF;	// invert switches to get everything started
		dpOn = true;
		isInitialized = true;
	}

	// toggle DP0 to indicate that FIT handler is being called
	// this happens every time the FIT handler is called
	dpOn = (dpOn) ? false: true;
	NX4IO_SSEG_setDecPt (SSEGLO, DIGIT0, dpOn);

	// return if main() hasn't handled the last button and switch changes
	if (newbtnsSw) {
		return;
	}

	// get the value of the switches.  Will be written to the LEDs in main()
	sw =  NX4IO_getSwitches();
	if (prevSw != sw) {
		newbtnsSw = true;
		prevSw = sw;
	}

	// get the value of the buttons.  Will be written to the 7-segment decimal points in main()
	btns_int = NX4IO_getBtns ();
	uint8_t currentBtns = swizzleBtns(btns_int);
	btns = swizzleBtns(btns_int);
	if (prevBtns != currentBtns) {
		newbtnsSw = true;
		// Process button changes and update duty cycles
		uint8_t changedBtns = currentBtns ^ prevBtns; // XOR to detect changes
		uint8_t pressedBtns =  changedBtns & currentBtns;  // AND to get new btn presses

		// Increment Duty Cycle (10% increments)
		uint32_t increment = MAX_DUTY_CYCLE * 0.10; // ~10% of user-defined max duty cycle (which is currently half of full potential)

		// BTND (red) with wrap around
		if(pressedBtns & (1 << 3)) {
			dutyCycleRed = (dutyCycleRed + increment <= MAX_DUTY_CYCLE) ? dutyCycleRed + increment : 0;
			xil_printf("Duty Cycle Red Updated: %lu%%\r\n", (dutyCycleRed * 100) / MAX_DUTY_CYCLE);
			resetFlag = false;
		}

		// BTNL (reset)
		if(pressedBtns & (1 << 2)) {
				dutyCycleRed = dutyCycleGreen = dutyCycleBlue = MAX_DUTY_CYCLE * 0.01;
				xil_printf("Duty Cycles Reset: Red = %lu%%, Green = %lu%%, Blue = %lu%%\r\n", 
               		(dutyCycleRed * 100) / MAX_DUTY_CYCLE, (dutyCycleGreen * 100) / MAX_DUTY_CYCLE, (dutyCycleBlue * 100) / MAX_DUTY_CYCLE);

				// Set RGBs and read via pwmAnalyzer
				// a little redundant, but gets the job done
				setRGBPwm(dutyCycleRed, dutyCycleGreen, dutyCycleBlue, 1);

				// sleep to allow pwm analyzer to get data
				usleep(30000);
				updateRGB2LED();

				// Now set duty cycle to 0 to make sure LED is off
				dutyCycleRed = dutyCycleGreen = dutyCycleBlue = 0;
				xil_printf("Duty Cycles Reset: Red = %lu%%, Green = %lu%%, Blue = %lu%%\r\n", 
               		(dutyCycleRed * 100) / MAX_DUTY_CYCLE, (dutyCycleGreen * 100) / MAX_DUTY_CYCLE, (dutyCycleBlue * 100) / MAX_DUTY_CYCLE);
				resetFlag = true;
			
		}

		// BTNR (blue) with wrap around
		if(pressedBtns & (1 << 1)) {
			dutyCycleBlue = (dutyCycleBlue + increment <= MAX_DUTY_CYCLE) ? dutyCycleBlue + increment : 0;
			xil_printf("Duty Cycle Blue Updated: %lu%%\r\n", (dutyCycleBlue * 100) / MAX_DUTY_CYCLE);
			resetFlag = false;
		}

		// BTNU (green) with wrap around
		if(pressedBtns & 1) {
			dutyCycleGreen = (dutyCycleGreen + increment <= MAX_DUTY_CYCLE) ? dutyCycleGreen + increment : 0;
			xil_printf("Duty Cycle Green Updated: %lu%%\r\n", (dutyCycleGreen * 100) / MAX_DUTY_CYCLE);
			resetFlag = false;
		}

		// BTNS U & R (Reset to top of main)
		if((pressedBtns & 0x3) == 0x3) {
			resetFlag = false;
			resetToTop = true;
		}

		// Set RGB1
		setRGBPwm(dutyCycleRed, dutyCycleGreen, dutyCycleBlue, 1);

		// Set RGB1 based on RGB1 PWM. If prevents double-setting on reset.
		usleep(50000);
		updateRGB2LED();
		

		// Get duty cycle to print on SSEG

		uint32_t dutyCycleRedPercent = (dutyCycleRed * 100) / MAX_DUTY_CYCLE;
        uint32_t dutyCycleGreenPercent = (dutyCycleGreen * 100) / MAX_DUTY_CYCLE;
        uint32_t dutyCycleBluePercent = (dutyCycleBlue * 100) / MAX_DUTY_CYCLE;

        // Display RED duty cycle on digits[7:6] of SSEGHI
        displayNumOnSSEG(SSEGHI, DIGIT7, dutyCycleRedPercent);

        // GREEN duty cycle spans across SSEGHI (digit 3) and SSEGLO (digit 4), split its display
		uint8_t greenTens = dutyCycleGreenPercent / 10; // Tens place for GREEN duty cycle
		uint8_t greenOnes = dutyCycleGreenPercent % 10; // Ones place for GREEN duty cycle

		// Display GREEN duty cycle tens place on digit[3] of SSEGHI
		NX4IO_SSEG_setDigit(SSEGHI, DIGIT0, numToSevenSeg(greenTens));

		// Display GREEN duty cycle ones place on digit[4] of SSEGLO
		NX4IO_SSEG_setDigit(SSEGLO, DIGIT3, numToSevenSeg(greenOnes));

        // Display BLUE duty cycle on digits[1:0] of SSEGLO
        displayNumOnSSEG(SSEGLO, DIGIT1, dutyCycleBluePercent);

        // Blank out unused digits
        NX4IO_SSEG_setDigit(SSEGHI, DIGIT5, CC_BLANK);
        NX4IO_SSEG_setDigit(SSEGLO, DIGIT2, CC_BLANK); 

		prevBtns = currentBtns;

	}
}


/********** Initialization functions **********/

/****************************************************************************/
/**
 * N4IO_RGB_timer_initialize() - initializes the Nexys4IO rgbPWM clock timer
 *
 * @brief The Nexys4 IO IP block has an independant clock input for the 3 channel
 * PWM generator for the two RGB LEDs on the Nexys A7.  In the MicroBlaze-based
 * system used for this project that clock is generated by an AXI programmable
 * interval timer.  This function initializes the timer, runs the self test and
 * configures and starts the timer.
 *
 * @return			XST_Success if the timer is initialized.  XST_FAILURE if it is not
 */
int  N4IO_RGB_timer_initialize(void) {
	uint32_t status;	// status from Xilinx Lib calls

	status = XTmrCtr_Initialize(&N4IO_TimerInst,N4IO_PWM_CLK_DEVICE_ID);
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
    }
	status = XTmrCtr_SelfTest(&N4IO_TimerInst, N4IO_PWM_CLK_TIMER_NUM);
    if (status != XST_SUCCESS) {
			return XST_FAILURE;
    }

	// Configure the timer
	// We are going to use the low level functions because there doesn't
	// seem to be a configuration option that enables the Generate Out options
	// and load an initial timer value.  This code comes from xtrctr_low_level_example
	uint32_t ctl = XTC_CSR_AUTO_RELOAD_MASK |  XTC_CSR_DOWN_COUNT_MASK |  XTC_CSR_EXT_GENERATE_MASK;

	XTmrCtr_SetControlStatusReg(N4IO_PWM_CLK_BASEADDR, N4IO_PWM_CLK_TIMER_NUM, (ctl | XTC_CSR_LOAD_MASK));
	XTmrCtr_SetLoadReg(N4IO_PWM_CLK_BASEADDR, N4IO_PWM_CLK_TIMER_NUM, N4IO_PWM_CLK_TIMER_VAL);
	XTmrCtr_LoadTimerCounterReg(N4IO_PWM_CLK_BASEADDR, N4IO_PWM_CLK_TIMER_NUM);
	XTmrCtr_SetControlStatusReg(N4IO_PWM_CLK_BASEADDR, N4IO_PWM_CLK_TIMER_NUM, (ctl & ~XTC_CSR_LOAD_MASK));

	// and start it
	XTmrCtr_Start(&N4IO_TimerInst, N4IO_PWM_CLK_TIMER_NUM);
	return XST_SUCCESS;
}

/**
 * do_init() - initializes the embedded system peripherals
 *
 * @brief This function initializes the AXI peripherals and sets up for interrupt handling.  Interrupts
 * are enabled/disabled in main() or other functions.  When this function exits the peripherals have
 * been initialized but interrupts are left disabled
 *
 * @return			XST_Success if the timer is initialized.  XST_FAILURE if it is not
 *
 * @note:  Digilent PWM Analyzer is a low level driver and does not need to be initialized
 */
int	 do_init(void) {
	uint32_t status;				// status from Xilinx Lib calls

	// initial the RGB PWM clock to Nexys4IO
	status = N4IO_RGB_timer_initialize();
	if (status != XST_SUCCESS)
		return XST_FAILURE;

	// initialize the Nexys4 driver
	status = NX4IO_initialize(N4IO_BASEADDR);
	if (status != XST_SUCCESS){
		return XST_FAILURE;
	}

	 // initialize the interrupt controller
	status = XIntc_Initialize(&INTC_Inst, INTC_DEVICE_ID);
	if (status != XST_SUCCESS)
	{
	   return XST_FAILURE;
	}

	// connect the interrupt handlers to the interrupts
	status = XIntc_Connect(&INTC_Inst, FIT_INTR_NUM,
						   (XInterruptHandler)FIT_Handler,
						   (void *)0);
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	// start the interrupt controller such that interrupts are enabled for
	// all devices that cause interrupts.
	status = XIntc_Start(&INTC_Inst, XIN_REAL_MODE);
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	// enable/disable the interrupts
	XIntc_Enable(&INTC_Inst, FIT_INTR_NUM);
	return XST_SUCCESS;
}

/********** Helper functions **********/

/**
 * swizzleBtns() - formats the btns register from Nexys4IO for easy processing
 *
 * @brief 
 * rearranges the bits from the Nexys4IO register {3'b0, 1'b0, BTNU(BTN0), BTND(BTN3), BTNL(BTN2), BTNR(BTN1)}
 * to {BTND(BTN3), BTNL(BTN2), BTNR(BTN1), BTNU(BTN0)}
 *
 * @param btns	button vector returned by Nexys4IO driver
 * @return 		swizzled buttons
 */
uint8_t swizzleBtns(uint8_t btns) {
	uint8_t btnd, btnl, btnr, btnu;		// individual buttons
	uint8_t b;							// swizzled buttons vector

    btnu = (btns & 0x08) >> 3;
    btnd = (btns & 0x04) >> 2;
    btnl = (btns & 0x02) >> 1;
	btnr = (btns & 0x01) >> 0;
	b = (btnd << 3) | (btnl << 2) | (btnr << 1) | (btnu << 0);
	return b;
}

/**
 * setRGBPWM() - sets RGBPWM via GPIO discrete write
 *
 * @brief This function takes in a duty cycle for Red, Green, and Blue LEDs, writing
 * them to the GPIO connected to RGB1 in our system. Duty cycle is saturating.
 *
 * @return			void
 */

void setRGBPwm(uint32_t redDuty, uint32_t greenDuty, uint32_t blueDuty, int enable) {
	// Limit the duty cycle to half (saturating)
	redDuty = (redDuty > MAX_DUTY_CYCLE) ? MAX_DUTY_CYCLE : redDuty;
    greenDuty = (greenDuty > MAX_DUTY_CYCLE) ? MAX_DUTY_CYCLE : greenDuty;
    blueDuty = (blueDuty > MAX_DUTY_CYCLE) ? MAX_DUTY_CYCLE : blueDuty;

	uint32_t value = 0;
	value |= (enable & 1) << 31; 			// set enable bit
	value |= (redDuty & 0x3FF) << 20; 		// set red duty
	value |= (greenDuty & 0x3FF) << 10; 	// det green duty
	value |= (blueDuty & 0x3FF);			// set blue duty

	XGpio_DiscreteWrite(&RGBPwmGpio, 1, value);
}

/**
 * updateRGB2LED() - Uses the pwmAnalyzer to update the RGB2 LEDs
 *
 * @brief This function reads the duty cycle of the RGB1 LEDs via the digilant PWM analyzer
 * configured on this board. After reading the duty cycles, it prints them to the xylinx 
 * terminal and then updates the brightness of the RGB2 LEDs based on the duty cycle values.
 * This function sets the RGB2 LEDs via a NS4IO API call.
 *
 * @return			void
 */

void updateRGB2LED() {
	// Get duty cycle percentages. Shift 1 due to hardware cap of half duty cycle. 
	uint32_t dutyCycleRedPercent = PWM_Analyzer_GetDutyCycle_percent(PWM_ANALYZER_RED_BASEADDR) << 1;
	uint32_t dutyCycleGreenPercent = PWM_Analyzer_GetDutyCycle_percent(PWM_ANALYZER_GREEN_BASEADDR) << 1;
	uint32_t dutyCycleBluePercent = PWM_Analyzer_GetDutyCycle_percent(PWM_ANALYZER_BLUE_BASEADDR) << 1;

	// Print the duty cycle percentages for debugging
    xil_printf("PWM Analyzer Duty Cycle Red: %lu%%\r\n", dutyCycleRedPercent);
    xil_printf("PWM Analyzer Duty Cycle Green: %lu%%\r\n", dutyCycleGreenPercent);
    xil_printf("PWM Analyzer Duty Cycle Blue: %lu%%\r\n", dutyCycleBluePercent);

	// Map percentage to the correct range for Nexys4IO module
	uint8_t redBrightness = (dutyCycleRedPercent * 255) / 100;
	uint8_t greenBrightness = (dutyCycleGreenPercent * 255) / 100;
	uint8_t blueBrightness = (dutyCycleBluePercent * 255) / 100;

	// Set LEDs in NX4IO
	NX4IO_RGBLED_setDutyCycle(RGB2, redBrightness, greenBrightness, blueBrightness);
}

/**
 * numToSevenSeg() - Uses the pwmAnalyzer to update the RGB2 LEDs
 *
 * @brief This function converts a 1 digit number to a SSEG display value.
 *
 * @return			void
 */
uint8_t numToSevenSeg(uint8_t num){
	static const uint8_t numToSeg[] = {
		CC_0, CC_1, CC_2, CC_3, CC_4, CC_5, CC_6, CC_7, CC_8, CC_9
	};

	// if number is less than 10, return the array, else return blank (i.e. check for single digit)
	return num < 10 ? numToSeg[num] : CC_BLANK;
}

/**
 * displayNumOnSSEG() - Uses the pwmAnalyzer to update the RGB2 LEDs
 *
 * @brief This function displays a 2 digit number on the SSEG display. MSB position is specified, and LSB
 * is automatically placed in the digit to the right on the display.
 *
 * @return			void
 */

void displayNumOnSSEG(enum _NX4IO_ssegbanks bank, enum _NX4IO_ssegdigits leftDigit, uint8_t num) {
	// Check for out of bounds
	if (num > 99) return;
	uint8_t tens = num / 10;
	uint8_t ones = num % 10;

	// Convert to SSEG representation
	uint8_t tensCode = numToSevenSeg(tens);
	uint8_t onesCode = numToSevenSeg(ones);

	// Write to SSEG
	NX4IO_SSEG_setDigit(bank, leftDigit, tensCode);
	NX4IO_SSEG_setDigit(bank, leftDigit - 1, onesCode);
}
		
/****************************************************************************/
/**
 * nexys4io_selfTest() - performs a self test on the NexysA7 peripheral
 *
 * @brief This is mostly a visual test to confirm that the 7-segment display and
 * RGB LEDs hardware and drivers are operating correctly.  The test does the following:
 *	o sends pattern(s) to the LEDs on the board
 *	o Writes a message on the 7-segment display
 *	o individually lights the RGB LEDs
 *	o sets the RGB2 LED to several values that can be observed
 *	o Turns off the LEDs and blanks the 7-segment digits and decimal points
 * 	o Displays '9999' on the SSEG and runs usleep() for 5 seconds.
 * 
 */
 void nexys4io_selfTest(void) {
	xil_printf("Starting Nexys4IO self test...\r\n");

	xil_printf("\tcheck functionality of LEDs\r\n");
	uint16_t ledvalue = 0x0001;
	do {
		NX4IO_setLEDs(ledvalue);
		usleep(200 * 1000);
		ledvalue = ledvalue << 1;
	} while (ledvalue != 0);

	xil_printf("\tcheck functionality of 7-segment display\r\n");
	// set the display digits to -ECE544- and turn off
	// the decimal points using the "raw" set functions.
	NX4IO_SSEG_setSSEG_DATA(SSEGHI, 0x0058E30E);
	NX4IO_SSEG_setSSEG_DATA(SSEGLO, 0x00144116);
	usleep(2000 * 1000);

	//NX4IO_SSEG_setDigit(SSEGHI, DIGIT0, CC_1);
	//NX4IO_SSEG_setDigit(SSEGLO, DIGIT0, CC_2);
	//usleep(2000 * 1000);

	xil_printf("\tcheck functionality of the RGB2 LED\n\r");
	// RGB2 is controlled by Nexys4IO
	NX4IO_RGBLED_setChnlEn(RGB2, true, true, true);
	xil_printf("\t\tRGB2 segments set to {{99%%, 00%%, 00%%} duty cycle - display RED\n\r");
	NX4IO_RGBLED_setDutyCycle(RGB2, 255, 0, 0);
	usleep(2000 * 1000);

	xil_printf("\t\tRGB2 segments set to {{00%%, 50%%, 00%%} duty cycle - display Green\n\r");
	NX4IO_RGBLED_setDutyCycle(RGB2, 0, 255, 0);
	usleep(2000 * 1000);

	xil_printf("\t\tRGB2 segments set to {{00%%, 00%%, 25%%} duty cycle - display Blue\n\r");
	NX4IO_RGBLED_setDutyCycle(RGB2, 0, 0, 64);
	usleep(2000 * 1000);

	xil_printf("\t\tRGB2 segments set to {{50%%, 12%%, 25%%} duty cycle - display Purplish-ish\n\r");
    NX4IO_RGBLED_setDutyCycle(RGB2, 255, 32, 64);
	usleep(2000 * 1000);


	// turn off LEDs, display and RGB LEDs
	NX410_SSEG_setAllDigits(SSEGLO, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, DP_NONE);
	NX410_SSEG_setAllDigits(SSEGHI, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, DP_NONE);
    NX4IO_setLEDs(0x0000);

	// Turn off RGB2
	NX4IO_RGBLED_setDutyCycle(RGB2, 1, 1, 1);

	xil_printf("\tUsleep test: Displaying 'SLEEP' and pausing for 5 seconds\n\r");

	// Display '999' on the high segment
	NX4IO_SSEG_setDigit(SSEGHI, DIGIT7, CC_9);
	NX4IO_SSEG_setDigit(SSEGHI, DIGIT6, CC_9);
	NX4IO_SSEG_setDigit(SSEGHI, DIGIT5, CC_9);
	NX4IO_SSEG_setDigit(SSEGHI, DIGIT4, CC_9);

	// Display '9' on the low segment 
	NX4IO_SSEG_setDigit(SSEGLO, DIGIT3, CC_9); // Optional if your display supports more characters
	// Sleep for 5 seconds
	usleep(5000000); // 5,000,000 microseconds = 5 seconds


	xil_printf("...Nexys4IO self test complete\r\n");
	return;
 }

