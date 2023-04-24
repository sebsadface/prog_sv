module lab3 (
    input logic [9:0] SW,
    output logic [9:0] LEDR
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

endmodule