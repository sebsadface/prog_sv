module cellSelector(
	input logic clk, reset, 
	input logic [8:0][1:0] currentGame,
	input logic [15:0][15:0] RedIntermediate,
	output logic [15:0][15:0] RedPixels
);
	
	always_comb begin
		if (reset) RedPixels = RedIntermediate;
		else begin
			case (currentGame[0])
				2'b00: begin
					RedPixels[00][15:10] = RedIntermediate[00][15:10] | 6'b000000;
					RedPixels[01][15:10] = RedIntermediate[01][15:10] | 6'b000000;
					RedPixels[02][15:10] = RedIntermediate[02][15:10] | 6'b000000;
					RedPixels[03][15:10] = RedIntermediate[03][15:10] | 6'b000000;
					RedPixels[04][15:10] = RedIntermediate[04][15:10] | 6'b000000;
					RedPixels[05][15:10] = RedIntermediate[05][15:10] | 6'b000000;
				end
				2'b01: begin
					RedPixels[00][15:10] = RedIntermediate[00][15:10] | 6'b000000;
					RedPixels[01][15:10] = RedIntermediate[01][15:10] | 6'b010010;
					RedPixels[02][15:10] = RedIntermediate[02][15:10] | 6'b001100;
					RedPixels[03][15:10] = RedIntermediate[03][15:10] | 6'b001100;
					RedPixels[04][15:10] = RedIntermediate[04][15:10] | 6'b010010;
					RedPixels[05][15:10] = RedIntermediate[05][15:10] | 6'b000000;
				end
				2'b10: begin
					RedPixels[00][15:10] = RedIntermediate[00][15:10] | 6'b000000;
					RedPixels[01][15:10] = RedIntermediate[01][15:10] | 6'b001100;
					RedPixels[02][15:10] = RedIntermediate[02][15:10] | 6'b010010;
					RedPixels[03][15:10] = RedIntermediate[03][15:10] | 6'b010010;
					RedPixels[04][15:10] = RedIntermediate[04][15:10] | 6'b001100;
					RedPixels[05][15:10] = RedIntermediate[05][15:10] | 6'b000000;
				end
				default: begin
					RedPixels[00][15:10] = RedIntermediate[00][15:10] | 6'b000000;
					RedPixels[01][15:10] = RedIntermediate[01][15:10] | 6'b000000;
					RedPixels[02][15:10] = RedIntermediate[02][15:10] | 6'b000000;
					RedPixels[03][15:10] = RedIntermediate[03][15:10] | 6'b000000;
					RedPixels[04][15:10] = RedIntermediate[04][15:10] | 6'b000000;
					RedPixels[05][15:10] = RedIntermediate[05][15:10] | 6'b000000;
				end
			endcase
			case (currentGame[1])
				2'b00: begin
					RedPixels[00][09:05] = RedIntermediate[00][09:05] | 5'b00000;
					RedPixels[01][09:05] = RedIntermediate[01][09:05] | 5'b00000;
					RedPixels[02][09:05] = RedIntermediate[02][09:05] | 5'b00000;
					RedPixels[03][09:05] = RedIntermediate[03][09:05] | 5'b00000;
					RedPixels[04][09:05] = RedIntermediate[04][09:05] | 5'b00000;
					RedPixels[05][09:05] = RedIntermediate[05][09:05] | 5'b00000;
				end
				2'b01: begin
					RedPixels[00][09:05] = RedIntermediate[00][09:05] | 5'b00000;
					RedPixels[01][09:05] = RedIntermediate[01][09:05] | 5'b10010;
					RedPixels[02][09:05] = RedIntermediate[02][09:05] | 5'b01100;
					RedPixels[03][09:05] = RedIntermediate[03][09:05] | 5'b01100;
					RedPixels[04][09:05] = RedIntermediate[04][09:05] | 5'b10010;
					RedPixels[05][09:05] = RedIntermediate[05][09:05] | 5'b00000;
				end
				2'b10: begin
					RedPixels[00][09:05] = RedIntermediate[00][09:05] | 5'b00000;
					RedPixels[01][09:05] = RedIntermediate[01][09:05] | 5'b01100;
					RedPixels[02][09:05] = RedIntermediate[02][09:05] | 5'b10010;
					RedPixels[03][09:05] = RedIntermediate[03][09:05] | 5'b10010;
					RedPixels[04][09:05] = RedIntermediate[04][09:05] | 5'b01100;
					RedPixels[05][09:05] = RedIntermediate[05][09:05] | 5'b00000;
				end
				default: begin
					RedPixels[00][09:05] = RedIntermediate[00][09:05] | 5'b00000;
					RedPixels[01][09:05] = RedIntermediate[01][09:05] | 5'b00000;
					RedPixels[02][09:05] = RedIntermediate[02][09:05] | 5'b00000;
					RedPixels[03][09:05] = RedIntermediate[03][09:05] | 5'b00000;
					RedPixels[04][09:05] = RedIntermediate[04][09:05] | 5'b00000;
					RedPixels[05][09:05] = RedIntermediate[05][09:05] | 5'b00000;
				end
			endcase
			case (currentGame[2])
				2'b00: begin
					RedPixels[00][04:00] = RedIntermediate[00][04:00] | 5'b00000;
					RedPixels[01][04:00] = RedIntermediate[01][04:00] | 5'b00000;
					RedPixels[02][04:00] = RedIntermediate[02][04:00] | 5'b00000;
					RedPixels[03][04:00] = RedIntermediate[03][04:00] | 5'b00000;
					RedPixels[04][04:00] = RedIntermediate[04][04:00] | 5'b00000;
					RedPixels[05][04:00] = RedIntermediate[05][04:00] | 5'b00000;
				end
				2'b01: begin
					RedPixels[00][04:00] = RedIntermediate[00][04:00] | 5'b00000;
					RedPixels[01][04:00] = RedIntermediate[01][04:00] | 5'b10010;
					RedPixels[02][04:00] = RedIntermediate[02][04:00] | 5'b01100;
					RedPixels[03][04:00] = RedIntermediate[03][04:00] | 5'b01100;
					RedPixels[04][04:00] = RedIntermediate[04][04:00] | 5'b10010;
					RedPixels[05][04:00] = RedIntermediate[05][04:00] | 5'b00000;
				end
				2'b10: begin
					RedPixels[00][04:00] = RedIntermediate[00][04:00] | 5'b00000;
					RedPixels[01][04:00] = RedIntermediate[01][04:00] | 5'b01100;
					RedPixels[02][04:00] = RedIntermediate[02][04:00] | 5'b10010;
					RedPixels[03][04:00] = RedIntermediate[03][04:00] | 5'b10010;
					RedPixels[04][04:00] = RedIntermediate[04][04:00] | 5'b01100;
					RedPixels[05][04:00] = RedIntermediate[05][04:00] | 5'b00000;
				end
				default: begin
					RedPixels[00][04:00] = RedIntermediate[00][04:00] | 5'b00000;
					RedPixels[01][04:00] = RedIntermediate[01][04:00] | 5'b00000;
					RedPixels[02][04:00] = RedIntermediate[02][04:00] | 5'b00000;
					RedPixels[03][04:00] = RedIntermediate[03][04:00] | 5'b00000;
					RedPixels[04][04:00] = RedIntermediate[04][04:00] | 5'b00000;
					RedPixels[05][04:00] = RedIntermediate[05][04:00] | 5'b00000;
				end
			endcase
			case (currentGame[3])
				2'b00: begin
					RedPixels[06][15:10] = RedIntermediate[06][15:10] | 6'b000000;
					RedPixels[07][15:10] = RedIntermediate[07][15:10] | 6'b000000;
					RedPixels[08][15:10] = RedIntermediate[08][15:10] | 6'b000000;
					RedPixels[09][15:10] = RedIntermediate[09][15:10] | 6'b000000;
					RedPixels[10][15:10] = RedIntermediate[10][15:10] | 6'b000000;
				end
				2'b01: begin
					RedPixels[06][15:10] = RedIntermediate[06][15:10] | 6'b010010;
					RedPixels[07][15:10] = RedIntermediate[07][15:10] | 6'b001100;
					RedPixels[08][15:10] = RedIntermediate[08][15:10] | 6'b001100;
					RedPixels[09][15:10] = RedIntermediate[09][15:10] | 6'b010010;
					RedPixels[10][15:10] = RedIntermediate[10][15:10] | 6'b000000;
				end
				2'b10: begin
					RedPixels[06][15:10] = RedIntermediate[06][15:10] | 6'b001100;
					RedPixels[07][15:10] = RedIntermediate[07][15:10] | 6'b010010;
					RedPixels[08][15:10] = RedIntermediate[08][15:10] | 6'b010010;
					RedPixels[09][15:10] = RedIntermediate[09][15:10] | 6'b001100;
					RedPixels[10][15:10] = RedIntermediate[10][15:10] | 6'b000000;
				end
				default: begin
					RedPixels[06][15:10] = RedIntermediate[06][15:10] | 6'b000000;
					RedPixels[07][15:10] = RedIntermediate[07][15:10] | 6'b000000;
					RedPixels[08][15:10] = RedIntermediate[08][15:10] | 6'b000000;
					RedPixels[09][15:10] = RedIntermediate[09][15:10] | 6'b000000;
					RedPixels[10][15:10] = RedIntermediate[10][15:10] | 6'b000000;
				end
			endcase
			case (currentGame[4])
				2'b00: begin
					RedPixels[06][09:05] = RedIntermediate[06][09:05] | 5'b00000;
					RedPixels[07][09:05] = RedIntermediate[07][09:05] | 5'b00000;
					RedPixels[08][09:05] = RedIntermediate[08][09:05] | 5'b00000;
					RedPixels[09][09:05] = RedIntermediate[09][09:05] | 5'b00000;
					RedPixels[10][09:05] = RedIntermediate[10][09:05] | 5'b00000;
				end
				2'b01: begin
					RedPixels[06][09:05] = RedIntermediate[06][09:05] | 5'b10010;
					RedPixels[07][09:05] = RedIntermediate[07][09:05] | 5'b01100;
					RedPixels[08][09:05] = RedIntermediate[08][09:05] | 5'b01100;
					RedPixels[09][09:05] = RedIntermediate[09][09:05] | 5'b10010;
					RedPixels[10][09:05] = RedIntermediate[10][09:05] | 5'b00000;
				end
				2'b10: begin
					RedPixels[06][09:05] = RedIntermediate[06][09:05] | 5'b01100;
					RedPixels[07][09:05] = RedIntermediate[07][09:05] | 5'b10010;
					RedPixels[08][09:05] = RedIntermediate[08][09:05] | 5'b10010;
					RedPixels[09][09:05] = RedIntermediate[09][09:05] | 5'b01100;
					RedPixels[10][09:05] = RedIntermediate[10][09:05] | 5'b00000;
				end
				default: begin
					RedPixels[06][09:05] = RedIntermediate[06][09:05] | 5'b00000;
					RedPixels[07][09:05] = RedIntermediate[07][09:05] | 5'b00000;
					RedPixels[08][09:05] = RedIntermediate[08][09:05] | 5'b00000;
					RedPixels[09][09:05] = RedIntermediate[09][09:05] | 5'b00000;
					RedPixels[10][09:05] = RedIntermediate[10][09:05] | 5'b00000;
				end
			endcase
			case (currentGame[5])
				2'b00: begin
					RedPixels[06][04:00] = RedIntermediate[06][04:00] | 5'b00000;
					RedPixels[07][04:00] = RedIntermediate[07][04:00] | 5'b00000;
					RedPixels[08][04:00] = RedIntermediate[08][04:00] | 5'b00000;
					RedPixels[09][04:00] = RedIntermediate[09][04:00] | 5'b00000;
					RedPixels[10][04:00] = RedIntermediate[10][04:00] | 5'b00000;
				end
				2'b01: begin
					RedPixels[06][04:00] = RedIntermediate[06][04:00] | 5'b10010;
					RedPixels[07][04:00] = RedIntermediate[07][04:00] | 5'b01100;
					RedPixels[08][04:00] = RedIntermediate[08][04:00] | 5'b01100;
					RedPixels[09][04:00] = RedIntermediate[09][04:00] | 5'b10010;
					RedPixels[10][04:00] = RedIntermediate[10][04:00] | 5'b00000;
				end
				2'b10: begin
					RedPixels[06][04:00] = RedIntermediate[06][04:00] | 5'b01100;
					RedPixels[07][04:00] = RedIntermediate[07][04:00] | 5'b10010;
					RedPixels[08][04:00] = RedIntermediate[08][04:00] | 5'b10010;
					RedPixels[09][04:00] = RedIntermediate[09][04:00] | 5'b01100;
					RedPixels[10][04:00] = RedIntermediate[10][04:00] | 5'b00000;
				end
				default: begin
					RedPixels[06][04:00] = RedIntermediate[06][04:00] | 5'b00000;
					RedPixels[07][04:00] = RedIntermediate[07][04:00] | 5'b00000;
					RedPixels[08][04:00] = RedIntermediate[08][04:00] | 5'b00000;
					RedPixels[09][04:00] = RedIntermediate[09][04:00] | 5'b00000;
					RedPixels[10][04:00] = RedIntermediate[10][04:00] | 5'b00000;
				end
			endcase
			case (currentGame[6])
				2'b00: begin
					RedPixels[11][15:10] = RedIntermediate[11][15:10] | 6'b000000;
					RedPixels[12][15:10] = RedIntermediate[12][15:10] | 6'b000000;
					RedPixels[13][15:10] = RedIntermediate[13][15:10] | 6'b000000;
					RedPixels[14][15:10] = RedIntermediate[14][15:10] | 6'b000000;
					RedPixels[15][15:10] = RedIntermediate[15][15:10] | 6'b000000;
				end
				2'b01: begin
					RedPixels[11][15:10] = RedIntermediate[11][15:10] | 6'b010010;
					RedPixels[12][15:10] = RedIntermediate[12][15:10] | 6'b001100;
					RedPixels[13][15:10] = RedIntermediate[13][15:10] | 6'b001100;
					RedPixels[14][15:10] = RedIntermediate[14][15:10] | 6'b010010;
					RedPixels[15][15:10] = RedIntermediate[15][15:10] | 6'b000000;
				end
				2'b10: begin
					RedPixels[11][15:10] = RedIntermediate[11][15:10] | 6'b001100;
					RedPixels[12][15:10] = RedIntermediate[12][15:10] | 6'b010010;
					RedPixels[13][15:10] = RedIntermediate[13][15:10] | 6'b010010;
					RedPixels[14][15:10] = RedIntermediate[14][15:10] | 6'b001100;
					RedPixels[15][15:10] = RedIntermediate[15][15:10] | 6'b000000;
				end
				default: begin
					RedPixels[11][15:10] = RedIntermediate[11][15:10] | 6'b000000;
					RedPixels[12][15:10] = RedIntermediate[12][15:10] | 6'b000000;
					RedPixels[13][15:10] = RedIntermediate[13][15:10] | 6'b000000;
					RedPixels[14][15:10] = RedIntermediate[14][15:10] | 6'b000000;
					RedPixels[15][15:10] = RedIntermediate[15][15:10] | 6'b000000;
				end
			endcase
			case (currentGame[7])
				2'b00: begin
					RedPixels[11][09:05] = RedIntermediate[11][09:05] | 5'b00000;
					RedPixels[12][09:05] = RedIntermediate[12][09:05] | 5'b00000;
					RedPixels[13][09:05] = RedIntermediate[13][09:05] | 5'b00000;
					RedPixels[14][09:05] = RedIntermediate[14][09:05] | 5'b00000;
					RedPixels[15][09:05] = RedIntermediate[15][09:05] | 5'b00000;
				end
				2'b01: begin
					RedPixels[11][09:05] = RedIntermediate[11][09:05] | 5'b10010;
					RedPixels[12][09:05] = RedIntermediate[12][09:05] | 5'b01100;
					RedPixels[13][09:05] = RedIntermediate[13][09:05] | 5'b01100;
					RedPixels[14][09:05] = RedIntermediate[14][09:05] | 5'b10010;
					RedPixels[15][09:05] = RedIntermediate[15][09:05] | 5'b00000;
				end
				2'b10: begin
					RedPixels[11][09:05] = RedIntermediate[11][09:05] | 5'b01100;
					RedPixels[12][09:05] = RedIntermediate[12][09:05] | 5'b10010;
					RedPixels[13][09:05] = RedIntermediate[13][09:05] | 5'b10010;
					RedPixels[14][09:05] = RedIntermediate[14][09:05] | 5'b01100;
				end
				default: begin
					RedPixels[11][09:05] = RedIntermediate[11][09:05] | 5'b00000;
					RedPixels[12][09:05] = RedIntermediate[12][09:05] | 5'b00000;
					RedPixels[13][09:05] = RedIntermediate[13][09:05] | 5'b00000;
					RedPixels[14][09:05] = RedIntermediate[14][09:05] | 5'b00000;
					RedPixels[15][09:05] = RedIntermediate[15][09:05] | 5'b00000;
				end
			endcase
			case (currentGame[8])
				2'b00: begin
					RedPixels[11][04:00] = RedIntermediate[11][04:00] | 5'b00000;
					RedPixels[12][04:00] = RedIntermediate[12][04:00] | 5'b00000;
					RedPixels[13][04:00] = RedIntermediate[13][04:00] | 5'b00000;
					RedPixels[14][04:00] = RedIntermediate[14][04:00] | 5'b00000;
					RedPixels[15][04:00] = RedIntermediate[15][04:00] | 5'b00000;
				end
				2'b01: begin
					RedPixels[11][04:00] = RedIntermediate[11][04:00] | 5'b10010;
					RedPixels[12][04:00] = RedIntermediate[12][04:00] | 5'b01100;
					RedPixels[13][04:00] = RedIntermediate[13][04:00] | 5'b01100;
					RedPixels[14][04:00] = RedIntermediate[14][04:00] | 5'b10010;
					RedPixels[15][04:00] = RedIntermediate[15][04:00] | 5'b00000;
				end
				2'b10: begin
					RedPixels[11][04:00] = RedIntermediate[11][04:00] | 5'b01100;
					RedPixels[12][04:00] = RedIntermediate[12][04:00] | 5'b10010;
					RedPixels[13][04:00] = RedIntermediate[13][04:00] | 5'b10010;
					RedPixels[14][04:00] = RedIntermediate[14][04:00] | 5'b01100;
					RedPixels[15][04:00] = RedIntermediate[15][04:00] | 5'b00000;
				end
				default: begin
					RedPixels[11][04:00] = RedIntermediate[11][04:00] | 5'b00000;
					RedPixels[12][04:00] = RedIntermediate[12][04:00] | 5'b00000;
					RedPixels[13][04:00] = RedIntermediate[13][04:00] | 5'b00000;
					RedPixels[14][04:00] = RedIntermediate[14][04:00] | 5'b00000;
					RedPixels[15][04:00] = RedIntermediate[15][04:00] | 5'b00000;
				end
			endcase
		end
	end
endmodule
