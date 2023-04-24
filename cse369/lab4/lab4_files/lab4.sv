module lab4 (
    input logic [9:0] SW,
    output logic [9:0] LEDR,
    output logic [6:0] HEX0, HEX1, HEX3, HEX4, HEX5
    );

    logic U, P, C, M, DISCOUNTED, STOLEN;

    assign U = SW[3];
    assign P = SW[2];
    assign C = SW[1];
    assign M = SW[0];
    assign DISCOUNTED = P | (C & U);
    assign STOLEN = ~(U | M | C) | (U & ~(P | M));
    assign LEDR[1] = DISCOUNTED;
    assign LEDR[0] = STOLEN;
    pawn SAFE (.upc(SW[3:1]), .leds0(HEX0), .leds1(HEX1), .leds2(HEX2), .leds3(HEX3), .leds4(HEX4), .leds5(HEX5));

endmodule