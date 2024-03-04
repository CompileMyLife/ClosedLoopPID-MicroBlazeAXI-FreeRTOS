/*
* Authors: Ibrahim Binmahfood and Robert Wilcox
* ECE544, Kravitz
* Project 2, Top Module booleanfpga.sv - rtl module
* 02/21/2024
*
* Platform: MicroBlaze AXI based Embedded System on Boolean board
* Description: This top level module incorporates the ports referenced from the
* booleanfpga.xdc file. In addition to the instantiation of the Embedded System
* 'embsys_i'. When asserting buttons BTN0 and BTN1, a reset signal is set HI.
* In the block design 'embsys_i', the IP block Nexys4IO supports the Nexys A7
* FGPA board. This board includes a 5th button BTNC. So for the Boolean board,
* this is set low. Since the MPU-6050 sensor utilizes I2C, we introduce the
* signals 'sclk_io' and 'sda_io'. Check the booleanfpga.xdc file for more
* information on these signals.
*
*/

`timescale 1 ps / 1 ps

module booleanfpga
(
    input  logic		 clk,       // 100 MHz CLK
    input  logic         UART_rxd,  // UART Reciever
    output logic         UART_txd,  // UART Transmitter
    inout  logic         sclk_io,   // SCLK 
    inout  logic         sda_io,    // SDA
    input  logic [15:0]	 sw,		// slide switches
    input  logic 		 btn0,	    // BTNU on Nexys A7
    input  logic 		 btn1,	    // BTNR on Nexys A7
    input  logic 		 btn2,	    // BTNL on Nexys A7
    input  logic 		 btn3,	    // BTND on Nexys A7
    output logic [15:0]	 led,	    // green LEDs
    output logic 		 RGB0_Blue, RGB0_Green, RGB0_Red,	// RGB1 on Nexys A7
	output logic 		 RGB1_Blue, RGB1_Green, RGB1_Red,	// RGB2 on Nexys A7
	output logic [7:0]	 AN,		// Anodes for 7-segment displays
	output logic		 CA, CB, CC, CD, CE, CF, CG, DP,			    // Cathodes for first 4-digit displays
	output logic		 CA_1, CB_1, CC_1, CD_1, CE_1, CF_1, CG_1, DP_1	// Cathodes for second 4-digit display
 );
  
  wire btnCpuReset;

  // generate reset signal (reset is asserted low)
  assign btnCpuReset = ~(btn0 & btn1);
  
  // generate the cathode signals for the second 4 digit 7-segment display
  always @(posedge clk) begin
    CA_1 <= CA;
    CB_1 <= CB;
    CC_1 <= CC;
    CD_1 <= CD;
    CE_1 <= CE;
    CF_1 <= CF;
    CG_1 <= CG;
	DP_1 <= DP;
   end
    
   // instantiate the embedded system       
   embsys embsys_i
       (.RGB1_Blue(RGB0_Blue),
        .RGB1_Green(RGB0_Green),
        .RGB1_Red(RGB0_Red),
        .RGB2_Blue(RGB1_Blue),
        .RGB2_Green(RGB1_Green),
        .RGB2_Red(RGB1_Red),
        .an(AN),
        .btnC(1'b0),    // Boolean board doesn't have BTNC so set LO
        .btnD(btn3),
        .btnL(btn2),
        .btnR(btn1),
        .btnU(btn0),
        .dp(DP),
        .led(led),
        .resetn(btnCpuReset),
        .sclk_io(sclk_io),      
        .sda_io(sda_io),
        .seg({CG, CF, CE, CD, CC, CB, CA}),
        .sw(sw),
        .clk_100MHz(clk),
        .usb_uart_rxd(UART_rxd),
        .usb_uart_txd(UART_txd));

endmodule
