module victory (
  input clk, reset,
  input ledr1, ledr9, L, R, 
  output logic [6:0] ledsL, ledsR
  );

  logic [2:0] countL, countR;

  counter left (.clk, .reset, .count(ledr9 & L), .out(countL));
  counter right (.clk, .reset, .count(ledr1 & R), .out(countR));

  seg7 leftseg (.bcd(countL), .leds(ledsL));
  seg7 rightseg (.bcd(countR), .leds(ledsR));

endmodule  // victory