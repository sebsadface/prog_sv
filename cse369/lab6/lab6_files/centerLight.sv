module centerLight (
  input logic clk, reset,

  // L - True when left key (KEY[3]) is pressed
  // R - True when right key (KEY[0]) is pressed
  // NL - True when the light to the left of this one is ON
  // NR - True when the light on the right of this one is ON
  input logic L, R, NL, NR,

  // lightOn – True when this normal light should be ON/lit
  output logic lightOn
  );

  // YOUR CODE GOES HERE
    enum logic {S0, S1} ps, ns;

    always_comb
        case (ps)
            S0: if (L & NR)       ns = S1
                else if (NL & R)  ns = S1;
                else              ns = S0;
            S1: if (L ^ R)        ns = S0;
                else              ns = S1;
            default:              ns = 1'bx;
        endcase
 
    assign lightOn = (ps == S1);

    always_ff @(posedge clk)
        if (reset)
            ps <= S1;
        else 
            ps <= ns;

endmodule  // centerLight
