module tow #(
  parameter whichClock = 15
  )
  (
  input  logic       CLOCK_50,  // 50MHz clock
  output logic [6:0] HEX0, HEX5,
  output logic [9:0] LEDR,
  input  logic [3:0] KEY,     // True when not pressed, False when pressed
  input  logic [9:0] SW
  );

    logic mainreset, autoreset, L, R;

    // Generate clk off of CLOCK_50, whichClock picks rate.
    logic [31:0] clk;
    clock_divider cdiv (.clock(CLOCK_50), .divided_clocks(clk));


    assign mainreset = SW[9];
    user_input_handler player1 (.clk(clk[whichClock]), .reset(mainreset), .in(~KEY[0]), .out(R));
    cyber cyberplayer (.clk(clk[whichClock]), .reset(mainreset), .ubv(SW[8:0]), .press(L));

    assign autoreset = ((LEDR[9] & L) | (LEDR[1] & R) | mainreset);
    playfield pf (.clk(clk[whichClock]), .reset(autoreset), .L(L), .R(R), .led(LEDR[9:1]));

    victory vic (.clk(clk[whichClock]), .reset(mainreset), .ledr1(LEDR[1]), .ledr9(LEDR[9]), .L(L), .R(R), .ledsR(HEX0), .ledsL(HEX5));

endmodule