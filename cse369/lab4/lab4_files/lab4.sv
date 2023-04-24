module lab4 (
    output logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5,
    input logic [9:0] SW
);

logic [3:0] SW0, SW1;

assign SW0 =  ~SW[3:0];
assign SW1 = ~SW[7:4];

seg7 H0 (.bcd(SW0), .leds(HEX0));

seg7 H1 (.bcd(SW1), .leds(HEX1));
    
endmodule