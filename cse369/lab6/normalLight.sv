module normalLight (
  input logic clock, reset,

  // L - True when left key (KEY[3]) is pressed
  // R - True when right key (KEY[0]) is pressed
  // NL - True when the light to the left of this one is ON
  // NR - True when the light on the right of this one is ON
  input logic L, R, NL, NR,

  // lightOn – True when this normal light should be ON/lit
  output logic lightOn
  );

  // YOUR CODE GOES HERE

endmodule  // normalLight