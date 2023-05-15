module victory (
  input clk, reset,
  input ledr1, ledr9, L, R, 
  output logic [6:0] ledsL, ledsR
  );

  logic [2:0] outL, outR;
  logic countL, countR;

  if (outL = 3'b111) begin
    assign countR = 1'b0;
  end
  else begin
    assign countR = (ledr1 & R);
  end

  if (outR = 3'b111) begin
    assign countL = 1'b0;
  end
  else begin
    assign countL = (ledr9 & L);
  end

  counter left (.clk, .reset, .count(countL), .out(outL));
  counter right (.clk, .reset, .count(countR), .out(outR));

  seg7 leftseg (.bcd(countL), .leds(ledsL));
  seg7 rightseg (.bcd(countR), .leds(ledsR));

endmodule  // victory