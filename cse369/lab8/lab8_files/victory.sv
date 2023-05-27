module victory (
	input clk, reset,
	input logic [8:0][1:0] currentGame,
	output logic [6:0] ledsX, ledsO
);

	logic [2:0] countsX, countsO;
	logic countX, countO;

	always_ff @(posedge clk) begin
		if (countsX[0] & countsX[1] & countsX[2]) countX = 1'b0;
		else                             countX = (ledr1 & R);

		if (countsO[0] & countsO[1] & countsO[2]) countO = 1'b0;
		else                             countX = (ledr9 & L);
 	end

endmodule
