module lab4 (
    output logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5,
    input logic [9:0] SW
);

seg7 H0 (.bcd[0](~SW[0]), .bcd[1](~SW[1]), .bcd[2](~SW[2]), .bcd[3](~SW[3]),
         .leds[0](HEX0[0]), .leds[1](HEX0[1]), .leds[2](HEX0[2]), 
         .leds[3](HEX0[3]), .leds[4](HEX0[4]), .leds[5](HEX0[5]), .leds[6](HEX0[6]));

seg7 H1 (.bcd[0](~SW[4]), .bcd[1](~SW[5]), .bcd[2](~SW[6]), .bcd[3](~SW[7]),
         .leds[0](HEX1[0]), .leds[1](HEX1[1]), .leds[2](HEX1[2]), 
         .leds[3](HEX1[3]), .leds[4](HEX1[4]), .leds[5](HEX1[5]), .leds[6](HEX1[6]));
    
endmodule