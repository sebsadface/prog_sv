module lab4 (
    output logic [6:0] HEX0, HEX1,
    input logic [7:0] SW
);

logic [3:0] SW0, SW1;
logic [6:0] HX0, HX1;

assign SW0 = SW[3:0];
assign SW1 = SW[7:4];

seg7 H0 (.bcd(SW0), .leds(HX0));
seg7 H1 (.bcd(SW1), .leds(HX1));

not NHX0 (HEX0, HX0);
not NHX1 (HEX1, HX1);   

endmodule