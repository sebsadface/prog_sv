module task1_tb();
    logic [7:0] SW;
    logic [6:0] HEX0, HEX1;

    task1 dut (.SW, .HEX0, .HEX1);

    integer i;
    initial begin
        for(i = 0; i < 256; i++) begin
            SW[7:0] = i; #10;
        end
    end

endmodule