module scoreCounter(Clock, Reset, incrementInPos, incrementInNeg, otherLeds, incrementOutPos, incrementOutNeg, leds);
	
	input Clock, Reset;
	input incrementInPos, incrementInNeg;
	input [1:7] otherLeds;
	
	output [1:7] leds;
	
	output incrementOutPos;
	reg incOutPos;
	assign incrementOutPos = incOutPos;
	
	output incrementOutNeg;
	reg incOutNeg;
	assign incrementOutNeg = incOutNeg;
	
	parameter [3:0] zero = 4'b0000, one = 4'b0001, two = 4'b0010, three = 4'b0011, four = 4'b0100, five = 4'b0101, six = 4'b0110, seven = 4'b0111, eight = 4'b1000, nine = 4'b1001;
	
	wire [3:0] PS;
	reg [3:0] NS;
	
	reg [1:7] on;
	assign leds = on;
	
	// New State
	always @(PS or incrementInPos or incrementInNeg) begin
		case(PS)
		
			zero: if (incrementInPos) NS = one;
				//else if (plus2) NS = two;
				//else if (minus2) begin NS = eight; incOutNeg = 1; end
				else if (incrementInNeg & otherLeds != ~7'b1111110) begin NS = nine; end
				else NS = zero;
			
			one: if (incrementInPos) NS = two;
				//else if (plus2) NS = three;
				//else if (minus2) begin NS = nine; incOutNeg = 1; end
				else if (incrementInNeg) NS = zero;
				else NS = one;
			
			two: if (incrementInPos) NS = three;
				//else if (plus2) NS = four;
				//else if (minus2) NS = zero;
				else if (incrementInNeg) NS = one;
				else NS = two;
			
			three: if (incrementInPos) NS = four;
				//else if (plus2) NS = five;
				//else if (minus2) NS = one;
				else if (incrementInNeg) NS = two;
				else NS = three;
			
			four: if (incrementInPos) NS = five;
				//else if (plus2) NS = six;
				//else if (minus2) NS = two;
				else if (incrementInNeg) NS = three;
				else NS = four;
			
			five: if (incrementInPos) NS = six;
				//else if (plus2) NS = seven;
				//else if (minus2) NS = three;
				else if (incrementInNeg) NS = four;
				else NS = five;
			
			six: if (incrementInPos) NS = seven;
				//else if (plus2) NS = eight;
				//else if (minus2) NS = four;
				else if (incrementInNeg) NS = five;
				else NS = six;
			
			seven: if (incrementInPos) NS = eight;
				//else if (plus2) NS = nine;
				//else if (minus2) NS = five;
				else if (incrementInNeg) NS = six;
				else NS = seven;
				
			eight: if (incrementInPos) NS = nine;
				//else if (plus2) begin NS = zero; incOutPos = 1; end
				//else if (minus2) NS = six;
				else if (incrementInNeg) NS = seven;
				else NS = eight;
				
			nine: if (incrementInPos) begin NS = zero; end
				//else if (plus2) begin NS = one; incOutPos = 1; end
				//else if (minus2) NS = seven;
				else if (incrementInNeg) NS = eight;
				else NS = nine;
			
			default: NS = 4'bxxxx;

		endcase
	end
	
	always @(PS) begin
		case(PS) 
			zero: begin 
						on = 7'b1000000;
						incOutPos = 0;
						if (incrementInNeg) incOutNeg = 1; 
						else incOutNeg = 0; 
					end
					
			one: begin 
						on = 7'b1111001;
						incOutPos = 0;
						incOutNeg = 0;
					end
					
			two: begin 
						on = 7'b0100100;
						incOutPos = 0;
						incOutNeg = 0;
					end	
			
			three: begin
						on = 7'b0110000;
						incOutPos = 0;
						incOutNeg = 0;
					end
					
			four: begin 
						on = 7'b0011001;
						incOutPos = 0;
						incOutNeg = 0;
					end
					
			five: begin
						on = 7'b0010010;
						incOutPos = 0;
						incOutNeg = 0;
					end
					
			six: begin 
						on = 7'b0000010;
						incOutPos = 0;
						incOutNeg = 0;
					end
					
			seven: begin
						on = 7'b1111000;
						incOutPos = 0;
						incOutNeg = 0;
					end
					
			eight: begin
						on = 7'b0000000;
						incOutPos = 0;
						incOutNeg = 0;
					end
					
			nine: begin 
						on = 7'b0011000;
						incOutNeg = 0;
						if (incrementInPos) incOutPos = 1; 
						else incOutPos = 0; 
					end
			
			default: on = ~7'bxxxxxxx;
		endcase
	end	
	
	D_FF D1(.q(PS[0]), .d(NS[0]), .reset(Reset), .clk(Clock));
	D_FF D2(.q(PS[1]), .d(NS[1]), .reset(Reset), .clk(Clock));
	D_FF D3(.q(PS[2]), .d(NS[2]), .reset(Reset), .clk(Clock));
	D_FF D4(.q(PS[3]), .d(NS[3]), .reset(Reset), .clk(Clock));
	
	
endmodule