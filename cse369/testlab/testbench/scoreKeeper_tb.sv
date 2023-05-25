module scoreKeeper_testbench();
	reg clk, Reset, in1, in2, key1, add1, add2, sub2;
	wire Out;

	scoreKeeper dut(clk, Reset, in1, in2, key1, add1, add2, sub2);
	
	parameter CLOCK_PERIOD = 100;
	
	initial clk = 1; 
	always begin 
		#(CLOCK_PERIOD/2); 
		clk = ~clk; 
	end 
	
	initial begin 
						@(posedge clk);
		Reset <= 1; @(posedge clk); 
						@(posedge clk); 
						@(posedge clk); 
						@(posedge clk); 
						@(posedge clk);	
		Reset <= 0; @(posedge clk); 
						@(posedge clk); 
						@(posedge clk);
						@(posedge clk);
						@(posedge clk);
						@(posedge clk);
		in1 <= 0;	@(posedge clk);
						@(posedge clk);
		in1 <= 1;	@(posedge clk);
						@(posedge clk);
						@(posedge clk); 
						@(posedge clk);
						@(posedge clk);
						@(posedge clk);
						
		key1 <= 0;	@(posedge clk);
						@(posedge clk);
						@(posedge clk); 
						@(posedge clk);
						@(posedge clk);
						@(posedge clk);
						
		key1 <= 1;	@(posedge clk);
						@(posedge clk);
						@(posedge clk); 
						@(posedge clk);
						@(posedge clk);
						@(posedge clk);
						
		key1 <= 0;	@(posedge clk);
						@(posedge clk);
						@(posedge clk); 
						@(posedge clk);
						@(posedge clk);
						@(posedge clk);
						@(posedge clk); 
						@(posedge clk);
						@(posedge clk);
						@(posedge clk);
		in1 <= 0;	@(posedge clk);		
						@(posedge clk);
						@(posedge clk);
						@(posedge clk);
						@(posedge clk);
						@(posedge clk);
		Reset <= 1; @(posedge clk); 
						@(posedge clk); 
						@(posedge clk); 
						@(posedge clk); 
						@(posedge clk);
		Reset <= 0; @(posedge clk);
						@(posedge clk); 
						@(posedge clk); 
						@(posedge clk); 
						@(posedge clk); 
						@(posedge clk);
						
						
		$stop; 
	end
endmodule
