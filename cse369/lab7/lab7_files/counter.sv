module counter (
    input logic clk, reset, count,
    output logic [2:0] out
);

enum logic {S0 = 3'b000, S1 = 3'b001, S2 = 3'b010,  S3 = 3'b011, S4 = 3'b100, S5 = 3'b101, S6 = 3'b110, S7 = 3'b111} ps, ns;

always_comb
    case (ps)
        S0: if (count) ns = S1;
            else       ns = S0;
        S1: if (count) ns = S2;
            else       ns = S1;
        S2: if (count) ns = S3;
            else       ns = S2;
        S3: if (count) ns = S4;
            else       ns = S3;
        S4: if (count) ns = S5;
            else       ns = S4;
        S5: if (count) ns = S6;
            else       ns = S5;
        S6: if (count) ns = S7;
            else       ns = S6;
        S7:            ns = S7;
        default: ns = ps;
    endcase

assign out = ps;

always_ff @(posedge clk)
    if (reset)
        ps <= 3'b000;
    else
        ps <= ns;

endmodule // counter