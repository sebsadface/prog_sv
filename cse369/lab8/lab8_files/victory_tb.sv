module victory_tb();
    logic clk, reset;
    logic [8:0][1:0] currentGame;
    logic [6:0] ledsX, ledsO;

    victory dut (.clk, .reset, .currentGame, .ledsX, .ledsO);

  parameter CLOCK_PERIOD=100;
	initial begin
    	clk <= 0;
		forever #(CLOCK_PERIOD/2) clk <= ~clk;
	end

    initial begin
        reset <= 0;
        currentGame <= 18'b0;
        @(posedge clk); 
    
        reset <= 1;
        @(posedge clk); 
        reset <= 0;
        @(posedge clk); 


        currentGame[0][0] <= 1'b1;
        currentGame[1][0] <= 1'b1;
        currentGame[2][0] <= 1'b1;
        @(posedge clk); 
        currentGame <= 18'b0; @(posedge clk); 

        currentGame[0][0] <= 1'b1;
        currentGame[3][0] <= 1'b1;
        currentGame[6][0] <= 1'b1;
        @(posedge clk); 
        currentGame <= 18'b0; @(posedge clk); 

        currentGame[0][0] <= 1'b1;
        currentGame[4][0] <= 1'b1;
        currentGame[8][0] <= 1'b1;
        @(posedge clk); 
        currentGame <= 18'b0; @(posedge clk); 

        currentGame[1][0] <= 1'b1;
        currentGame[4][0] <= 1'b1;
        currentGame[7][0] <= 1'b1;
        @(posedge clk); 
        currentGame <= 18'b0; @(posedge clk);  

        currentGame[2][0] <= 1'b1;
        currentGame[5][0] <= 1'b1;
        currentGame[8][0] <= 1'b1;
        @(posedge clk); 
        currentGame <= 18'b0; @(posedge clk);  

        currentGame[2][0] <= 1'b1;
        currentGame[4][0] <= 1'b1;
        currentGame[6][0] <= 1'b1;
        @(posedge clk); 
        currentGame <= 18'b0; @(posedge clk);  

        currentGame[3][0] <= 1'b1;
        currentGame[4][0] <= 1'b1;
        currentGame[8][0] <= 1'b1;
        @(posedge clk); 
        currentGame <= 18'b0; @(posedge clk); 

        currentGame[6][0] <= 1'b1;
        currentGame[7][0] <= 1'b1;
        currentGame[8][0] <= 1'b1;
        @(posedge clk); 
        currentGame <= 18'b0; @(posedge clk);  

        reset <= 1;
        @(posedge clk); 
        reset <= 0;
        @(posedge clk); 

        currentGame[0][1] <= 1'b1;
        currentGame[1][1] <= 1'b1;
        currentGame[2][1] <= 1'b1;
        @(posedge clk); 
        currentGame <= 18'b0; @(posedge clk); 

        currentGame[0][1] <= 1'b1;
        currentGame[3][1] <= 1'b1;
        currentGame[6][1] <= 1'b1;
        @(posedge clk); 
        currentGame <= 18'b0; @(posedge clk); 

        currentGame[0][1] <= 1'b1;
        currentGame[4][1] <= 1'b1;
        currentGame[8][1] <= 1'b1;
        @(posedge clk); 
        currentGame <= 18'b0; @(posedge clk); 

        currentGame[1][1] <= 1'b1;
        currentGame[4][1] <= 1'b1;
        currentGame[7][1] <= 1'b1;
        @(posedge clk); 
        currentGame <= 18'b0; @(posedge clk);  

        currentGame[2][1] <= 1'b1;
        currentGame[5][1] <= 1'b1;
        currentGame[8][1] <= 1'b1;
        @(posedge clk); 
        currentGame <= 18'b0; @(posedge clk);  

        currentGame[2][1] <= 1'b1;
        currentGame[4][1] <= 1'b1;
        currentGame[6][1] <= 1'b1;
        @(posedge clk); 
        currentGame <= 18'b0; @(posedge clk);  

        currentGame[3][1] <= 1'b1;
        currentGame[4][1] <= 1'b1;
        currentGame[8][1] <= 1'b1;
        @(posedge clk); 
        currentGame <= 18'b0; @(posedge clk); 

        currentGame[6][1] <= 1'b1;
        currentGame[7][1] <= 1'b1;
        currentGame[8][1] <= 1'b1;
        @(posedge clk); 
        currentGame <= 18'b0; @(posedge clk);  
        $stop;
    end

endmodule
