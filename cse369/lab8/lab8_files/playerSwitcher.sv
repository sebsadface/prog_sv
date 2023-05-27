module playerSwitcher (
	input logic clk, reset, select,
	input logic [8:0][1:0] currentGame,
	input logic [3:0] currentCell,
	output logic currentPlayer
);
	
	enum logic {playerX = 1'b0, playerO = 1'b1} thisPlayer, nextPlayer; 
	
	always_comb
		case (thisPlayer)
			playerX: if (select) begin
						case(currentCell) 
							4'b0000: if (currentGame[0] == 2'b00) nextPlayer = playerO;
									 else nextPlayer = playerX;
							4'b0001: if (currentGame[1] == 2'b00) nextPlayer = playerO;
									 else nextPlayer = playerX;
							4'b0010: if (currentGame[2] == 2'b00) nextPlayer = playerO;
									 else nextPlayer = playerX;
							4'b0011: if (currentGame[3] == 2'b00) nextPlayer = playerO;
									 else nextPlayer = playerX;
							4'b0100: if (currentGame[4] == 2'b00) nextPlayer = playerO;
									 else nextPlayer = playerX;
							4'b0101: if (currentGame[5] == 2'b00) nextPlayer = playerO;
									 else nextPlayer = playerX;
							4'b0110: if (currentGame[6] == 2'b00) nextPlayer = playerO;
									 else nextPlayer = playerX;
							4'b0111: if (currentGame[7] == 2'b00) nextPlayer = playerO;
									 else nextPlayer = playerX;
							4'b1000: if (currentGame[8] == 2'b00) nextPlayer = playerO;
									 else nextPlayer = playerX;
							default: nextPlayer = playerX;
						endcase
					end
			        else 		 nextPlayer = playerX;
			playerO: if (select) begin
						case(currentCell) 
							4'b0000: if (currentGame[0] == 2'b00) nextPlayer = playerX;
									 else nextPlayer = playerO;
							4'b0001: if (currentGame[1] == 2'b00) nextPlayer = playerX;
									 else nextPlayer = playerO;
							4'b0010: if (currentGame[2] == 2'b00) nextPlayer = playerX;
									 else nextPlayer = playerO;
							4'b0011: if (currentGame[3] == 2'b00) nextPlayer = playerX;
									 else nextPlayer = playerO;
							4'b0100: if (currentGame[4] == 2'b00) nextPlayer = playerX;
									 else nextPlayer = playerO;
							4'b0101: if (currentGame[5] == 2'b00) nextPlayer = playerX;
									 else nextPlayer = playerO;
							4'b0110: if (currentGame[6] == 2'b00) nextPlayer = playerX;
									 else nextPlayer = playerO;
							4'b0111: if (currentGame[7] == 2'b00) nextPlayer = playerX;
									 else nextPlayer = playerO;
							4'b1000: if (currentGame[8] == 2'b00) nextPlayer = playerX;
									 else nextPlayer = playerO;
							default: nextPlayer = playerO;
						endcase
					end
					 else        nextPlayer = playerO;
			default: nextPlayer = thisPlayer;
		endcase
		
	assign currentPlayer = thisPlayer;
	
	always_ff @(posedge clk)
		if (reset)
			thisPlayer <= playerX;
		else
			thisPlayer <= nextPlayer;

endmodule
