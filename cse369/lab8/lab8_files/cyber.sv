module cyber (
    input clk, reset,
    input logic [8:0] ubv,
    output logic press
);

logic [9:0] sum;
logic [9:0] randnum;
logic [9:0] switches;
logic cout9;

assign randnum[9] = 1'b0;
assign switches[9] = 1'b0;
assign switches[8:0] = ubv;

LFSR lfsr (.clk, .reset, .Q(randnum[8:0]));
adder10bit adder (.a(randnum), .b(switches), .cin0(1'b0), .sum, .cout9);

always_ff @(posedge clk) begin
    if (sum[9])
        press <= 1'b1;
    else
        press <= 1'b0;
end

endmodule // cyber