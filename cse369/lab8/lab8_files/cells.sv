module cells(
	input logic clk, reset, select, currentPlayer, currentCell, thisCell,  
	output logic [1:0] cellInfo
);

	enum logic [1:0] {empty = 2'b00, X = 2'b01, O = 2'b10} ps, ns;

	always_comb
		case(ps)
			empty: if (currentPlayer & select & (thisCell == currentCell))       ns = O;
				   else if (~currentPlayer & select & (thisCell == currentCell)) ns = X;
				   else 							                             ns = empty;
			O:  								                                 ns = O;
			X:                                                                   ns = X;
			default:                                                             ns = ps;
		endcase
		
		assign cellInfo[0] = (ps == X);
		assign cellInfo[1] = (ps == O);
	
	always_ff @(posedge clk)
		if (reset)
			ps <= empty;
		else 
			ps <= ns;
endmodule