module lab4 (
    input logic [9:0] SW,
    output logic [9:0] LEDR,
    output logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5
    );

    lab3 STATUS (.SW(SW), .LEDR(LEDR));
    pawn ITEMS (.upc(SW[3:1]), .leds0(HEX0), .leds1(HEX1), .leds2(HEX2), .leds3(HEX3), .leds4(HEX4), .leds5(HEX5));

endmodule