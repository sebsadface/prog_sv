module cellSelector(
	input logic clk, reset, 
	input logic [3:0] currentCell,
	input logic [8:0][1:0] currentGame,
	input logic [15:0][15:0] RedIntermediate,
	output logic [15:0][15:0] RedPixels
);
	
	always_comb begin
		if (~reset) begin
			case (currentCell)
				4'b0000: begin
					case (currentGame[0])
						2'b00: begin
							RedIntermediate[00] |= 16'b0000000000000000;
							RedIntermediate[01] |= 16'b0000000000000000;
							RedIntermediate[02] |= 16'b0000000000000000;
							RedIntermediate[03] |= 16'b0000000000000000;
							RedIntermediate[04] |= 16'b0000000000000000;
							RedIntermediate[05] |= 16'b0000000000000000;
						end
						2'b01: begin
							RedIntermediate[00] |= 16'b0000000000000000;
							RedIntermediate[01] |= 16'b0100100000000000;
							RedIntermediate[02] |= 16'b0011000000000000;
							RedIntermediate[03] |= 16'b0011000000000000;
							RedIntermediate[04] |= 16'b0100100000000000;
							RedIntermediate[05] |= 16'b0000000000000000;
						end
						2'b10: begin
							RedIntermediate[00] |= 16'b0000000000000000;
							RedIntermediate[01] |= 16'b0011000000000000;
							RedIntermediate[02] |= 16'b0100100000000000;
							RedIntermediate[03] |= 16'b0100100000000000;
							RedIntermediate[04] |= 16'b0011000000000000;
							RedIntermediate[05] |= 16'b0000000000000000;
						end
						default: begin
							RedIntermediate[00] |= 16'b0000000000000000;
							RedIntermediate[01] |= 16'b0000000000000000;
							RedIntermediate[02] |= 16'b0000000000000000;
							RedIntermediate[03] |= 16'b0000000000000000;
							RedIntermediate[04] |= 16'b0000000000000000;
							RedIntermediate[05] |= 16'b0000000000000000;
						end
					endcase
				end
				4'b0001: begin
					case (currentGame[1])
						2'b00: begin
							RedIntermediate[00] |= 16'b0000000000000000;
							RedIntermediate[01] |= 16'b0000000000000000;
							RedIntermediate[02] |= 16'b0000000000000000;
							RedIntermediate[03] |= 16'b0000000000000000;
							RedIntermediate[04] |= 16'b0000000000000000;
							RedIntermediate[05] |= 16'b0000000000000000;
						end
						2'b01: begin
							RedIntermediate[00] |= 16'b0000000000000000;
							RedIntermediate[01] |= 16'b0000001001000000;
							RedIntermediate[02] |= 16'b0000000110000000;
							RedIntermediate[03] |= 16'b0000000110000000;
							RedIntermediate[04] |= 16'b0000001001000000;
							RedIntermediate[05] |= 16'b0000000000000000;
						end
						2'b10: begin
							RedIntermediate[00] |= 16'b0000000000000000;
							RedIntermediate[01] |= 16'b0000000110000000;
							RedIntermediate[02] |= 16'b0000001001000000;
							RedIntermediate[03] |= 16'b0000001001000000;
							RedIntermediate[04] |= 16'b0000000110000000;
							RedIntermediate[05] |= 16'b0000000000000000;
						end
						default: begin
							RedIntermediate[00] |= 16'b0000000000000000;
							RedIntermediate[01] |= 16'b0000000000000000;
							RedIntermediate[02] |= 16'b0000000000000000;
							RedIntermediate[03] |= 16'b0000000000000000;
							RedIntermediate[04] |= 16'b0000000000000000;
							RedIntermediate[05] |= 16'b0000000000000000;
						end
					endcase
				end
				4'b0010: begin
					case (currentGame[2])
						2'b00: begin
							RedIntermediate[00] |= 16'b0000000000000000;
							RedIntermediate[01] |= 16'b0000000000000000;
							RedIntermediate[02] |= 16'b0000000000000000;
							RedIntermediate[03] |= 16'b0000000000000000;
							RedIntermediate[04] |= 16'b0000000000000000;
							RedIntermediate[05] |= 16'b0000000000000000;
						end
						2'b01: begin
							RedIntermediate[00] |= 16'b0000000000000000;
							RedIntermediate[01] |= 16'b0000000000010010;
							RedIntermediate[02] |= 16'b0000000000001100;
							RedIntermediate[03] |= 16'b0000000000001100;
							RedIntermediate[04] |= 16'b0000000000010010;
							RedIntermediate[05] |= 16'b0000000000000000;
						end
						2'b10: begin
							RedIntermediate[00] |= 16'b0000000000000000;
							RedIntermediate[01] |= 16'b0000000000001100;
							RedIntermediate[02] |= 16'b0000000000010010;
							RedIntermediate[03] |= 16'b0000000000010010;
							RedIntermediate[04] |= 16'b0000000000001100;
							RedIntermediate[05] |= 16'b0000000000000000;
						end
						default: begin
							RedIntermediate[00] |= 16'b0000000000000000;
							RedIntermediate[01] |= 16'b0000000000000000;
							RedIntermediate[02] |= 16'b0000000000000000;
							RedIntermediate[03] |= 16'b0000000000000000;
							RedIntermediate[04] |= 16'b0000000000000000;
							RedIntermediate[05] |= 16'b0000000000000000;
						end
					endcase
				end
				4'b0011: begin
					case (currentGame[3])
						2'b00: begin
							RedIntermediate[06] |= 16'b0000000000000000;
							RedIntermediate[07] |= 16'b0000000000000000;
							RedIntermediate[08] |= 16'b0000000000000000;
							RedIntermediate[09] |= 16'b0000000000000000;
							RedIntermediate[10] |= 16'b0000000000000000;
						end
						2'b01: begin
							RedIntermediate[06] |= 16'b0100100000000000;
							RedIntermediate[07] |= 16'b0011000000000000;
							RedIntermediate[08] |= 16'b0011000000000000;
							RedIntermediate[09] |= 16'b0100100000000000;
							RedIntermediate[10] |= 16'b0000000000000000;
						end
						2'b10: begin
							RedIntermediate[06] |= 16'b0011000000000000;
							RedIntermediate[07] |= 16'b0100100000000000;
							RedIntermediate[08] |= 16'b0100100000000000;
							RedIntermediate[09] |= 16'b0011000000000000;
							RedIntermediate[10] |= 16'b0000000000000000;
						end
						default: begin
							RedIntermediate[06] |= 16'b0000000000000000;
							RedIntermediate[07] |= 16'b0000000000000000;
							RedIntermediate[08] |= 16'b0000000000000000;
							RedIntermediate[09] |= 16'b0000000000000000;
							RedIntermediate[10] |= 16'b0000000000000000;
						end
					endcase
				end
				4'b0100: begin
					case (currentGame[4])
						2'b00: begin
							RedIntermediate[06] |= 16'b0000000000000000;
							RedIntermediate[07] |= 16'b0000000000000000;
							RedIntermediate[08] |= 16'b0000000000000000;
							RedIntermediate[09] |= 16'b0000000000000000;
							RedIntermediate[10] |= 16'b0000000000000000;
						end
						2'b01: begin
							RedIntermediate[06] |= 16'b0000001001000000;
							RedIntermediate[07] |= 16'b0000000110000000;
							RedIntermediate[08] |= 16'b0000000110000000;
							RedIntermediate[09] |= 16'b0000001001000000;
							RedIntermediate[10] |= 16'b0000000000000000;
						end
						2'b10: begin
							RedIntermediate[06] |= 16'b0000000110000000;
							RedIntermediate[07] |= 16'b0000001001000000;
							RedIntermediate[08] |= 16'b0000001001000000;
							RedIntermediate[09] |= 16'b0000000110000000;
							RedIntermediate[10] |= 16'b0000000000000000;
						end
						default: begin
							RedIntermediate[06] |= 16'b0000000000000000;
							RedIntermediate[07] |= 16'b0000000000000000;
							RedIntermediate[08] |= 16'b0000000000000000;
							RedIntermediate[09] |= 16'b0000000000000000;
							RedIntermediate[10] |= 16'b0000000000000000;
						end
					endcase
				end
				4'b0101: begin
					case (currentGame[5])
						2'b00: begin
							RedIntermediate[06] |= 16'b0000000000000000;
							RedIntermediate[07] |= 16'b0000000000000000;
							RedIntermediate[08] |= 16'b0000000000000000;
							RedIntermediate[09] |= 16'b0000000000000000;
							RedIntermediate[10] |= 16'b0000000000000000;
						end
						2'b01: begin
							RedIntermediate[06] |= 16'b0000000000010010;
							RedIntermediate[07] |= 16'b0000000000001100;
							RedIntermediate[08] |= 16'b0000000000001100;
							RedIntermediate[09] |= 16'b0000000000010010;
							RedIntermediate[10] |= 16'b0000000000000000;
						end
						2'b10: begin
							RedIntermediate[06] |= 16'b0000000000001100;
							RedIntermediate[07] |= 16'b0000000000010010;
							RedIntermediate[08] |= 16'b0000000000010010;
							RedIntermediate[09] |= 16'b0000000000001100;
							RedIntermediate[10] |= 16'b0000000000000000;
						end
						default: begin
							RedIntermediate[06] |= 16'b0000000000000000;
							RedIntermediate[07] |= 16'b0000000000000000;
							RedIntermediate[08] |= 16'b0000000000000000;
							RedIntermediate[09] |= 16'b0000000000000000;
							RedIntermediate[10] |= 16'b0000000000000000;
						end
					endcase
				end
				4'b0110: begin
					case (currentGame[6])
						2'b00: begin
							RedIntermediate[11] |= 16'b0000000000000000;
							RedIntermediate[12] |= 16'b0000000000000000;
							RedIntermediate[13] |= 16'b0000000000000000;
							RedIntermediate[14] |= 16'b0000000000000000;
							RedIntermediate[15] |= 16'b0000000000000000;
						end
						2'b01: begin
							RedIntermediate[11] |= 16'b0100100000000000;
							RedIntermediate[12] |= 16'b0011000000000000;
							RedIntermediate[13] |= 16'b0011000000000000;
							RedIntermediate[14] |= 16'b0100100000000000;
							RedIntermediate[15] |= 16'b0000000000000000;
						end
						2'b10: begin
							RedIntermediate[11] |= 16'b0011000000000000;
							RedIntermediate[12] |= 16'b0100100000000000;
							RedIntermediate[13] |= 16'b0100100000000000;
							RedIntermediate[14] |= 16'b0011000000000000;
							RedIntermediate[15] |= 16'b0000000000000000;
						end
						default: begin
							RedIntermediate[11] |= 16'b0000000000000000;
							RedIntermediate[12] |= 16'b0000000000000000;
							RedIntermediate[13] |= 16'b0000000000000000;
							RedIntermediate[14] |= 16'b0000000000000000;
							RedIntermediate[15] |= 16'b0000000000000000;
						end
					endcase
				end
				4'b0111: begin
					case (currentGame[7])
						2'b00: begin
							RedIntermediate[11] |= 16'b0000000000000000;
							RedIntermediate[12] |= 16'b0000000000000000;
							RedIntermediate[13] |= 16'b0000000000000000;
							RedIntermediate[14] |= 16'b0000000000000000;
							RedIntermediate[15] |= 16'b0000000000000000;
						end
						2'b01: begin
							RedIntermediate[11] |= 16'b0000001001000000;
							RedIntermediate[12] |= 16'b0000000110000000;
							RedIntermediate[13] |= 16'b0000000110000000;
							RedIntermediate[14] |= 16'b0000001001000000;
							RedIntermediate[15] |= 16'b0000000000000000;
						end
						2'b10: begin
							RedIntermediate[11] |= 16'b0000000110000000;
							RedIntermediate[12] |= 16'b0000001001000000;
							RedIntermediate[13] |= 16'b0000001001000000;
							RedIntermediate[14] |= 16'b0000000110000000;
						end
						default: begin
							RedIntermediate[11] |= 16'b0000000000000000;
							RedIntermediate[12] |= 16'b0000000000000000;
							RedIntermediate[13] |= 16'b0000000000000000;
							RedIntermediate[14] |= 16'b0000000000000000;
							RedIntermediate[15] |= 16'b0000000000000000;
						end
					endcase
				end
				4'b1000: begin
					case (currentGame[8])
						2'b00: begin
							RedIntermediate[11] |= 16'b0000000000000000;
							RedIntermediate[12] |= 16'b0000000000000000;
							RedIntermediate[13] |= 16'b0000000000000000;
							RedIntermediate[14] |= 16'b0000000000000000;
							RedIntermediate[15] |= 16'b0000000000000000;
						end
						2'b01: begin
							RedIntermediate[11] |= 16'b0000000000010010;
							RedIntermediate[12] |= 16'b0000000000001100;
							RedIntermediate[13] |= 16'b0000000000001100;
							RedIntermediate[14] |= 16'b0000000000010010;
							RedIntermediate[15] |= 16'b0000000000000000;
						end
						2'b10: begin
							RedIntermediate[11] |= 16'b0000000000001100;
							RedIntermediate[12] |= 16'b0000000000010010;
							RedIntermediate[13] |= 16'b0000000000010010;
							RedIntermediate[14] |= 16'b0000000000001100;
							RedIntermediate[15] |= 16'b0000000000000000;
						end
						default: begin
							RedIntermediate[11] |= 16'b0000000000000000;
							RedIntermediate[12] |= 16'b0000000000000000;
							RedIntermediate[13] |= 16'b0000000000000000;
							RedIntermediate[14] |= 16'b0000000000000000;
							RedIntermediate[15] |= 16'b0000000000000000;
						end
					endcase
				end
			endcase
		end
		RedPixels = RedIntermediate;
	end
endmodule
