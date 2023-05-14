module counter_tb ();
  logic clk, reset, count;
  logic [2:0] out;

  counter dut (.clk, .reset, .count, .out);

  // Set up the clock
  parameter CLOCK_PERIOD=100;
  initial begin
    clk <= 0;
    forever #(CLOCK_PERIOD/2) clk <= ~clk;
  end

  // Set up the inputs to the design. Each line is a clock cycle.
  initial begin
    reset <= 1; count <= 0; @(posedge clk);
    reset <= 0; count <= 1; @(posedge clk);
                count <= 0; @(posedge clk);

                count <= 1; @(posedge clk);
                count <= 0; @(posedge clk);

                count <= 1; @(posedge clk);
                count <= 0; @(posedge clk);

                count <= 1; @(posedge clk);
                count <= 0; @(posedge clk);

                count <= 1; @(posedge clk);
                count <= 0; @(posedge clk);

                count <= 1; @(posedge clk);
                count <= 0; @(posedge clk);

                count <= 1; @(posedge clk);
                count <= 0; @(posedge clk);

                count <= 1; @(posedge clk);
                count <= 0; @(posedge clk);

                count <= 1; @(posedge clk);
                count <= 0; @(posedge clk);
    $stop;  // pause the simulation
  end
endmodule  // counter_tb
