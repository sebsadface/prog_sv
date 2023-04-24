module lab4 (
    output logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5,
    input logic [9:0] SW
);

seg7 H0 (.bcd(~SW), .leds(HEX0));

seg7 H1 (.bcd(~SW), .leds(HEX1));
    
endmodule