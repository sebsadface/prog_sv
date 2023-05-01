module runwayLights (
    input logic clk, reset, w1, w0, 
    output logic [2:0] out
);

  // State Encoding and Variables
  // An enum is a straightforward way to assign clear names to our FSM states
  // while also being able to specify the bit representation of each state.
  // ps = "present state", ns = "next state".
  enum logic [2:0] {S101 = 3'b101, S001 = 3'b001, S010 = 3'b010, S100 = 3'b100} ps, ns;
  
  // Runway lights Next State Logic
  always_comb
    case (ps)
        S101: if (~(w1 | w0))       ns = S010;
              else if (~w1 & w0)    ns = S001;
              else if (w1 & ~w0)    ns = S100;
              else                  ns = S101;
        S001: if (~(w1 | w0))       ns = S101;
              else if (~w1 & w0)    ns = S010;
              else if (w1 & ~w0)    ns = S100;
              else                  ns = S001;
        S010: if (~(w1 | w0))       ns = S101;
              else if (~w1 & w0)    ns = S100;
              else if (w1 & ~w0)    ns = S001;
              else                  ns = S010;
        S100: if (~(w1 | w0))       ns = S010;
              else if (~w1 & w0)    ns = S001;
              else if (w1 & ~w0)    ns = S010;
              else                  ns = S100;
        default:                    ns = ps;
    endcase

    assign out = ns;

  // Output logic
  // Note: this statement could be placed above the FSM case statement, in a
  // separate always_comb block, or outside the always_comb block as an
  // assign statement because it depends only on the current value of ps.

  // Sequential Logic
  // Only state is FSM state
  // Synchronous reset signal to set FSM to its first state
  always_ff @(posedge clk)
    if (reset)
      ps <= S101;
    else
      ps <= ns;

endmodule