module victory (
  input  logic [1:0] in,
  output logic [6:0] leds
  );

  always_comb begin
    case (in)
      //        Light: 6543210
      2'b00: leds = 7'b1111111;
      2'b01: leds = 7'b1111001; // 1
      2'b10: leds = 7'b0100100; // 2
      default: leds = 7'bX;
    endcase
  end
  
endmodule  // victory