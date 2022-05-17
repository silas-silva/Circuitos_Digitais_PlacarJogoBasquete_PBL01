module controleCronometro ( ch24, ch14, N);
	input ch24,ch14;
	output reg [4:0] N;
	
	always @* begin
		case (ch14)
		1'b0 : begin
			case(ch24)
				1'b0 : N <= 5'b0;
				1'b1 : N <= 5'b11000;
			endcase
		end
		1'b1 : N <= 5'b01110;
		endcase
	end
	
endmodule 