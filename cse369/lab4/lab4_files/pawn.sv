module pawn (
  input  logic [2:0] upc,
  output logic [6:0] leds0, leds1, leds2, leds3, leds4, leds5
  );

  always_comb begin
    case (upc)
      //            Light: 6543210
      3'b000: leds4 = 7'b0010010; // S
      3'b000: leds3 = 7'b1001000; // A
      3'b000: leds2 = 7'b0001110; // F
      3'b000: leds1 = 7'b0000110; // E

      3'b001: leds5 = 7'b1000110; // C
      3'b001: leds4 = 7'b1000000; // O
      3'b001: leds3 = 7'b0001110; // F
      3'b001: leds2 = 7'b0001110; // F
      3'b001: leds1 = 7'b0000110; // E
      3'b001: leds0 = 7'b0000110; // E

      3'b011: leds5 = 7'b1000110; // C
      3'b011: leds4 = 7'b0001001; // H
      3'b011: leds3 = 7'b0000110; // E
      3'b011: leds2 = 7'b0010010; // S
      3'b011: leds1 = 7'b0010010; // S

      3'b100: leds5 = 7'b1001000; // A
      3'b100: leds4 = 7'b0001100; // P
      3'b100: leds3 = 7'b0001100; // P
      3'b100: leds2 = 7'b1000111; // L
      3'b100: leds1 = 7'b0000110; // E

      3'b101: leds4 = 7'b1000110; // C
      3'b101: leds3 = 7'b1000000; // O
      3'b101: leds2 = 7'b0001100; // P
      3'b101: leds1 = 7'b0110001; // Y

      3'b110: leds5 = 7'b1000110; // C
      3'b110: leds4 = 7'b0001001; // H
      3'b110: leds3 = 7'b0000110; // E
      3'b110: leds2 = 7'b0000110; // E
      3'b110: leds1 = 7'b0010010; // S
      3'b110: leds0 = 7'b0000110; // E


      default: leds = 7'bX;
    endcase
  end
endmodule  // pawn