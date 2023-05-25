module lab3_tb();
    logic [9:0] SW;
    logic [9:0] LEDR;

    lab3 dut (.LEDR, .SW);

    integer i;
    initial begin
        for(i = 0; i < 16; i++) begin
            SW[3:0] = i; #10;
        end
    end

endmodule