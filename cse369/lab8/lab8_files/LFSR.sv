module LFSR (
    input logic clk, reset,
    output logic [8:0] Q
);

always_ff @(posedge clk) begin
    if (reset) begin
        Q <= 9'b000000000;
    end
    else begin
        Q[8] <= Q[7];
        Q[7] <= Q[6];
        Q[6] <= Q[5];
        Q[5] <= Q[4];
        Q[4] <= Q[3];
        Q[3] <= Q[2];
        Q[2] <= Q[1];
        Q[1] <= Q[0];
        Q[0] <= ~(Q[4] ^ Q[8]);
    end
end 

endmodule // LFSR