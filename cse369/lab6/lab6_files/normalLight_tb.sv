module normalLight_tb ();
  logic clk, reset, L, R, NL, NR;
  logic lightOn;

  normalLight dut (.clk, .reset, .L, .R, .NL, .NR, .LightOn);

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
    reset <= 1; L <= 0; R <= 0; NL <= 0; NR <= 0; @(posedge clk);
    reset <= 0; L <= 1; R <= 0; NL <= 0; NR <= 1; @(posedge clk);
                L <= 0; R <= 0; NL <= 0; NR <= 0; @(posedge clk);
                L <= 1; R <= 1; NL <= 0; NR <= 0; @(posedge clk);
                L <= 1; R <= 0; NL <= 0; NR <= 0; @(posedge clk);
                L <= 0; R <= 1; NL <= 1; NR <= 0; @(posedge clk); 
                L <= 1; R <= 1; NL <= 0; NR <= 0; @(posedge clk);
                L <= 0; R <= 0; NL <= 0; NR <= 0; @(posedge clk);
                L <= 0; R <= 1; NL <= 0; NR <= 0; @(posedge clk);
                L <= 0; R <= 0; NL <= 0; NR <= 0; @(posedge clk);
                                                  @(posedge clk);
    $stop;  // pause the simulation
  end
endmodule  // normalLight_tb
