module victory (
  input clk, reset,
  input ledr1, ledr9, L, R, 
  output logic [6:0] ledsL, ledsR
  );

  logic [2:0] outL, outR;
  logic countL, countR;

  always_ff @(posedge clk) begin
    if (outL[0] & outL[1] & outL[2]) countR = 1'b0;
    else                             countR = (ledr1 & R);

    if (outR[0] & outR[1] & outR[2]) countL = 1'b0;
    else                             countL = (ledr9 & L);
  end

  counter left (.clk, .reset, .count(countL), .out(outL));
  counter right (.clk, .reset, .count(countR), .out(outR));

  seg7 leftseg (.bcd(outL), .leds(ledsL));
  seg7 rightseg (.bcd(outR), .leds(ledsR));

endmodule  // victory