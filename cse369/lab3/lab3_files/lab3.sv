module lab3 (
    input logic [3:0] SW,
    output logic [1:0] LEDR
    );

    logic U, P, C, M, DISCOUNTED, STOLEN;

    assign U = SW[0];
    assign P = SW[1];
    assign C = SW[2];
    assign M = SW[3];
    assign DISCOUNTED = P | (C & U);
    assign STOLEN = ~(U | M | C) | (U & ~(P | M));
    assign LEDR[0] = DISCOUNTED;
    assign LEDR[1] = STOLEN;

endmodule