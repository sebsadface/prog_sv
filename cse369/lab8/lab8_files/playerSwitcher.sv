module playerSwitcher (
	input logic clk, reset, select,
	output logic currentPlayer
);
	
	enum logic {playerX = 1'b0, playerO = 1'b1} thisPlayer, nextPlayer; 
	
	always_comb
		case (thisPlayer)
			playerX: if (select) nextPlayer = playerO; 
			         else 		 nextPlayer = playerX;
			playerO: if (select) nextPlayer = playerX; 
					 else        nextPlayer = playerO;
			default: nextPlayer = thisPlayer;
		endcase
		
	assign currentPlayer = thisPlayer;
	
	always_ff @(posedge clock)
		if (reset)
			thisPlayer <= playerX;
		else
			thisPlayer <= nextPlayer;
endmodule
