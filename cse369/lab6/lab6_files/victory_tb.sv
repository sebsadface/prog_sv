 // Testbench for victory
module victory_tb ();
  logic clk, reset, ledr1, ledr9, L, R;
  logic [6:0] leds;

  victory dut (.clk, .reset, .ledr1, .ledr9, .L, .R, .leds);

  // Set up the clock
  parameter CLOCK_PERIOD=100;
  initial begin
    clk <= 0;
    forever #(CLOCK_PERIOD/2) clk <= ~clk;
  end

  // Set up the inputs to the design. Each line is a clock cycle.
  initial begin
    // Defining ALL input signals at t = 0 will avoid red (undefined) signals
    // in your simulation.
    reset <= 1; ledr1 <= 0; ledr9 <= 0; L <= 0; R <= 0; @(posedge clk);
    reset <= 0; ledr1 <= 1; ledr9 <= 0; L <= 0; R <= 0; @(posedge clk);
                ledr1 <= 0; ledr9 <= 1; L <= 0; R <= 0; @(posedge clk);
                ledr1 <= 1; ledr9 <= 0; L <= 1; R <= 0; @(posedge clk);
                ledr1 <= 1; ledr9 <= 0; L <= 0; R <= 1; @(posedge clk);
                                                        @(posedge clk);
                ledr1 <= 0; ledr9 <= 0; L <= 0; R <= 0; @(posedge clk);
                ledr1 <= 1; ledr9 <= 0; L <= 1; R <= 0; @(posedge clk);
    reset <= 1; ledr1 <= 0; ledr9 <= 0; L <= 0; R <= 0; @(posedge clk);
    reset <= 0; ledr1 <= 0; ledr9 <= 1; L <= 1; R <= 0; @(posedge clk);
                                                        @(posedge clk);
                ledr1 <= 0; ledr9 <= 0; L <= 0; R <= 0; @(posedge clk);
                ledr1 <= 0; ledr9 <= 1; L <= 0; R <= 1; @(posedge clk);
    $stop;  // pause the simulation
  end
endmodule  // victory_tb
