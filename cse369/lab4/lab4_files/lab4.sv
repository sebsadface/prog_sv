module lab4 (
    output logic [6:0] HEX0, HEX1,
    input logic [7:0] SW
);

seg7 H0 (.bcd(SW[3:0]), .leds(HEX0));
seg7 H1 (.bcd(SW[7:4]), .leds(HEX1));
    
endmodule