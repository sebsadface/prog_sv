 module pretty_bird_bottom(clock, reset, KEY0, lossDetect, redAbove, lightOn, groundOut); //add cutoff var
   input clock, reset;
	input KEY0, redAbove;
   input lossDetect;
	output wire groundOut;
	//states
	reg PS, NS;
	reg OUCH = 1'b0;
	parameter OFF = 1'b0, ON = 1'b1;
 
   //output 
	output reg lightOn;
	
	reg [10:0] counter;
	//later reg count [7:0];
	always @(*)
	  if (lossDetect) begin
	    case (PS)
	      ON: NS <= OFF;
	      OFF: NS <= ON;
		 endcase
	  end
	  else begin
	    case (PS)
	      ON: if (KEY0) NS = OFF;
		       else if(~KEY0) begin
				      NS = ON;
				 end
			    else NS = ON;
		   OFF: if (redAbove&~KEY0) NS = ON;
			    else NS = OFF;
	  endcase
	  end  
	always @(*)
	  if ((PS == ON) & (~KEY0) & counter == 11'b11011111111) OUCH = ON;
	  else OUCH = OFF;

	always@(posedge clock)
	  if (reset)
	    PS <= OFF;
	  else if (counter == 11'b11011111111) begin
	    counter <= 11'b00000000000;
		 PS <= NS;
		 end
//	  else if (lightOn & KEY0 & counter == 11'b11011111111)
//	    groundOut <= 1'b1;
	  else begin
	    counter <= counter + 11'b00000000001;  
	    PS <= PS;
		 end
	assign groundOut = OUCH;
   assign lightOn = PS;
	
endmodule

module pretty_bird_bottom_testbench();
  reg clk, reset;
  reg KEY0, redAbove, redBelow;
  wire lightOn;  
  
  pretty_bird_bottom dut (.clock(clk), .reset, .KEY0, .redAbove, .lightOn);

  // Set up the clock
  parameter CLOCK_PERIOD=100;
  initial clk=1;
  always begin
    #(CLOCK_PERIOD/2); clk = ~clk;
  end
  
  // Set up the inputs to the design (each line is a clock cycle)
  initial begin
    @(posedge clk); reset <= 1;
	 @(posedge clk); reset <= 0;
	 @(posedge clk); KEY0 <= 0; redAbove <= 0; 
	 @(posedge clk); 
	 @(posedge clk); redAbove <= 1; //ON
	 @(posedge clk); 
    @(posedge clk); redAbove <= 0; //OFF
	 @(posedge clk);  
	 @(posedge clk); KEY0 <= 1; //OFF
	 @(posedge clk); 
	 @(posedge clk); redAbove <= 1; //ON
	 @(posedge clk); 
	 @(posedge clk); redAbove <= 0; //OFF
	 @(posedge clk); redAbove <= 1; 
	 @(posedge clk); 
	 @(posedge clk); reset <= 1;
	 @(posedge clk); 
	 @(posedge clk); 
	 @(posedge clk); 

	 $stop;       // End the simulation
  end
endmodule