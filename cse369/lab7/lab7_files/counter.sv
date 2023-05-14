module counter (
    input logic clk, reset, count,
    output logic [2:0] out
);

enum logic ps, ns;

always_comb
    case (ps)
        3'b000: if (count) ns = 3'b001;
                else       ns = 3'b000;
        3'b001: if (count) ns = 3'b010;
                else       ns = 3'b001;
        3'b010: if (count) ns = 3'b011;
                else       ns = 3'b010;
        3'b011: if (count) ns = 3'b100;
                else       ns = 3'b011;
        3'b100: if (count) ns = 3'b101;
                else       ns = 3'b100;
        3'b101: if (count) ns = 3'b110;
                else       ns = 3'b101;
        3'b110: if (count) ns = 3'b111;
                else       ns = 3'b110;
        3'b111:            ns = 3'b111;
        default: ns = ps;
    endcase

assign out = ps;

always_ff @(posedge clk)
    if (reset)
        ps <= 3'b000;
    else
        ps <= ns;

endmodule // counter