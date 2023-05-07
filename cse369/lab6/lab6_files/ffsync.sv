module ffsync (
    input logic clk,
    input logic d,
    output logic q
);
    logic stage1;

    always_ff @(posedge clk) begin
        stage1 <= d;
    end

    always_ff @(posedge clk) begin
        q <= stage1;
    end

endmodule // ffsync