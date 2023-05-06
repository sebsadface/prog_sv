module ffsync (
    input logic CLOCK_50,
    input logic [2:0] d,
    output logic [2:0] q
);
    logic [2:0] stage1

    always_ff @(posedge CLOCK_50) begin
        stage1 <= d;
    end

    always_ff @(posedge CLOCK_50) begin
        q <= stage1
    end

endmodule // ffsync