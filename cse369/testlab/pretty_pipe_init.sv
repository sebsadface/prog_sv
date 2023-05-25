module pretty_pipe_init(clock, reset, lossDetect, sel, right, mid, lightOut); //add cutoff var
   input clock, reset;
	input lossDetect;
	//states
	reg [7:0] PS = 8'b11111000;
   reg [7:0] NS;
	input [7:0] right, mid;
	input [3:0] sel;
	
	//possible pipes!
	parameter [7:0] p1 = 8'b11111000,  p2 = 8'b11110001,  p3 = 8'b11100011,  p4 = 8'b11000111;
	parameter [7:0] p5 = 8'b00011111,  p6 = 8'b00011111,  p7 = 8'b11000011,  p8 = 8'b10000111;
	parameter [7:0] p9 = 8'b11000011, p10 = 8'b00001111, p11 = 8'b11110000, p12 = 8'b10001111;
	//repeat the 3 gaps most often 11 instances; 2 gaps 2; 3 gaps 4 instances
	parameter [7:0] p0 = 8'b11111000, p13 = 8'b11110001, p14 = 8'b11100011, p15 = 8'b11000111;
 
   //output 
	output wire [7:0] lightOut;
	
	reg [11:0] counter;

	always @(*) begin
	   if (right == 8'b00000000 & mid == 8'b00000000) NS = 8'b00000000;
		else begin
		   case (sel)
			  4'b0000: NS = p0;
			  4'b0001: NS = p1;
			  4'b0010: NS = p2;
			  4'b0011: NS = p3;
			  4'b0100: NS = p4;
			  4'b0101: NS = p5;
			  4'b0110: NS = p6;
		     4'b0111: NS = p7;
			  4'b1000: NS = p8;
			  4'b1001: NS = p9;
			  4'b1010: NS = p10;
			  4'b1011: NS = p11;
			  4'b1100: NS = p12;
			  4'b1101: NS = p13;
			  4'b1110: NS = p14;
			  4'b1111: NS = p15;
			  default: NS = 8'bxxxxxxxx;
		   endcase
		end
   end	  

	always@(posedge clock) begin
	  if (reset)
	    PS <= 8'b11111000;
	  else if (lossDetect) begin
	    PS <= PS;
		 counter <= 12'b000000000000;
		 end
	  else if (counter == 12'b100111111111) begin
	    counter <= 12'b00000000000;
		 PS <= NS;
		 end
	  else begin
	    counter <= counter + 12'b000000000001;  
	    PS <= PS;
		 end
   end
	
   assign lightOut = PS;
endmodule

module pretty_pipe_init_testbench(); //add cutoff var
  reg clk, reset;
  reg lossDetect; 
  reg [7:0] sel, right, mid;
  wire [7:0] lightOut;  
  
  pretty_pipe_init dut (.clock(clk), .reset, .lossDetect, .sel, .right, .mid, .lightOut);

  // Set up the clock
  parameter CLOCK_PERIOD=100;
  initial clk=1;
  always begin
    #(CLOCK_PERIOD/2); clk = ~clk;
  end
  
  // must turn off the counter to test properly
  // Set up the inputs to the design (each line is a clock cycle)
  initial begin
    @(posedge clk); reset <= 1;
	 @(posedge clk); reset <= 0; lossDetect <= 0;
	 @(posedge clk); right <= 8'b10101010;	 mid <= 8'b00000000;	 
	 @(posedge clk); sel <= 4'b0000;
	 @(posedge clk); 
	 @(posedge clk); sel <= 4'b0001;
    @(posedge clk); 
	 @(posedge clk); sel <= 4'b0010;
	 @(posedge clk); 
	 @(posedge clk); sel <= 4'b0011;
	 @(posedge clk); 
	 @(posedge clk); sel <= 4'b0100;
	 @(posedge clk); 
	 @(posedge clk); sel <= 4'b0101;
	 @(posedge clk); 
	 @(posedge clk); sel <= 4'b0110;
	 @(posedge clk); 
	 @(posedge clk); sel <= 4'b0111;
	 @(posedge clk); 
	 @(posedge clk); sel <= 4'b1000; right <= 8'b00000000; mid <= 8'b11001100;	 
	 @(posedge clk); 
	 @(posedge clk); sel <= 4'b1001;
    @(posedge clk); 
	 @(posedge clk); sel <= 4'b1010; 
	 @(posedge clk); 
	 @(posedge clk); sel <= 4'b1011; 
	 @(posedge clk); 
	 @(posedge clk); sel <= 4'b1100; 
	 @(posedge clk); 
	 @(posedge clk); sel <= 4'b1101; 
	 @(posedge clk); 
	 @(posedge clk); sel <= 4'b1110; 
	 @(posedge clk); 
	 @(posedge clk); sel <= 4'b1111; 
	 @(posedge clk); 
	 @(posedge clk); reset <= 1;
	 @(posedge clk); reset <= 0; right <= 8'b00000000; mid <= 8'b00000000;	  
	 @(posedge clk); 
	 @(posedge clk); sel <= 4'b1100; 
	 @(posedge clk); 
	 @(posedge clk); sel <= 4'b1101;
	 @(posedge clk); sel <= 4'b1111; mid <= 8'b00000000;	 
	 @(posedge clk); sel <= 4'b1101;
	 @(posedge clk); sel <= 4'b1010; 
	 @(posedge clk); 
	 @(posedge clk); 
	 @(posedge clk); 
	 @(posedge clk); 

	 $stop;       // End the simulation
  end
endmodule