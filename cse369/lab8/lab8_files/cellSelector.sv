module cellSelector (
	input logic clk, reset, next,
	output logic [15:0][15:0] GrnPixels,
	output logic [15:0][15:0] RedPixels,
	output logic [3:0] selectedCell
);
	
	enum logic [3:0] {C0 = 4'b0000, C1 = 4'b0001, C2 = 4'b0010,
					  C3 = 4'b0011, C4 = 4'b0100, C5 = 4'b0101,
					  C6 = 4'b0110, C7 = 4'b0111, C8 = 4'b1000} ps, ns;
	
	always_comb 
		case (ps)
			C0: if (next)  ns = C1;
			    else       ns = C0;
			C1: if (next)  ns = C2; 
			    else       ns = C1;
			C2: if (next)  ns = C3; 
			    else       ns = C2;
			C3: if (next)  ns = C4;
			    else       ns = C3;
			C4: if (next)  ns = C5; 
			    else       ns = C4;
			C5: if (next)  ns = C6; 
			    else       ns = C5;
			C6: if (next)  ns = C7; 
			    else       ns = C6;
			C7: if (next)  ns = C8;
			    else       ns = C7;
			C8: if (next)  ns = C0; 
			    else       ns = C8;
			default: ns = ps;
		endcase
		
	always_comb 
		case (ps)
			C0: begin
					GrnPixels[00] = 16'b1111111111111111;
					GrnPixels[01] = 16'b1000010000100001;
					GrnPixels[02] = 16'b1000010000100001;
					GrnPixels[03] = 16'b1000010000100001;
					GrnPixels[04] = 16'b1000010000100001;
					GrnPixels[05] = 16'b1111111111111111;
					GrnPixels[06] = 16'b1000010000100001;
					GrnPixels[07] = 16'b1000010000100001;
					GrnPixels[08] = 16'b1000010000100001;
					GrnPixels[09] = 16'b1000010000100001;
					GrnPixels[10] = 16'b1111111111111111;
					GrnPixels[11] = 16'b1000010000100001;
					GrnPixels[12] = 16'b1000010000100001;
					GrnPixels[13] = 16'b1000010000100001;
					GrnPixels[14] = 16'b1000010000100001;
					GrnPixels[15] = 16'b1111111111111111;

					RedPixels[00] = 16'b1111110000000000;
					RedPixels[01] = 16'b1000010000000000;
					RedPixels[02] = 16'b1000010000000000;
					RedPixels[03] = 16'b1000010000000000;
					RedPixels[04] = 16'b1000010000000000;
					RedPixels[05] = 16'b1111110000000000;
					RedPixels[06] = 16'b0000000000000000;
					RedPixels[07] = 16'b0000000000000000;
					RedPixels[08] = 16'b0000000000000000;
					RedPixels[09] = 16'b0000000000000000;
					RedPixels[10] = 16'b0000000000000000;
					RedPixels[11] = 16'b0000000000000000;
					RedPixels[12] = 16'b0000000000000000;
					RedPixels[13] = 16'b0000000000000000;
					RedPixels[14] = 16'b0000000000000000;
					RedPixels[15] = 16'b0000000000000000;				
				end

			C1: begin
					RedPixels[00] = 16'b0000111111000000;
					RedPixels[01] = 16'b0000100001000000;
					RedPixels[02] = 16'b0000100001000000;
					RedPixels[03] = 16'b0000100001000000;
					RedPixels[04] = 16'b0000100001000000;
					RedPixels[05] = 16'b0000111111000000;
				end

			C2: begin
					RedPixels[00] = 16'b0000000000111111;
					RedPixels[01] = 16'b0000000000100001;
					RedPixels[02] = 16'b0000000000100001;
					RedPixels[03] = 16'b0000000000100001;
					RedPixels[04] = 16'b0000000000100001;
					RedPixels[05] = 16'b0000000000111111;
				end

			C3: begin
					RedPixels[00] = 16'b0000000000000000;
					RedPixels[01] = 16'b0000000000000000;
					RedPixels[02] = 16'b0000000000000000;
					RedPixels[03] = 16'b0000000000000000;
					RedPixels[04] = 16'b0000000000000000;
					RedPixels[05] = 16'b1111110000000000;
					RedPixels[06] = 16'b1000010000000000;
					RedPixels[07] = 16'b1000010000000000;
					RedPixels[08] = 16'b1000010000000000;
					RedPixels[09] = 16'b1000010000000000;
					RedPixels[10] = 16'b1111110000000000;
				end

			C4: begin
					RedPixels[05] = 16'b0000111111000000;
					RedPixels[06] = 16'b0000100001000000;
					RedPixels[07] = 16'b0000100001000000;
					RedPixels[08] = 16'b0000100001000000;
					RedPixels[09] = 16'b0000100001000000;
					RedPixels[10] = 16'b0000111111000000;
				end

			C5: begin
					RedPixels[05] = 16'b0000000000111111;
					RedPixels[06] = 16'b0000000000100001;
					RedPixels[07] = 16'b0000000000100001;
					RedPixels[08] = 16'b0000000000100001;
					RedPixels[09] = 16'b0000000000100001;
					RedPixels[10] = 16'b0000000000111111;
				end

			C6: begin
					RedPixels[05] = 16'b0000000000000000;
					RedPixels[06] = 16'b0000000000000000;
					RedPixels[07] = 16'b0000000000000000;
					RedPixels[08] = 16'b0000000000000000;
					RedPixels[09] = 16'b0000000000000000;
					RedPixels[10] = 16'b1111110000000000;
					RedPixels[11] = 16'b1000010000000000;
					RedPixels[12] = 16'b1000010000000000;
					RedPixels[13] = 16'b1000010000000000;
					RedPixels[14] = 16'b1000010000000000;
					RedPixels[15] = 16'b1111110000000000;
				end

			C7: begin
					RedPixels[10] = 16'b0000111111000000;
					RedPixels[11] = 16'b0000100001000000;
					RedPixels[12] = 16'b0000100001000000;
					RedPixels[13] = 16'b0000100001000000;
					RedPixels[14] = 16'b0000100001000000;
					RedPixels[15] = 16'b0000111111000000;
				end

			C8: begin
					RedPixels[10] = 16'b0000000000111111;
					RedPixels[11] = 16'b0000000000100001;
					RedPixels[12] = 16'b0000000000100001;
					RedPixels[13] = 16'b0000000000100001;
					RedPixels[14] = 16'b0000000000100001;
					RedPixels[15] = 16'b0000000000111111;
				end

			default: begin 
					 	RedPixels = '0;
						GrnPixels[00] = 16'b1111111111111111;
						GrnPixels[01] = 16'b1000010000100001;
						GrnPixels[02] = 16'b1000010000100001;
						GrnPixels[03] = 16'b1000010000100001;
						GrnPixels[04] = 16'b1000010000100001;
						GrnPixels[05] = 16'b1111111111111111;
						GrnPixels[06] = 16'b1000010000100001;
						GrnPixels[07] = 16'b1000010000100001;
						GrnPixels[08] = 16'b1000010000100001;
						GrnPixels[09] = 16'b1000010000100001;
						GrnPixels[10] = 16'b1111111111111111;
						GrnPixels[11] = 16'b1000010000100001;
						GrnPixels[12] = 16'b1000010000100001;
						GrnPixels[13] = 16'b1000010000100001;
						GrnPixels[14] = 16'b1000010000100001;
						GrnPixels[15] = 16'b1111111111111111;
					 end
		endcase
	
	assign selectedCell = ps;
	
	always_ff @(posedge clock)
		if (reset) begin
			ps <= C0;		
			end
		else
			ps <= ns;

endmodule // cellSelector