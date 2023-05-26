module cellSelector(
	input logic clk, reset, 
	input logic [8:0][1:0] currentGame,
	output logic [15:0][15:0] RedPixels
);
	
	always_comb
		if (reset) RedPixels |= '0;
		else begin
			case (currentGame[0])
				2'b00: begin
					RedPixels[01] = RedPixels[01] | 16'b0000000000000000;
					RedPixels[02] |= 16'b0000000000000000;
					RedPixels[03] |= 16'b0000000000000000;
					RedPixels[04] |= 16'b0000000000000000;
				end
				2'b01: begin
					RedPixels[01] |= 16'b0100100000000000;
					RedPixels[02] |= 16'b0011000000000000;
					RedPixels[03] |= 16'b0011000000000000;
					RedPixels[04] |= 16'b0100100000000000;
				end
				2'b10: begin
					RedPixels[01] |= 16'b0011000000000000;
					RedPixels[02] |= 16'b0100100000000000;
					RedPixels[03] |= 16'b0100100000000000;
					RedPixels[04] |= 16'b0011000000000000;
				end
				default: begin
					RedPixels[01] |= 16'b0000000000000000;
					RedPixels[02] |= 16'b0000000000000000;
					RedPixels[03] |= 16'b0000000000000000;
					RedPixels[04] |= 16'b0000000000000000;
				end
			endcase
			case (currentGame[1])
				2'b00: begin
					RedPixels[01] |= 16'b0000000000000000;
					RedPixels[02] |= 16'b0000000000000000;
					RedPixels[03] |= 16'b0000000000000000;
					RedPixels[04] |= 16'b0000000000000000;
				end
				2'b01: begin
					RedPixels[01] |= 16'b0000001001000000;
					RedPixels[02] |= 16'b0000000110000000;
					RedPixels[03] |= 16'b0000000110000000;
					RedPixels[04] |= 16'b0000001001000000;
				end
				2'b10: begin
					RedPixels[01] |= 16'b000000110000000;
					RedPixels[02] |= 16'b000001001000000;
					RedPixels[03] |= 16'b000001001000000;
					RedPixels[04] |= 16'b000000110000000;
				end
				default: begin
					RedPixels[01] |= 16'b0000000000000000;
					RedPixels[02] |= 16'b0000000000000000;
					RedPixels[03] |= 16'b0000000000000000;
					RedPixels[04] |= 16'b0000000000000000;
				end
			endcase
			case (currentGame[2])
				2'b00: begin
					RedPixels[01] |= 16'b0000000000000000;
					RedPixels[02] |= 16'b0000000000000000;
					RedPixels[03] |= 16'b0000000000000000;
					RedPixels[04] |= 16'b0000000000000000;
				end
				2'b01: begin
					RedPixels[01] |= 16'b00000000000010010;
					RedPixels[02] |= 16'b00000000000001100;
					RedPixels[03] |= 16'b00000000000001100;
					RedPixels[04] |= 16'b00000000000010010;
				end
				2'b10: begin
					RedPixels[01] |= 16'b0000000000001100;
					RedPixels[02] |= 16'b0000000000010010;
					RedPixels[03] |= 16'b0000000000010010;
					RedPixels[04] |= 16'b0000000000001100;
				end
				default: begin
					RedPixels[01] |= 16'b0000000000000000;
					RedPixels[02] |= 16'b0000000000000000;
					RedPixels[03] |= 16'b0000000000000000;
					RedPixels[04] |= 16'b0000000000000000;
				end
			endcase
			case (currentGame[3])
				2'b00: begin
					RedPixels[06] |= 16'b0000000000000000;
					RedPixels[07] |= 16'b0000000000000000;
					RedPixels[08] |= 16'b0000000000000000;
					RedPixels[09] |= 16'b0000000000000000;
				end
				2'b01: begin
					RedPixels[06] |= 16'b0100100000000000;
					RedPixels[07] |= 16'b0011000000000000;
					RedPixels[08] |= 16'b0011000000000000;
					RedPixels[09] |= 16'b0100100000000000;
				end
				2'b10: begin
					RedPixels[06] |= 16'b0011000000000000;
					RedPixels[07] |= 16'b0100100000000000;
					RedPixels[08] |= 16'b0100100000000000;
					RedPixels[09] |= 16'b0011000000000000;
				end
				default: begin
					RedPixels[06] |= 16'b0000000000000000;
					RedPixels[07] |= 16'b0000000000000000;
					RedPixels[08] |= 16'b0000000000000000;
					RedPixels[09] |= 16'b0000000000000000;
				end
			endcase
			case (currentGame[4])
				2'b00: begin
					RedPixels[06] |= 16'b0000000000000000;
					RedPixels[07] |= 16'b0000000000000000;
					RedPixels[08] |= 16'b0000000000000000;
					RedPixels[09] |= 16'b0000000000000000;
				end
				2'b01: begin
					RedPixels[06] |= 16'b0000001001000000;
					RedPixels[07] |= 16'b0000000110000000;
					RedPixels[08] |= 16'b0000000110000000;
					RedPixels[09] |= 16'b0000001001000000;
				end
				2'b10: begin
					RedPixels[06] |= 16'b000000110000000;
					RedPixels[07] |= 16'b000001001000000;
					RedPixels[08] |= 16'b000001001000000;
					RedPixels[09] |= 16'b000000110000000;
				end
				default: begin
					RedPixels[06] |= 16'b0000000000000000;
					RedPixels[07] |= 16'b0000000000000000;
					RedPixels[08] |= 16'b0000000000000000;
					RedPixels[09] |= 16'b0000000000000000;
				end
			endcase
			case (currentGame[5])
				2'b00: begin
					RedPixels[06] |= 16'b0000000000000000;
					RedPixels[07] |= 16'b0000000000000000;
					RedPixels[08] |= 16'b0000000000000000;
					RedPixels[09] |= 16'b0000000000000000;
				end
				2'b01: begin
					RedPixels[06] |= 16'b00000000000010010;
					RedPixels[07] |= 16'b00000000000001100;
					RedPixels[08] |= 16'b00000000000001100;
					RedPixels[09] |= 16'b00000000000010010;
				end
				2'b10: begin
					RedPixels[06] |= 16'b0000000000001100;
					RedPixels[07] |= 16'b0000000000010010;
					RedPixels[08] |= 16'b0000000000010010;
					RedPixels[09] |= 16'b0000000000001100;
				end
				default: begin
					RedPixels[06] |= 16'b0000000000000000;
					RedPixels[07] |= 16'b0000000000000000;
					RedPixels[08] |= 16'b0000000000000000;
					RedPixels[09] |= 16'b0000000000000000;
				end
			endcase
			case (currentGame[6])
				2'b00: begin
					RedPixels[11] |= 16'b0000000000000000;
					RedPixels[12] |= 16'b0000000000000000;
					RedPixels[13] |= 16'b0000000000000000;
					RedPixels[14] |= 16'b0000000000000000;
				end
				2'b01: begin
					RedPixels[11] |= 16'b0100100000000000;
					RedPixels[12] |= 16'b0011000000000000;
					RedPixels[13] |= 16'b0011000000000000;
					RedPixels[14] |= 16'b0100100000000000;
				end
				2'b10: begin
					RedPixels[11] |= 16'b0011000000000000;
					RedPixels[12] |= 16'b0100100000000000;
					RedPixels[13] |= 16'b0100100000000000;
					RedPixels[14] |= 16'b0011000000000000;
				end
				default: begin
					RedPixels[11] |= 16'b0000000000000000;
					RedPixels[12] |= 16'b0000000000000000;
					RedPixels[13] |= 16'b0000000000000000;
					RedPixels[14] |= 16'b0000000000000000;
				end
			endcase
			case (currentGame[7])
				2'b00: begin
					RedPixels[11] |= 16'b0000000000000000;
					RedPixels[12] |= 16'b0000000000000000;
					RedPixels[13] |= 16'b0000000000000000;
					RedPixels[14] |= 16'b0000000000000000;
				end
				2'b01: begin
					RedPixels[11] |= 16'b0000001001000000;
					RedPixels[12] |= 16'b0000000110000000;
					RedPixels[13] |= 16'b0000000110000000;
					RedPixels[14] |= 16'b0000001001000000;
				end
				2'b10: begin
					RedPixels[11] |= 16'b000000110000000;
					RedPixels[12] |= 16'b000001001000000;
					RedPixels[13] |= 16'b000001001000000;
					RedPixels[14] |= 16'b000000110000000;
				end
				default: begin
					RedPixels[11] |= 16'b0000000000000000;
					RedPixels[12] |= 16'b0000000000000000;
					RedPixels[13] |= 16'b0000000000000000;
					RedPixels[14] |= 16'b0000000000000000;
				end
			endcase
			case (currentGame[8])
				2'b00: begin
					RedPixels[11] |= 16'b0000000000000000;
					RedPixels[12] |= 16'b0000000000000000;
					RedPixels[13] |= 16'b0000000000000000;
					RedPixels[14] |= 16'b0000000000000000;
				end
				2'b01: begin
					RedPixels[11] |= 16'b00000000000010010;
					RedPixels[12] |= 16'b00000000000001100;
					RedPixels[13] |= 16'b00000000000001100;
					RedPixels[14] |= 16'b00000000000010010;
				end
				2'b10: begin
					RedPixels[11] |= 16'b0000000000001100;
					RedPixels[12] |= 16'b0000000000010010;
					RedPixels[13] |= 16'b0000000000010010;
					RedPixels[14] |= 16'b0000000000001100;
				end
				default: begin
					RedPixels[11] |= 16'b0000000000000000;
					RedPixels[12] |= 16'b0000000000000000;
					RedPixels[13] |= 16'b0000000000000000;
					RedPixels[14] |= 16'b0000000000000000;
				end
			endcase
		end
endmodule
