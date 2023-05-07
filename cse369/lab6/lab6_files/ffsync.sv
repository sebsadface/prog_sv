module ffsync (
    input logic clk
    input logic d,
    output logic q
);
    logic stage1

    always_ff @(posedge CLOCK_50) begin
        stage1 <= d;
    end

    always_ff @(posedge CLOCK_50) begin
        q <= stage1
    end

endmodule // ffsync