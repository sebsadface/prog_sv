module playfield (
    input logic clk, reset,
    input logic L, R,
    output logic [8:0] LEDR,
    output logic [1:0] winner
    );
    normalLight ledr1 (.clk, .reset, .L, .R, .NL(LEDR[1]), .NR(0), .lightOn(LEDR[0]));
    normalLight ledr2 (.clk, .reset, .L, .R, .NL(LEDR[2]), .NR(LEDR[0]), .lightOn(LEDR[1]));
    normalLight ledr3 (.clk, .reset, .L, .R, .NL(LEDR[3]), .NR(LEDR[1]), .lightOn(LEDR[2]));
    normalLight ledr4 (.clk, .reset, .L, .R, .NL(LEDR[4]), .NR(LEDR[2]), .lightOn(LEDR[3]));
    centerLight ledr5 (.clk, .reset, .L, .R, .NL(LEDR[5]), .NR(LEDR[3]), .lightOn(LEDR[4]));
    normalLight ledr6 (.clk, .reset, .L, .R, .NL(LEDR[6]), .NR(LEDR[4]), .lightOn(LEDR[5]));
    normalLight ledr7 (.clk, .reset, .L, .R, .NL(LEDR[7]), .NR(LEDR[5]), .lightOn(LEDR[6]));
    normalLight ledr8 (.clk, .reset, .L, .R, .NL(LEDR[8]), .NR(LEDR[6]), .lightOn(LEDR[7]));
    normalLight ledr9 (.clk, .reset, .L, .R, .NL(0), .NR(LEDR[7]), .lightOn(LEDR[8]));

    enum logic [1:0] {S0 = 2'b00, S1 = 2'b01, S2 = 2'b10} ps, ns;

    always_comb
        case (ps)
            S0:  if (~L & ~LEDR[8] & R & LEDR[0])      ns = S1;
                else if (L & LEDR[8] & ~R & ~LEDR[0]) ns = S2;   
                else   ns = S0;
            S1:         ns = S0;
            S2:         ns = S0;
            default:    ns = ps;
        endcase

    assign winner = ns;    

    // Sequential Logic
    // Only state is FSM state
    // Synchronous reset signal to set FSM to its first state
    always_ff @(posedge clk)
        if (reset)
        ps <= S0;
        else
        ps <= ns;

endmodule