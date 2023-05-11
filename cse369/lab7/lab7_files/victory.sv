module victory (
  input clk, reset,
  input ledr1, ledr9, L, R,
  output logic [6:0] leds
  );

  enum logic [6:0] {p1win = 7'b1111001, p2win = 7'b0100100, off = 7'b1111111} ps, ns;

  always_comb begin
    case (ps)
        off: if (ledr9 & L)      ns = p2win;
             else if (ledr1 & R) ns = p1win;
             else                ns = off;
        p2win:                   ns = p2win;
        p1win:                   ns = p1win;
        default:                 ns = ps;
    endcase
  end
  
  assign leds = ps;

  always_ff @(posedge clk)
        if (reset)
            ps <= off;
        else 
            ps <= ns;


endmodule  // victory