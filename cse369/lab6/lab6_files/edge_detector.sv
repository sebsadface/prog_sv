module edge_detector (
    input logic clk, reset
    input logic in,
    output logic out
);

enum logic {S0, S1} ps, ns;

always_comb
    case (ps)
        S0: if (in) ns = S1;
            else    ns = S0;
        S1: if (in) ns = S1;
            else    ns = S0;
    endcase

assign out = ns;

always_ff @(posedge CLOCK_50)
    if (reset)
        ps <= S0;
    else
        ps <= ns;

endmodule // edge_detector