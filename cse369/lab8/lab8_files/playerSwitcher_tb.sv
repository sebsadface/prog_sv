module playerSwitcher_tb();
    logic clk, reset, select;
    logic [8:0][1:0] currentGame;
    logic [3:0] currentCell;
    logic currentPlayer;

	playerSwitcher dut(.clk, .reset, .select, .currentGame, .currentCell, .currentPlayer);
	
	parameter CLOCK_PERIOD=100;
	initial begin
    	clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	integer i;
	initial begin
		reset <= 1;
        select <= 0;
        currentCell <= 4'b0000;
        for(int i=0; i<9; i=i+1) currentGame[i] <= 2'b00;
         @(posedge clk);
        reset <= 0;
         @(posedge clk);
        select <= 1;
         @(posedge clk);
        for(int i=0; i<9; i=i+1) begin
            currentCell <= i;
             @(posedge clk);
            if(i%2 == 0) currentGame[i] <= 2'b01;
            else currentGame[i] <= 2'b10;
             @(posedge clk);
        end
		$stop;
	end

endmodule