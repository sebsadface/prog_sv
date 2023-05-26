module cellSwitcher (
	input logic clk, reset, next,
	output logic [15:0][15:0] RedIntermediate,
	output logic [3:0] currentCell
);
	
	enum logic [3:0] {C0 = 4'b0000, C1 = 4'b0001, C2 = 4'b0010,
					  C3 = 4'b0011, C4 = 4'b0100, C5 = 4'b0101,
					  C6 = 4'b0110, C7 = 4'b0111, C8 = 4'b1000} ps, ns;

	always_comb
		case (ps)
			C0: if (next) ns = C1;
				else      ns = C0;
			C1: if (next) ns = C2;
				else      ns = C1;
			C2: if (next) ns = C3;
				else      ns = C2;
			C3: if (next) ns = C4;
				else      ns = C3;
			C4: if (next) ns = C5;
				else      ns = C4;
			C5: if (next) ns = C6;
				else      ns = C5;
			C6: if (next) ns = C7;
				else      ns = C6;
			C7: if (next) ns = C8;
				else      ns = C7;
			C8: if (next) ns = C0;
				else      ns = C8;
			default:	  ns = ps;

		endcase
		
	always_comb 
		case (ps)
			C0: begin
				RedIntermediate[00] = 16'b1111110000000000;
				RedIntermediate[01] = 16'b1000010000000000;
				RedIntermediate[02] = 16'b1000010000000000;
				RedIntermediate[03] = 16'b1000010000000000;
				RedIntermediate[04] = 16'b1000010000000000;
				RedIntermediate[05] = 16'b1111110000000000;
				RedIntermediate[06] = 16'b0000000000000000;
				RedIntermediate[07] = 16'b0000000000000000;
				RedIntermediate[08] = 16'b0000000000000000;
				RedIntermediate[09] = 16'b0000000000000000;
				RedIntermediate[10] = 16'b0000000000000000;
				RedIntermediate[11] = 16'b0000000000000000;
				RedIntermediate[12] = 16'b0000000000000000;
				RedIntermediate[13] = 16'b0000000000000000;
				RedIntermediate[14] = 16'b0000000000000000;
				RedIntermediate[15] = 16'b0000000000000000;			
			end
			C1: begin
				RedIntermediate[00] = 16'b0000011111100000;
				RedIntermediate[01] = 16'b0000010000100000;
				RedIntermediate[02] = 16'b0000010000100000;
				RedIntermediate[03] = 16'b0000010000100000;
				RedIntermediate[04] = 16'b0000010000100000;
				RedIntermediate[05] = 16'b0000011111100000;
				RedIntermediate[06] = 16'b0000000000000000;
				RedIntermediate[07] = 16'b0000000000000000;
				RedIntermediate[08] = 16'b0000000000000000;
				RedIntermediate[09] = 16'b0000000000000000;
				RedIntermediate[10] = 16'b0000000000000000;
				RedIntermediate[11] = 16'b0000000000000000;
				RedIntermediate[12] = 16'b0000000000000000;
				RedIntermediate[13] = 16'b0000000000000000;
				RedIntermediate[14] = 16'b0000000000000000;
				RedIntermediate[15] = 16'b0000000000000000;		
			end
			C2: begin
				RedIntermediate[00] = 16'b0000000000111111;
				RedIntermediate[01] = 16'b0000000000100001;
				RedIntermediate[02] = 16'b0000000000100001;
				RedIntermediate[03] = 16'b0000000000100001;
				RedIntermediate[04] = 16'b0000000000100001;
				RedIntermediate[05] = 16'b0000000000111111;
				RedIntermediate[06] = 16'b0000000000000000;
				RedIntermediate[07] = 16'b0000000000000000;
				RedIntermediate[08] = 16'b0000000000000000;
				RedIntermediate[09] = 16'b0000000000000000;
				RedIntermediate[10] = 16'b0000000000000000;
				RedIntermediate[11] = 16'b0000000000000000;
				RedIntermediate[12] = 16'b0000000000000000;
				RedIntermediate[13] = 16'b0000000000000000;
				RedIntermediate[14] = 16'b0000000000000000;
				RedIntermediate[15] = 16'b0000000000000000;	
			end
			C3: begin
				RedIntermediate[00] = 16'b0000000000000000;
				RedIntermediate[01] = 16'b0000000000000000;
				RedIntermediate[02] = 16'b0000000000000000;
				RedIntermediate[03] = 16'b0000000000000000;
				RedIntermediate[04] = 16'b0000000000000000;
				RedIntermediate[05] = 16'b1111110000000000;
				RedIntermediate[06] = 16'b1000010000000000;
				RedIntermediate[07] = 16'b1000010000000000;
				RedIntermediate[08] = 16'b1000010000000000;
				RedIntermediate[09] = 16'b1000010000000000;
				RedIntermediate[10] = 16'b1111110000000000;
				RedIntermediate[11] = 16'b0000000000000000;
				RedIntermediate[12] = 16'b0000000000000000;
				RedIntermediate[13] = 16'b0000000000000000;
				RedIntermediate[14] = 16'b0000000000000000;
				RedIntermediate[15] = 16'b0000000000000000;
			end
			C4: begin
				RedIntermediate[00] = 16'b0000000000000000;
				RedIntermediate[01] = 16'b0000000000000000;
				RedIntermediate[02] = 16'b0000000000000000;
				RedIntermediate[03] = 16'b0000000000000000;
				RedIntermediate[04] = 16'b0000000000000000;
				RedIntermediate[05] = 16'b0000011111100000;
				RedIntermediate[06] = 16'b0000010000100000;
				RedIntermediate[07] = 16'b0000010000100000;
				RedIntermediate[08] = 16'b0000010000100000;
				RedIntermediate[09] = 16'b0000010000100000;
				RedIntermediate[10] = 16'b0000011111100000;
				RedIntermediate[11] = 16'b0000000000000000;
				RedIntermediate[12] = 16'b0000000000000000;
				RedIntermediate[13] = 16'b0000000000000000;
				RedIntermediate[14] = 16'b0000000000000000;
				RedIntermediate[15] = 16'b0000000000000000;
			end
			C5: begin
				RedIntermediate[00] = 16'b0000000000000000;
				RedIntermediate[01] = 16'b0000000000000000;
				RedIntermediate[02] = 16'b0000000000000000;
				RedIntermediate[03] = 16'b0000000000000000;
				RedIntermediate[04] = 16'b0000000000000000;
				RedIntermediate[05] = 16'b0000000000111111;
				RedIntermediate[06] = 16'b0000000000100001;
				RedIntermediate[07] = 16'b0000000000100001;
				RedIntermediate[08] = 16'b0000000000100001;
				RedIntermediate[09] = 16'b0000000000100001;
				RedIntermediate[10] = 16'b0000000000111111;
				RedIntermediate[11] = 16'b0000000000000000;
				RedIntermediate[12] = 16'b0000000000000000;
				RedIntermediate[13] = 16'b0000000000000000;
				RedIntermediate[14] = 16'b0000000000000000;
				RedIntermediate[15] = 16'b0000000000000000;
			end
			C6: begin
				RedIntermediate[00] = 16'b0000000000000000;
				RedIntermediate[01] = 16'b0000000000000000;
				RedIntermediate[02] = 16'b0000000000000000;
				RedIntermediate[03] = 16'b0000000000000000;
				RedIntermediate[04] = 16'b0000000000000000;
				RedIntermediate[05] = 16'b0000000000000000;
				RedIntermediate[06] = 16'b0000000000000000;
				RedIntermediate[07] = 16'b0000000000000000;
				RedIntermediate[08] = 16'b0000000000000000;
				RedIntermediate[09] = 16'b0000000000000000;
				RedIntermediate[10] = 16'b1111110000000000;
				RedIntermediate[11] = 16'b1000010000000000;
				RedIntermediate[12] = 16'b1000010000000000;
				RedIntermediate[13] = 16'b1000010000000000;
				RedIntermediate[14] = 16'b1000010000000000;
				RedIntermediate[15] = 16'b1111110000000000;
			end
			C7: begin
				RedIntermediate[00] = 16'b0000000000000000;
				RedIntermediate[01] = 16'b0000000000000000;
				RedIntermediate[02] = 16'b0000000000000000;
				RedIntermediate[03] = 16'b0000000000000000;
				RedIntermediate[04] = 16'b0000000000000000;
				RedIntermediate[05] = 16'b0000000000000000;
				RedIntermediate[06] = 16'b0000000000000000;
				RedIntermediate[07] = 16'b0000000000000000;
				RedIntermediate[08] = 16'b0000000000000000;
				RedIntermediate[09] = 16'b0000000000000000;
				RedIntermediate[10] = 16'b0000011111100000;
				RedIntermediate[11] = 16'b0000010000100000;
				RedIntermediate[12] = 16'b0000010000100000;
				RedIntermediate[13] = 16'b0000010000100000;
				RedIntermediate[14] = 16'b0000010000100000;
				RedIntermediate[15] = 16'b0000011111100000;
			end
			C8: begin
				RedIntermediate[00] = 16'b0000000000000000;
				RedIntermediate[01] = 16'b0000000000000000;
				RedIntermediate[02] = 16'b0000000000000000;
				RedIntermediate[03] = 16'b0000000000000000;
				RedIntermediate[04] = 16'b0000000000000000;
				RedIntermediate[05] = 16'b0000000000000000;
				RedIntermediate[06] = 16'b0000000000000000;
				RedIntermediate[07] = 16'b0000000000000000;
				RedIntermediate[08] = 16'b0000000000000000;
				RedIntermediate[09] = 16'b0000000000000000;
				RedIntermediate[10] = 16'b0000000000111111;
				RedIntermediate[11] = 16'b0000000000100001;
				RedIntermediate[12] = 16'b0000000000100001;
				RedIntermediate[13] = 16'b0000000000100001;
				RedIntermediate[14] = 16'b0000000000100001;
				RedIntermediate[15] = 16'b0000000000111111;
			end
			default: begin
				RedIntermediate[00] = 16'b1111110000000000;
				RedIntermediate[01] = 16'b1000010000000000;
				RedIntermediate[02] = 16'b1000010000000000;
				RedIntermediate[03] = 16'b1000010000000000;
				RedIntermediate[04] = 16'b1000010000000000;
				RedIntermediate[05] = 16'b1111110000000000;
				RedIntermediate[06] = 16'b0000000000000000;
				RedIntermediate[07] = 16'b0000000000000000;
				RedIntermediate[08] = 16'b0000000000000000;
				RedIntermediate[09] = 16'b0000000000000000;
				RedIntermediate[10] = 16'b0000000000000000;
				RedIntermediate[11] = 16'b0000000000000000;
				RedIntermediate[12] = 16'b0000000000000000;
				RedIntermediate[13] = 16'b0000000000000000;
				RedIntermediate[14] = 16'b0000000000000000;
				RedIntermediate[15] = 16'b0000000000000000;			
			end
		endcase
	
	assign currentCell = ps;
	
	always_ff @(posedge clk)
		if (reset) begin
			ps <= C0;		
			end
		else
			ps <= ns;

endmodule // cellSwitcher