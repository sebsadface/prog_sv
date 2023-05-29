module cellSelector_tb();
    logic reset;
    logic [8:0][1:0] currentGame;
    logic [15:0][15:0] RedIntermediate;
    logic [15:0][15:0] RedPixels;


    cellSelector dut (.reset, .currentGame, .RedIntermediate, .RedPixels); 

    initial begin
        reset = 1;
        currentGame = 0;
        RedIntermediate = 0;

        #10 reset = 0;
        #10 reset = 1;
        #10 reset = 0;


        for (integer i = 0; i < 9; i++) begin
            for (integer j = 0; j < 3; j++) begin
                currentGame[i] = j;
                #30;
            end
        end

        $stop;
    end

endmodule
