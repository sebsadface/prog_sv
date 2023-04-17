module lab3_tb();
    logic [3:0] SW;
    logic [1:0] LEDR

    integer i;
    initial begin
        for(i = 0; i < 16; i++) begin
            SW[3:0] = i; #10;
        end
    end

endmodule