module lab4_tb();
    logic [9:0] SW;
    logic [9:0] LEDR;
    logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5

    lab4 dut (.LEDR, .SW, .HEX0, .HEX1, .HEX2, .HEX3, .HEX4, .HEX5);

    integer i;
    initial begin
        for(i = 0; i < 16; i++) begin
            SW[3:0] = i; #10;
        end
    end

endmodule