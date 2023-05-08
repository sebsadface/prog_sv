 // Testbench for tow
module tow_tb ();
  logic clk;
  logic [6:0] HEX0;
  logic [9:0] LEDR;
  logic [3:0] KEY;
  logic [9:0] SW;

  tow dut (.CLOCK_50(clk), .HEX0, .LEDR, .KEY, .SW);

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
    SW[9] <= 1; KEY[3] <= 0; KEY[0] <= 0; @(posedge clk); 
    SW[9] <= 0; KEY[3] <= 0; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 1; KEY[0] <= 0; @(posedge clk);  
                KEY[3] <= 0; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 1; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 0; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 1; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 0; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 1; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 0; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 1; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 0; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 1; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 0; KEY[0] <= 1; @(posedge clk);
                
    SW[9] <= 1; KEY[3] <= 0; KEY[0] <= 0; @(posedge clk); 
    SW[9] <= 0; KEY[3] <= 0; KEY[0] <= 1; @(posedge clk); 
                                          @(posedge clk);
                KEY[3] <= 0; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 0; KEY[0] <= 1; @(posedge clk);
                KEY[3] <= 0; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 0; KEY[0] <= 1; @(posedge clk);
                KEY[3] <= 0; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 0; KEY[0] <= 1; @(posedge clk);
                KEY[3] <= 0; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 0; KEY[0] <= 1; @(posedge clk);
                KEY[3] <= 0; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 0; KEY[0] <= 1; @(posedge clk);
                KEY[3] <= 1; KEY[0] <= 0; @(posedge clk);

    SW[9] <= 1; KEY[3] <= 0; KEY[0] <= 0; @(posedge clk); 
    SW[9] <= 0; KEY[3] <= 1; KEY[0] <= 0; @(posedge clk); 
                                          @(posedge clk);
                KEY[3] <= 0; KEY[0] <= 1; @(posedge clk);
                KEY[3] <= 1; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 0; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 1; KEY[0] <= 0; @(posedge clk);

                KEY[3] <= 0; KEY[0] <= 1; @(posedge clk);
                KEY[3] <= 1; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 0; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 1; KEY[0] <= 0; @(posedge clk);

                KEY[3] <= 0; KEY[0] <= 1; @(posedge clk);
                KEY[3] <= 1; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 0; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 1; KEY[0] <= 0; @(posedge clk);

                KEY[3] <= 0; KEY[0] <= 1; @(posedge clk);
                KEY[3] <= 1; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 0; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 1; KEY[0] <= 0; @(posedge clk);

                KEY[3] <= 0; KEY[0] <= 1; @(posedge clk);
                KEY[3] <= 1; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 0; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 1; KEY[0] <= 0; @(posedge clk);
                KEY[3] <= 1; KEY[0] <= 0; @(posedge clk);
                                          @(posedge clk);
    $stop;  // pause the simulation
  end
endmodule  // tow_tb
