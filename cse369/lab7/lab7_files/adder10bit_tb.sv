module adder10bit_tb ();
logic [9:0] a, b;
logic cin0;
logic [9:0] sum;
logic cout9;

adder10bit dut (.a, .b, .cin0(1'b0), .sum, .cout9);

initial
begin
    a = 10'b0000000000; b = 10'b1110101101; #10; // 1) An addition with one input being 0. (0 - 83)
    a = 10'b0011111111; b = 10'b0100000000; #10; // 2) An addition whose result is 511. (255 + 256)
    a = 10'b0101011001; b = 10'b1010100111; #10; // 3) An addition whose result is 0. (345 - 345)
    a = 10'b0111111110; b = 10'b1000000010; #10; // 4) An example of unsigned overflow. (510 + 514 = 0)
    a = 10'b0011111010; b = 10'b0100000110; #10; // 5) An example of positive signed overflow (pos + pos = neg).(250 + 262 = -1)
    a = 10'b1100000110; b = 10'b1011111001; #10; // 6) An example of negative signed overflow (neg + neg = pos). (-250 -263 = 1)
end

endmodule // adder10bit_tb