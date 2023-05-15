 // Testbench for LFSR
module LFSR_tb ();
  logic clk;
  logic [8:0] Q;

  LFSR dut (.clk, .Q);

  // Set up the clock
  parameter CLOCK_PERIOD=100;
  initial begin
    clk <= 0;
    forever #(CLOCK_PERIOD/2) clk <= ~clk;
  end
   
   integer i;
  initial begin
    for (i =0; i < 512; i++) begin
        @(posedge clk);
    end
  $stop;  // pause the simulation
  end
endmodule  // LFSR_tb
