module emptyBoard (
    output logic [15:0][15:0] GrnPixels
);

    assign GrnPixels[00] = 16'b1111111111111111;
    assign GrnPixels[01] = 16'b1000010000100001;
    assign GrnPixels[02] = 16'b1000010000100001;
    assign GrnPixels[03] = 16'b1000010000100001;
    assign GrnPixels[04] = 16'b1000010000100001;
    assign GrnPixels[05] = 16'b1111111111111111;
    assign GrnPixels[06] = 16'b1000010000100001;
    assign GrnPixels[07] = 16'b1000010000100001;
    assign GrnPixels[08] = 16'b1000010000100001;
    assign GrnPixels[09] = 16'b1000010000100001;
    assign GrnPixels[10] = 16'b1111111111111111;
    assign GrnPixels[11] = 16'b1000010000100001;
    assign GrnPixels[12] = 16'b1000010000100001;
    assign GrnPixels[13] = 16'b1000010000100001;
    assign GrnPixels[14] = 16'b1000010000100001;
    assign GrnPixels[15] = 16'b1111111111111111;

endmodule