module LSFR6(clk, reset, outLSFR);

output reg[3:0] outLSFR;
input clk, reset;
reg[5:0] ps;
wire feedback;
reg [10:0] counter;

assign feedback = ~(ps[5]^ps[4]);

always @(posedge clk) begin
    if (reset) ps <= 6'b000000;
	 else if (counter == 11'b11111111111) begin
	    counter <= counter + 11'b00000000001;
	    ps <= {ps[4:0], feedback};
		end
	  else begin
	    counter <= counter + 11'b00000000001;  
	    ps <= ps;
		 end
end
    
assign outLSFR[3:0] = ps[4:1];
	 
endmodule	 

module LSFR6_testbench();
  
  reg reset, clk; 
  wire [5:0]number;
  
  LSFR checkcheck (clk,reset,number);

  // Set up the clock
  parameter CLOCK_PERIOD=100;
  initial clk=1;
  always begin
    #(CLOCK_PERIOD/2); clk = ~clk;
  end
  // Set up the inputs to the design (each line is a clock cycle)
  initial begin
	 @(posedge clk); reset<=1;
	 @(posedge clk); reset<=0;
    for(int i =0; i<64 ; i++) @(posedge clk);
	 @(posedge clk);
	 @(posedge clk);
	 @(posedge clk);reset<=1;
	 @(posedge clk);reset<=0;
	 @(posedge clk);
	 @(posedge clk);
	 $stop;       // End the simulation
  end 
  
endmodule