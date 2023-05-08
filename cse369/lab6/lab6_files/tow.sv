module tow (
  input  logic       clk,  // 50MHz clock
  output logic [6:0] HEX0,
  output logic [9:0] LEDR,
  input  logic [3:0] KEY,     // True when not pressed, False when pressed
  input  logic [9:0] SW
  );

    logic reset, L, R;

    assign reset = SW[9];
    user_input_handler player1 (.clk(clk), .reset(reset), .in(~KEY[0]), .out(R));
    user_input_handler player2 (.clk(clk), .reset(reset), .in(~KEY[3]), .out(L));

    playfield pf (.clk(clk), .reset(reset), .L(L), .R(R), .led(LEDR[9:1]));

    victory vic (.clk(clk), .reset(reset), .ledr1(LEDR[1]), .ledr9(LEDR[9]), .L(L), .R(R), .leds(HEX0));

endmodule