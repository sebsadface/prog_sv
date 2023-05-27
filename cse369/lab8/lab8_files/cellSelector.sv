module cellSelector(
	input logic clk, reset, 
	input logic [3:0] currentCell,
	input logic [8:0][1:0] currentGame,
	input logic [15:0][15:0] RedIntermediate,
	output logic [15:0][15:0] RedPixels
);
	
	always_comb begin
		if (reset) RedPixels = RedIntermediate;
		else begin
			case (currentCell)
				4'b0000: begin
					case (currentGame[0])
						2'b00: begin
							RedPixels[00] = RedIntermediate[00] | 16'b0000000000000000;
							RedPixels[01] = RedIntermediate[01] | 16'b0000000000000000;
							RedPixels[02] = RedIntermediate[02] | 16'b0000000000000000;
							RedPixels[03] = RedIntermediate[03] | 16'b0000000000000000;
							RedPixels[04] = RedIntermediate[04] | 16'b0000000000000000;
							RedPixels[05] = RedIntermediate[05] | 16'b0000000000000000;
						end
						2'b01: begin
							RedPixels[00] = RedIntermediate[00] | 16'b0000000000000000;
							RedPixels[01] = RedIntermediate[01] | 16'b0100100000000000;
							RedPixels[02] = RedIntermediate[02] | 16'b0011000000000000;
							RedPixels[03] = RedIntermediate[03] | 16'b0011000000000000;
							RedPixels[04] = RedIntermediate[04] | 16'b0100100000000000;
							RedPixels[05] = RedIntermediate[05] | 16'b0000000000000000;
						end
						2'b10: begin
							RedPixels[00] = RedIntermediate[00] | 16'b0000000000000000;
							RedPixels[01] = RedIntermediate[01] | 16'b0011000000000000;
							RedPixels[02] = RedIntermediate[02] | 16'b0100100000000000;
							RedPixels[03] = RedIntermediate[03] | 16'b0100100000000000;
							RedPixels[04] = RedIntermediate[04] | 16'b0011000000000000;
							RedPixels[05] = RedIntermediate[05] | 16'b0000000000000000;
						end
						default: begin
							RedPixels[00] = RedIntermediate[00] | 16'b0000000000000000;
							RedPixels[01] = RedIntermediate[01] | 16'b0000000000000000;
							RedPixels[02] = RedIntermediate[02] | 16'b0000000000000000;
							RedPixels[03] = RedIntermediate[03] | 16'b0000000000000000;
							RedPixels[04] = RedIntermediate[04] | 16'b0000000000000000;
							RedPixels[05] = RedIntermediate[05] | 16'b0000000000000000;
						end
					endcase
				end
				4'b0001: begin
					case (currentGame[1])
						2'b00: begin
							RedPixels[00] = RedIntermediate[00] | 16'b0000000000000000;
							RedPixels[01] = RedIntermediate[01] | 16'b0000000000000000;
							RedPixels[02] = RedIntermediate[02] | 16'b0000000000000000;
							RedPixels[03] = RedIntermediate[03] | 16'b0000000000000000;
							RedPixels[04] = RedIntermediate[04] | 16'b0000000000000000;
							RedPixels[05] = RedIntermediate[05] | 16'b0000000000000000;
						end
						2'b01: begin
							RedPixels[00] = RedIntermediate[00] | 16'b0000000000000000;
							RedPixels[01] = RedIntermediate[01] | 16'b0000001001000000;
							RedPixels[02] = RedIntermediate[02] | 16'b0000000110000000;
							RedPixels[03] = RedIntermediate[03] | 16'b0000000110000000;
							RedPixels[04] = RedIntermediate[04] | 16'b0000001001000000;
							RedPixels[05] = RedIntermediate[05] | 16'b0000000000000000;
						end
						2'b10: begin
							RedPixels[00] = RedIntermediate[00] | 16'b0000000000000000;
							RedPixels[01] = RedIntermediate[01] | 16'b0000000110000000;
							RedPixels[02] = RedIntermediate[02] | 16'b0000001001000000;
							RedPixels[03] = RedIntermediate[03] | 16'b0000001001000000;
							RedPixels[04] = RedIntermediate[04] | 16'b0000000110000000;
							RedPixels[05] = RedIntermediate[05] | 16'b0000000000000000;
						end
						default: begin
							RedPixels[00] = RedIntermediate[00] | 16'b0000000000000000;
							RedPixels[01] = RedIntermediate[01] | 16'b0000000000000000;
							RedPixels[02] = RedIntermediate[02] | 16'b0000000000000000;
							RedPixels[03] = RedIntermediate[03] | 16'b0000000000000000;
							RedPixels[04] = RedIntermediate[04] | 16'b0000000000000000;
							RedPixels[05] = RedIntermediate[05] | 16'b0000000000000000;
						end
					endcase
				end
				4'b0010: begin
					case (currentGame[2])
						2'b00: begin
							RedPixels[00] = RedIntermediate[00] | 16'b0000000000000000;
							RedPixels[01] = RedIntermediate[01] | 16'b0000000000000000;
							RedPixels[02] = RedIntermediate[02] | 16'b0000000000000000;
							RedPixels[03] = RedIntermediate[03] | 16'b0000000000000000;
							RedPixels[04] = RedIntermediate[04] | 16'b0000000000000000;
							RedPixels[05] = RedIntermediate[05] | 16'b0000000000000000;
						end
						2'b01: begin
							RedPixels[00] = RedIntermediate[00] | 16'b0000000000000000;
							RedPixels[01] = RedIntermediate[01] | 16'b0000000000010010;
							RedPixels[02] = RedIntermediate[02] | 16'b0000000000001100;
							RedPixels[03] = RedIntermediate[03] | 16'b0000000000001100;
							RedPixels[04] = RedIntermediate[04] | 16'b0000000000010010;
							RedPixels[05] = RedIntermediate[05] | 16'b0000000000000000;
						end
						2'b10: begin
							RedPixels[00] = RedIntermediate[00] | 16'b0000000000000000;
							RedPixels[01] = RedIntermediate[01] | 16'b0000000000001100;
							RedPixels[02] = RedIntermediate[02] | 16'b0000000000010010;
							RedPixels[03] = RedIntermediate[03] | 16'b0000000000010010;
							RedPixels[04] = RedIntermediate[04] | 16'b0000000000001100;
							RedPixels[05] = RedIntermediate[05] | 16'b0000000000000000;
						end
						default: begin
							RedPixels[00] = RedIntermediate[00] | 16'b0000000000000000;
							RedPixels[01] = RedIntermediate[01] | 16'b0000000000000000;
							RedPixels[02] = RedIntermediate[02] | 16'b0000000000000000;
							RedPixels[03] = RedIntermediate[03] | 16'b0000000000000000;
							RedPixels[04] = RedIntermediate[04] | 16'b0000000000000000;
							RedPixels[05] = RedIntermediate[05] | 16'b0000000000000000;
						end
					endcase
				end
				4'b0011: begin
					case (currentGame[3])
						2'b00: begin
							RedPixels[06] = RedIntermediate[06] | 16'b0000000000000000;
							RedPixels[07] = RedIntermediate[07] | 16'b0000000000000000;
							RedPixels[08] = RedIntermediate[08] | 16'b0000000000000000;
							RedPixels[09] = RedIntermediate[09] | 16'b0000000000000000;
							RedPixels[10] = RedIntermediate[10] | 16'b0000000000000000;
						end
						2'b01: begin
							RedPixels[06] = RedIntermediate[06] | 16'b0100100000000000;
							RedPixels[07] = RedIntermediate[07] | 16'b0011000000000000;
							RedPixels[08] = RedIntermediate[08] | 16'b0011000000000000;
							RedPixels[09] = RedIntermediate[09] | 16'b0100100000000000;
							RedPixels[10] = RedIntermediate[10] | 16'b0000000000000000;
						end
						2'b10: begin
							RedPixels[06] = RedIntermediate[06] | 16'b0011000000000000;
							RedPixels[07] = RedIntermediate[07] | 16'b0100100000000000;
							RedPixels[08] = RedIntermediate[08] | 16'b0100100000000000;
							RedPixels[09] = RedIntermediate[09] | 16'b0011000000000000;
							RedPixels[10] = RedIntermediate[10] | 16'b0000000000000000;
						end
						default: begin
							RedPixels[06] = RedIntermediate[06] | 16'b0000000000000000;
							RedPixels[07] = RedIntermediate[07] | 16'b0000000000000000;
							RedPixels[08] = RedIntermediate[08] | 16'b0000000000000000;
							RedPixels[09] = RedIntermediate[09] | 16'b0000000000000000;
							RedPixels[10] = RedIntermediate[10] | 16'b0000000000000000;
						end
					endcase
				end
				4'b0100: begin
					case (currentGame[4])
						2'b00: begin
							RedPixels[06] = RedIntermediate[06] | 16'b0000000000000000;
							RedPixels[07] = RedIntermediate[07] | 16'b0000000000000000;
							RedPixels[08] = RedIntermediate[08] | 16'b0000000000000000;
							RedPixels[09] = RedIntermediate[09] | 16'b0000000000000000;
							RedPixels[10] = RedIntermediate[10] | 16'b0000000000000000;
						end
						2'b01: begin
							RedPixels[06] = RedIntermediate[06] | 16'b0000001001000000;
							RedPixels[07] = RedIntermediate[07] | 16'b0000000110000000;
							RedPixels[08] = RedIntermediate[08] | 16'b0000000110000000;
							RedPixels[09] = RedIntermediate[09] | 16'b0000001001000000;
							RedPixels[10] = RedIntermediate[10] | 16'b0000000000000000;
						end
						2'b10: begin
							RedPixels[06] = RedIntermediate[06] | 16'b0000000110000000;
							RedPixels[07] = RedIntermediate[07] | 16'b0000001001000000;
							RedPixels[08] = RedIntermediate[08] | 16'b0000001001000000;
							RedPixels[09] = RedIntermediate[09] | 16'b0000000110000000;
							RedPixels[10] = RedIntermediate[10] | 16'b0000000000000000;
						end
						default: begin
							RedPixels[06] = RedIntermediate[06] | 16'b0000000000000000;
							RedPixels[07] = RedIntermediate[07] | 16'b0000000000000000;
							RedPixels[08] = RedIntermediate[08] | 16'b0000000000000000;
							RedPixels[09] = RedIntermediate[09] | 16'b0000000000000000;
							RedPixels[10] = RedIntermediate[10] | 16'b0000000000000000;
						end
					endcase
				end
				4'b0101: begin
					case (currentGame[5])
						2'b00: begin
							RedPixels[06] = RedIntermediate[06] | 16'b0000000000000000;
							RedPixels[07] = RedIntermediate[07] | 16'b0000000000000000;
							RedPixels[08] = RedIntermediate[08] | 16'b0000000000000000;
							RedPixels[09] = RedIntermediate[09] | 16'b0000000000000000;
							RedPixels[10] = RedIntermediate[10] | 16'b0000000000000000;
						end
						2'b01: begin
							RedPixels[06] = RedIntermediate[06] | 16'b0000000000010010;
							RedPixels[07] = RedIntermediate[07] | 16'b0000000000001100;
							RedPixels[08] = RedIntermediate[08] | 16'b0000000000001100;
							RedPixels[09] = RedIntermediate[09] | 16'b0000000000010010;
							RedPixels[10] = RedIntermediate[10] | 16'b0000000000000000;
						end
						2'b10: begin
							RedPixels[06] = RedIntermediate[06] | 16'b0000000000001100;
							RedPixels[07] = RedIntermediate[07] | 16'b0000000000010010;
							RedPixels[08] = RedIntermediate[08] | 16'b0000000000010010;
							RedPixels[09] = RedIntermediate[09] | 16'b0000000000001100;
							RedPixels[10] = RedIntermediate[10] | 16'b0000000000000000;
						end
						default: begin
							RedPixels[06] = RedIntermediate[06] | 16'b0000000000000000;
							RedPixels[07] = RedIntermediate[07] | 16'b0000000000000000;
							RedPixels[08] = RedIntermediate[08] | 16'b0000000000000000;
							RedPixels[09] = RedIntermediate[09] | 16'b0000000000000000;
							RedPixels[10] = RedIntermediate[10] | 16'b0000000000000000;
						end
					endcase
				end
				4'b0110: begin
					case (currentGame[6])
						2'b00: begin
							RedPixels[11] = RedIntermediate[11] | 16'b0000000000000000;
							RedPixels[12] = RedIntermediate[12] | 16'b0000000000000000;
							RedPixels[13] = RedIntermediate[13] | 16'b0000000000000000;
							RedPixels[14] = RedIntermediate[14] | 16'b0000000000000000;
							RedPixels[15] = RedIntermediate[15] | 16'b0000000000000000;
						end
						2'b01: begin
							RedPixels[11] = RedIntermediate[11] | 16'b0100100000000000;
							RedPixels[12] = RedIntermediate[12] | 16'b0011000000000000;
							RedPixels[13] = RedIntermediate[13] | 16'b0011000000000000;
							RedPixels[14] = RedIntermediate[14] | 16'b0100100000000000;
							RedPixels[15] = RedIntermediate[15] | 16'b0000000000000000;
						end
						2'b10: begin
							RedPixels[11] = RedIntermediate[11] | 16'b0011000000000000;
							RedPixels[12] = RedIntermediate[12] | 16'b0100100000000000;
							RedPixels[13] = RedIntermediate[13] | 16'b0100100000000000;
							RedPixels[14] = RedIntermediate[14] | 16'b0011000000000000;
							RedPixels[15] = RedIntermediate[15] | 16'b0000000000000000;
						end
						default: begin
							RedPixels[11] = RedIntermediate[11] | 16'b0000000000000000;
							RedPixels[12] = RedIntermediate[12] | 16'b0000000000000000;
							RedPixels[13] = RedIntermediate[13] | 16'b0000000000000000;
							RedPixels[14] = RedIntermediate[14] | 16'b0000000000000000;
							RedPixels[15] = RedIntermediate[15] | 16'b0000000000000000;
						end
					endcase
				end
				4'b0111: begin
					case (currentGame[7])
						2'b00: begin
							RedPixels[11] = RedIntermediate[11] | 16'b0000000000000000;
							RedPixels[12] = RedIntermediate[12] | 16'b0000000000000000;
							RedPixels[13] = RedIntermediate[13] | 16'b0000000000000000;
							RedPixels[14] = RedIntermediate[14] | 16'b0000000000000000;
							RedPixels[15] = RedIntermediate[15] | 16'b0000000000000000;
						end
						2'b01: begin
							RedPixels[11] = RedIntermediate[11] | 16'b0000001001000000;
							RedPixels[12] = RedIntermediate[12] | 16'b0000000110000000;
							RedPixels[13] = RedIntermediate[13] | 16'b0000000110000000;
							RedPixels[14] = RedIntermediate[14] | 16'b0000001001000000;
							RedPixels[15] = RedIntermediate[15] | 16'b0000000000000000;
						end
						2'b10: begin
							RedPixels[11] = RedIntermediate[11] | 16'b0000000110000000;
							RedPixels[12] = RedIntermediate[12] | 16'b0000001001000000;
							RedPixels[13] = RedIntermediate[13] | 16'b0000001001000000;
							RedPixels[14] = RedIntermediate[14] | 16'b0000000110000000;
						end
						default: begin
							RedPixels[11] = RedIntermediate[11] | 16'b0000000000000000;
							RedPixels[12] = RedIntermediate[12] | 16'b0000000000000000;
							RedPixels[13] = RedIntermediate[13] | 16'b0000000000000000;
							RedPixels[14] = RedIntermediate[14] | 16'b0000000000000000;
							RedPixels[15] = RedIntermediate[15] | 16'b0000000000000000;
						end
					endcase
				end
				4'b1000: begin
					case (currentGame[8])
						2'b00: begin
							RedPixels[11] = RedIntermediate[11] | 16'b0000000000000000;
							RedPixels[12] = RedIntermediate[12] | 16'b0000000000000000;
							RedPixels[13] = RedIntermediate[13] | 16'b0000000000000000;
							RedPixels[14] = RedIntermediate[14] | 16'b0000000000000000;
							RedPixels[15] = RedIntermediate[15] | 16'b0000000000000000;
						end
						2'b01: begin
							RedPixels[11] = RedIntermediate[11] | 16'b0000000000010010;
							RedPixels[12] = RedIntermediate[12] | 16'b0000000000001100;
							RedPixels[13] = RedIntermediate[13] | 16'b0000000000001100;
							RedPixels[14] = RedIntermediate[14] | 16'b0000000000010010;
							RedPixels[15] = RedIntermediate[15] | 16'b0000000000000000;
						end
						2'b10: begin
							RedPixels[11] = RedIntermediate[11] | 16'b0000000000001100;
							RedPixels[12] = RedIntermediate[12] | 16'b0000000000010010;
							RedPixels[13] = RedIntermediate[13] | 16'b0000000000010010;
							RedPixels[14] = RedIntermediate[14] | 16'b0000000000001100;
							RedPixels[15] = RedIntermediate[15] | 16'b0000000000000000;
						end
						default: begin
							RedPixels[11] = RedIntermediate[11] | 16'b0000000000000000;
							RedPixels[12] = RedIntermediate[12] | 16'b0000000000000000;
							RedPixels[13] = RedIntermediate[13] | 16'b0000000000000000;
							RedPixels[14] = RedIntermediate[14] | 16'b0000000000000000;
							RedPixels[15] = RedIntermediate[15] | 16'b0000000000000000;
						end
					endcase
				end
			endcase
		end
	end
endmodule
