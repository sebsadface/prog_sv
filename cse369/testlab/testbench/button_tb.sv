module button_testbench();
	reg reset, clk;
	reg w;
	wire out;
	
	button dut(clk, reset, w, out);
	
	parameter CLOCK_PERIOD=100; 
	initial clk=1; 
	always begin 
		#(CLOCK_PERIOD/2); 
		clk = ~clk; 
	end 
	
	initial begin 
										@(posedge clk);
		reset <= 1; 				@(posedge clk);
		reset <= 0; w <= 1'b0;	@(posedge clk); 
										@(posedge clk); 
										@(posedge clk);
										@(posedge clk); 
										@(posedge clk);
						w <= 1'b1;	@(posedge clk);
										@(posedge clk);
										@(posedge clk);
										@(posedge clk); 
										@(posedge clk);
						w <= 2'b0;	@(posedge clk);
										@(posedge clk);
										@(posedge clk);
										@(posedge clk); 
										@(posedge clk);
						w <= 2'b1;	@(posedge clk);
										@(posedge clk);
										@(posedge clk); 
										@(posedge clk);
		reset <= 1;					@(posedge clk);
										@(posedge clk);
										@(posedge clk); 
										@(posedge clk);
		reset <= 0;					@(posedge clk);
										@(posedge clk);
										@(posedge clk); 
										@(posedge clk);
		$stop;
	end
	
endmodule 