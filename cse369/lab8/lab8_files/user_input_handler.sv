module user_input_handler(
    input logic clk, reset,
    input logic in,
    output logic out
);

    logic syncIn;
    ffsync sync (.clk, .d(in), .q(syncIn));
    edge_detector detect (.clk, .reset, .in(syncIn), .out);

endmodule // user_input_handler