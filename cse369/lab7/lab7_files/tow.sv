module tow (
  input  logic       CLOCK_50,  // 50MHz clock
  output logic [6:0] HEX0, HEX5,
  output logic [9:0] LEDR,
  input  logic [3:0] KEY,     // True when not pressed, False when pressed
  input  logic [9:0] SW
  );

    logic mainreset, autoreset, L, R;

    assign mainreset = SW[9];
    user_input_handler player1 (.clk(CLOCK_50), .reset(mainreset), .in(~KEY[0]), .out(R));
    user_input_handler player2 (.clk(CLOCK_50), .reset(mainreset), .in(~KEY[3]), .out(L));

    assign autoreset = ((LEDR[9] & L) | (LEDR[1] & R) | mainreset);
    playfield pf (.clk(CLOCK_50), .reset(autoreset), .L(L), .R(R), .led(LEDR[9:1]));

    victory vic (.clk(CLOCK_50), .reset(mainreset), .ledr1(LEDR[1]), .ledr9(LEDR[9]), .L(L), .R(R), .ledsR(HEX0), .ledsL(HEX5));

endmodule