module pixel (
  input logic clk, reset,

  );

  enum logic {} ps, ns;

  always_comb
    case (ps)
        
        default:              ns = ps;
    endcase

  assign lightOn = (ps == S1);

  always_ff @(posedge clk)
    if (reset)
      ps <= S0;
    else 
      ps <= ns;

endmodule  // pixel
