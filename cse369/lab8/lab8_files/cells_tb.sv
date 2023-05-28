module cells_tb;
    logic clk, reset, select, currentPlayer;
    logic [3:0] thisCell, currentCell;
    logic [1:0] cellInfo;

    cells dut(.clk, .reset, .select, .currentPlayer, .thisCell, .currentCell, .cellInfo);

   parameter CLOCK_PERIOD=100;
	initial begin
    	clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end

    initial begin
        
        reset = 1; currentPlayer = 0; select = 0; thisCell = 0; currentCell = 0;  @(posedge clk);
                                                                       
        reset = 0;          @(posedge clk); 
         
          currentPlayer = 0; select = 1; thisCell = 0; currentCell = 0; @(posedge clk);
          select = 0; @(posedge clk);


         reset = 1;          @(posedge clk); 
         reset = 0;          @(posedge clk); 
         currentPlayer = 1; select = 1; thisCell = 1; currentCell = 1; @(posedge clk);
         select = 0; @(posedge clk);
       
        reset = 1;          @(posedge clk); 
         reset = 0;          @(posedge clk); 
          currentPlayer = 0; select = 1; thisCell = 2; currentCell = 3; @(posedge clk);
          select = 0; @(posedge clk);
       
       reset = 1;          @(posedge clk); 
         reset = 0;          @(posedge clk); 
         currentPlayer = 1; select = 1; thisCell = 3; currentCell = 3; @(posedge clk); 
        select = 0; @(posedge clk);
         $stop;
    end

endmodule // cells_tb
