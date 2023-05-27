module victory (
	input clk, reset,
	input logic [8:0][1:0] currentGame,
	output logic [6:0] ledsX, ledsO
);

	logic [2:0] countsX, countsO;
	logic countX, countO;
	logic signleX, singleO;

	always_ff @(posedge clk) begin
		if (countsX[0] & countsX[1] & countsX[2]) countX = 1'b0;
		else countX = ((currentGame[4][0] & ((currentGame[3][0] & currentGame[5][0]) |
		                                     (currentGame[0][0] & currentGame[8][0]) |
											 (currentGame[1][0] & currentGame[7][0]) |
										     (currentGame[2][0] & currentGame[6][0]))) |
					   (currentGame[0][0] & ((currentGame[1][0] & currentGame[2][0]) |
											 (currentGame[3][0] & currentGame[6][0]))) |
					   (currentGame[8][0] & ((currentGame[7][0] & currentGame[6][0]) |
											 (currentGame[5][0] & currentGame[2][0]))));

		if (countsO[0] & countsO[1] & countsO[2]) countO = 1'b0;
		else countO = ((currentGame[4][1] & ((currentGame[3][1] & currentGame[5][1]) |
		                                     (currentGame[0][1] & currentGame[8][1]) |
											 (currentGame[1][1] & currentGame[7][1]) |
										     (currentGame[2][1] & currentGame[6][1]))) |
					   (currentGame[0][1] & ((currentGame[1][1] & currentGame[2][1]) |
											 (currentGame[3][1] & currentGame[6][1]))) |
					   (currentGame[8][1] & ((currentGame[7][1] & currentGame[6][1]) |
											 (currentGame[5][1] & currentGame[2][1]))));
 	end

  edge_detector edgeX (.clk, .reset, .in(countX), .out(singleX));
  edge_detector edgeO (.clk, .reset, .in(countO), .out(singleO));
  
  counter X (.clk, .reset, .count(singleX), .out(countsX));
  counter O (.clk, .reset, .count(singleO), .out(countsO));

  seg7 segX (.bcd(countsX), .leds(ledsX));
  seg7 segO (.bcd(countsO), .leds(ledsO));

endmodule
