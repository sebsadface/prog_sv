module pretty_pipe(clock, reset, lossDetect, right, lightOut);
   input clock, reset;
	input [7:0] right;
	input lossDetect;
	//states
	reg [7:0] PS;
   reg [7:0] NS;
 
   //output 
	output wire [7:0] lightOut;
	
	reg [11:0] counter;

	always @(*)
	  NS = right; 	

	always@(posedge clock)
	  if (reset)
	    PS <= 8'b00000000;
	  else if (lossDetect) begin
	    PS <= PS;
		 counter <= 12'b000000000000;
		 end
	  else if (counter == 12'b100111111111) begin
	    counter <= 11'b00000000000;
		 PS <= NS;
		 end
	  else begin
	    counter <= counter + 12'b000000000001;  
	    PS <= PS;
		 end

   assign lightOut = PS;
endmodule

module pretty_pipe_testbench(); //add cutoff var
  reg clk, reset;
  reg lossDetect; 
  reg [7:0] right;
  wire [7:0] lightOut;  
  
  pretty_pipe dut (.clock(clk), .reset, .lossDetect, .right, .lightOut);

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
	 @(posedge clk); right <= 8'b10101010;	
	 @(posedge clk); 
	 @(posedge clk); reset <= 1;
	 @(posedge clk); reset <= 0; lossDetect <= 0;
	 @(posedge clk); right <= 8'b11110000;	
	 @(posedge clk); 
	 @(posedge clk); lossDetect <= 1;
	 @(posedge clk); 
	 @(posedge clk); right <= 8'b11110000;	
	 @(posedge clk); 
	 @(posedge clk); right <= 8'b00000000;
	 @(posedge clk); lossDetect <= 0;
	 @(posedge clk); 
	 @(posedge clk); right <= 8'b11110000;	
	 @(posedge clk); 
	 @(posedge clk); right <= 8'b00000000;
	 @(posedge clk); 

	 $stop;       // End the simulation
  end
endmodule