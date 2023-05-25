// Linear feedback shift register; random gen
module LFSR(Clk, Reset, Out);
	input Clk, Reset;
	output [8:0] Out;
	reg [8:0] PS, NS;
	reg T;
	
	always @(*) begin
		T = ~(PS[4] ^ PS[8]);
		NS = {PS[7:0], T};
	end
		
	assign Out = PS;
	
	always @(posedge Clk)
		if (Reset)
			PS <= 9'b000000000;
		else 
			PS <= NS;

endmodule