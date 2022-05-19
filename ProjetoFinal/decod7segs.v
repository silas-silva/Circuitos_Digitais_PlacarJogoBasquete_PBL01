module decod7segs(BCD, n7Segs);
	
	input [3:0] BCD;
	output reg [6:0] n7Segs;
	
	always @* begin
		case(BCD)
			4'b0000: n7Segs = 7'b1000000;
			4'b0001: n7Segs = 7'b1111001;
			4'b0010: n7Segs = 7'b0100100;
			4'b0011: n7Segs = 7'b0110000;
			4'b0100: n7Segs = 7'b0011001;
			4'b0101: n7Segs = 7'b0010010;
			4'b0110: n7Segs = 7'b0000010;
			4'b0111: n7Segs = 7'b1111000;
			4'b1000: n7Segs = 7'b0000000;
			4'b1001: n7Segs = 7'b0010000;
			default: n7Segs = 7'b1111111;
		endcase	
	end
	
	
endmodule 