module playfield (
    input logic clk, reset,
    input logic L, R,
    output logic [8:0] led,
    );
    
    normalLight ledr1 (.clk, .reset, .L, .R, .NL(led[1]), .NR(1'b0), .lightOn(led[0]));
    normalLight ledr2 (.clk, .reset, .L, .R, .NL(led[2]), .NR(led[0]), .lightOn(led[1]));
    normalLight ledr3 (.clk, .reset, .L, .R, .NL(led[3]), .NR(led[1]), .lightOn(led[2]));
    normalLight ledr4 (.clk, .reset, .L, .R, .NL(led[4]), .NR(led[2]), .lightOn(led[3]));
    centerLight ledr5 (.clk, .reset, .L, .R, .NL(led[5]), .NR(led[3]), .lightOn(led[4]));
    normalLight ledr6 (.clk, .reset, .L, .R, .NL(led[6]), .NR(led[4]), .lightOn(led[5]));
    normalLight ledr7 (.clk, .reset, .L, .R, .NL(led[7]), .NR(led[5]), .lightOn(led[6]));
    normalLight ledr8 (.clk, .reset, .L, .R, .NL(led[8]), .NR(led[6]), .lightOn(led[7]));
    normalLight ledr9 (.clk, .reset, .L, .R, .NL(1'b0), .NR(led[7]), .lightOn(led[8]));

endmodule