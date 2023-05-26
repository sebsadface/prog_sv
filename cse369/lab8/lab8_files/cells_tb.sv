module cell_module_testbench();
	logic clock, reset, player, select;
	logic [1:0] row, col;
	logic [15:0] [15:0] red;

	cell_module dut (clock, reset, player, select, row, col, red);

// Set up the clock
	parameter CLOCK_PERIOD=100;
	initial begin
    	clock <= 0;
		forever #(CLOCK_PERIOD/2) clock <= ~clock;
	end
	
	integer p, i, j;
	initial begin
		for (p = 0; p <2; p++) begin
			for (i = 0; i< 3; i++) begin
				for (j = 0; j <3; j++) begin
				@(posedge clock); reset <= 1;
				@(posedge clock); reset <= 0;
				@(posedge clock); player <= p;
				@(posedge clock); row <= j;
				@(posedge clock); col <= i;
				@(posedge clock); select <= 1;
				@(posedge clock); select <= 0;
				@(posedge clock);
				@(posedge clock);
				@(posedge clock);
				@(posedge clock);
				@(posedge clock);
				@(posedge clock);
				end
			end
		end
		$stop;
	end
endmodule
