module cellSwitcher_tb();
	logic clk, reset, next;
	logic [15:0][15:0] GrnPixels;
	logic [15:0][15:0] RedPixels;
    logic [3:0] selectedCell;

	cellSwitcher dut(.clk, .reset, .next, .GrnPixels, .RedPixels, .selectedCell);
	
	parameter CLOCK_PERIOD=100;
	initial begin
    	clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	integer i;
	initial begin
		reset <= 1;                     @(posedge clk); 
		reset <= 0;                     @(posedge clk); 

		for (i = 0; i < 10; i++) begin
			next <= 1;                  @(posedge clk);
			next <= 0;                  @(posedge clk); 
		end
		$stop;
	end
endmodule // cellSwitcher_tb