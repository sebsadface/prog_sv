module pawn (
  input  logic [2:0] upc,
  output logic [6:0] leds0, leds1, leds2, leds3, leds4, leds5
  );

  always_comb begin
    case (upc)
      //            Light: 6543210
      3'b000: begin 
        leds4 = 7'b0010010; // S
        leds3 = 7'b1001000; // A
        leds2 = 7'b0001110; // F
        leds1 = 7'b0000110; // E
      end

      3'b001: begin
        leds5 = 7'b1000110; // C
        leds4 = 7'b1000000; // O
        leds3 = 7'b0001110; // F
        leds2 = 7'b0001110; // F
        leds1 = 7'b0000110; // E
        leds0 = 7'b0000110; // E
      end

      3'b011: begin
      leds5 = 7'b1000110; // C
      leds4 = 7'b0001001; // H
      leds3 = 7'b0000110; // E
      leds2 = 7'b0010010; // S
      leds1 = 7'b0010010; // S
      end

      3'b100: begin 
      leds5 = 7'b1001000; // A
      leds4 = 7'b0001100; // P
      leds3 = 7'b0001100; // P
      leds2 = 7'b1000111; // L
      leds1 = 7'b0000110; // E
      end

      3'b101: begin 
        leds4 = 7'b1000110; // C
        leds3 = 7'b1000000; // O
        leds2 = 7'b0001100; // P
        leds1 = 7'b0110001; // Y
      end

      3'b110: begin
        leds5 = 7'b1000110; // C
        leds4 = 7'b0001001; // H
        leds3 = 7'b0000110; // E
        leds2 = 7'b0000110; // E
        leds1 = 7'b0010010; // S
        leds0 = 7'b0000110; // E
      end

      default: begin 
      leds0 = 7'bX;
      leds1 = 7'bX;
      leds2 = 7'bX;
      leds3 = 7'bX;
      leds4 = 7'bX;
      leds5 = 7'bX;
      end
    endcase
  end
endmodule  // pawn