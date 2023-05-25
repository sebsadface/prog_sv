// Top-level module that defines the I/Os for the DE-1 SoC board
module DE1_SoC (HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, KEY, SW, LEDR, GPIO_1, CLOCK_50);
    output logic [6:0]  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
	 output logic [9:0]  LEDR;
    input  logic [3:0]  KEY;
    input  logic [9:0]  SW;
    output logic [35:0] GPIO_1;
    input logic CLOCK_50;

	 // Turn off HEX displays
    assign HEX1 = '1;
    assign HEX2 = '1;
    assign HEX3 = '1;
    assign HEX4 = '1;
    assign HEX5 = '1;
	 
	 
	 /* Set up system base clock to 1526 Hz (50 MHz / 2**(14+1))
	    ===========================================================*/
	 logic [31:0] clk;
	 logic SYSTEM_CLOCK;
	 
	 clock_divider divider (.clock(CLOCK_50), .divided_clocks(clk));
	 
	 assign SYSTEM_CLOCK = clk[14]; // 1526 Hz clock signal	 
	 
	 /* If you notice flickering, set SYSTEM_CLOCK faster.
	    However, this may reduce the brightness of the LED board. */
	
	 
	 /* Set up LED board driver
	    ================================================================== */
	 logic [15:0][15:0]RedPixels; // 16 x 16 array representing red LEDs
    logic [15:0][15:0]GrnPixels; // 16 x 16 array representing green LEDs
	 logic RST, next, select, currentPlayer;                  
//	 logic [1:0] one,two,three,four,five,size,seven,eight,nine;
	 logic [3:0] selectedCell;
	 assign RST = SW[9];
	 
	 /* Standard LED Driver instantiation - set once and 'forget it'. 
	    See LEDDriver.sv for more info. Do not modify unless you know what you are doing! */
	 LEDDriver Driver (.CLK(SYSTEM_CLOCK), .RST, .EnableCount(1'b1), .RedPixels, .GrnPixels, .GPIO_1);
	 
	 
	 /* LED board test submodule - paints the board with a static pattern.
	    Replace with your own code driving RedPixels and GrnPixels.
		 
	 	 SW[9]      : Reset
		 =================================================================== */

	cleanInput c1 (.Clock(SYSTEM_CLOCK), .Reset(RST), .in(~KEY[0]), .out(select));
	cleanInput c2 (.Clock(SYSTEM_CLOCK), .Reset(RST), .in(~KEY[1]), .out(next));

	user_input_handler next (.clk(SYSTEM_CLOCK), .reset(RST), .in(~KEY[0]), .out(select));
	user_input_handler select (.clk(SYSTEM_CLOCK), .reset(RST), .in(~KEY[1], .out(next)));
	
	playerSwitcher playerSwitcher (.clk(SYSTEM_CLOCK), .reset(RST), .select, .currentPlayer);
	
	cellSelector cs (.clk(SYSTEM_CLOCK), .reset(RST), .next, .GrnPixels, .RedPixels, .selectedCell);
	led_controller lc(.clock(SYSTEM_CLOCK), .number(selectedCell), .player(currentPlayer), .select, .RedPixels, .reset(RST), .leds(HEX0));
endmodule
