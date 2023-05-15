module victory (
  input clk, reset,
  input ledr1, ledr9, L, R, 
  output logic [6:0] ledsL, ledsR
  );

  logic [2:0] outL, outR;
  logic countL, countR;

  always_ff @(posedge clk)
    if (outL[0] & outL[1] & outL[2])
      countR = 1'b0;
    else
      assign countR = (ledr1 & R);

    if (outR[0] & outR[1] & outR[2]) 
      assign countL = 1'b0;
    else
      assign countL = (ledr9 & L);

  counter left (.clk, .reset, .count(countL), .out(outL));
  counter right (.clk, .reset, .count(countR), .out(outR));

  seg7 leftseg (.bcd(countL), .leds(ledsL));
  seg7 rightseg (.bcd(countR), .leds(ledsR));

endmodule  // victory