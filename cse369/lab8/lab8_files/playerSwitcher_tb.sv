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
		clk <= 0;
        reset <= 1;
        select <= 0;
        currentGame <= '{9{2'b00}};
        currentCell <= 0;
        currentPlayer <= 0;

        reset <= 0; @(posedge clk); 

         select <= 1; @(posedge clk); 
         select <= 0; @(posedge clk); 

    
         select <= 1; currentGame[0] = 2'b01; @(posedge clk); 
         select <= 0; @(posedge clk); 

        
         select <= 1; currentGame[0] = 2'b00; @(posedge clk); 
         select <= 0; @(posedge clk); 

         currentCell <= 8; select <= 1; currentGame[3] = 2'b01; @(posedge clk);         
         select <= 0; @(posedge clk); 

       
         currentCell <= 3; select <= 1; currentGame[3] = 2'b01; @(posedge clk);         
         select <= 0; @(posedge clk); 

        
         currentCell <= 3; select <= 1; currentGame[3] = 2'b01; @(posedge clk);         
         select <= 0; @(posedge clk); 

         currentCell <= 3; select <= 1; currentGame[3] = 2'b10; @(posedge clk);         
         select <= 0; @(posedge clk); 
         
		$stop;
	end

endmodule