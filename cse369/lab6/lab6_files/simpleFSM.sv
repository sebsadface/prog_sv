// Simple FSM to recognize sequences of 1-1 on input w.
// out is raised when w has been true for two consecutive clock cycles.
//
// Our FSM code has four parts:
// 1. variable, net, and state declarations/definitions
// 2. Next State Logic (always_comb)
// 3. Output Logic (assign or always_comb)
// 3. Sequential Logic (always_ff)
module simpleFSM (
  input  logic clk, reset, w,
  output logic out
  );

  // State Encoding and Variables
  // An enum is a straightforward way to assign clear names to our FSM states
  // while also being able to specify the bit representation of each state.
  // ps = "present state", ns = "next state".
  enum logic [1:0] {S0 = 2'b00, S1 = 2'b01, S11 = 2'b10} ps, ns;

  // FSM Next State Logic
  always_comb
    case (ps)
      S0:  if (w) ns = S1;   // saw first 1 on w
           else   ns = S0;
      S1:  if (w) ns = S11;  // saw second 1 on w
           else   ns = S0;
      S11: if (w) ns = S11;  // stay here if 1 on w
           else   ns = S0;
      default:    ns = ps;
    endcase

  // Output logic
  // Note: this statement could be placed above the FSM case statement, in a
  // separate always_comb block, or outside the always_comb block as an
  // assign statement because it depends only on the current value of ps.
  assign out = (ns == S11);

  // Sequential Logic
  // Only state is FSM state
  // Synchronous reset signal to set FSM to its first state
  always_ff @(posedge clk)
    if (reset)
      ps <= S0;
    else
      ps <= ns;

endmodule  // simpleFSM
