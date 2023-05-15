module victory (
  input clk, reset,
  input ledr1, ledr9, L, R, 
  output logic [6:0] ledsL, ledsR
  );

  logic [2:0] outL, outR;
  logic countL, countR;

  begin
  if (outL = 3'b111) countR = 1'b0;
  else               countR = (ledr1 & R);
  end
  
  begin  
  if (outR = 3'b111) countL = 1'b0;
  else               countL = (ledr9 & L);
  end

  counter left (.clk, .reset, .count(countL), .out(outL));
  counter right (.clk, .reset, .count(countR), .out(outR));

  seg7 leftseg (.bcd(countL), .leds(ledsL));
  seg7 rightseg (.bcd(countR), .leds(ledsR));

endmodule  // victory