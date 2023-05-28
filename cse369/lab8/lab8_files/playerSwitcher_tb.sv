module playerSwitcher_tb();
    logic clk, reset, select;
    logic [8:0][1:0] currentGame;
    logic [3:0] currentCell;
    logic currentPlayer;

	cellSwitcher dut(.clk, .reset, .next, .select, .currentGame, .currentCell, .currentPlayer);
	
	parameter CLOCK_PERIOD=100;
	initial begin
    	clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end
	
	integer i;
	initial begin
		clk <= 0;
        reset <= 1;
        select <= 0;
        currentGame <= '{9{2'b00}};
        currentCell <= 0;
        currentPlayer <= 0;

        reset <= 0; @(posedge clk); 

        // Test 1: Switch to player 1
         select <= 1; @(posedge clk); 
         select <= 0; @(posedge clk); 

        // Test 2: Switch to player 2
         select <= 1; @(posedge clk); 
         select <= 0; @(posedge clk); 

        // Test 3: Switch to player 1 again
         select <= 1; @(posedge clk); 
         select <= 0; @(posedge clk); 

        // Test 4: Switch to player 2 again
         select <= 1; @(posedge clk); 
         select <= 0; @(posedge clk);

        // Test 5: Switch to player 1 after a cell change
         currentCell <= 1; @(posedge clk); 
         select <= 1; @(posedge clk); 
         select <= 0; @(posedge clk); 

        // Test 6: Switch to player 2 after a game change
         currentGame[0] <= 2'b01; @(posedge clk); 
         select <= 1; @(posedge clk); 
         select <= 0; @(posedge clk); 

        // Test 7: Switch to player 1 after a game and cell change
         currentCell <= 2; @(posedge clk); 
         currentGame[0] <= 2'b00; @(posedge clk); 
         select <= 1; @(posedge clk); 
         select <= 0; @(posedge clk); 
         
		$stop;
	end

endmodule