 // Testbench for simpleFSM
module runwayLights_tb ();
    logic clk, reset, w1, w0;
    logic out;

  runwayLights dut (.clk, .reset, .w1, .w0, .out);

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
    reset <= 1; w1 <= 0; w0 <= 0; @(posedge clk); 
    reset <= 0; w1 <= 0; w0 <= 0; @(posedge clk); // 0 0 101
                                  @(posedge clk); // 0 0 010
                w1 <= 0; w0 <= 1; @(posedge clk); // 0 1 101
                                  @(posedge clk); // 0 1 001
                                  @(posedge clk); // 0 1 010
                                  @(posedge clk); // 0 1 100
                w1 <= 0; w0 <= 0; @(posedge clk); // 0 0 001
                w1 <= 1; w0 <= 0; @(posedge clk); // 1 0 101
                                  @(posedge clk); // 1 0 100
                                  @(posedge clk); // 1 0 010
                                  @(posedge clk); // 1 0 001
                w1 <= 0; w0 <= 0; @(posedge clk); // 0 0 100
    $stop;  // pause the simulation
  end
endmodule  // simpleFSM_tb
