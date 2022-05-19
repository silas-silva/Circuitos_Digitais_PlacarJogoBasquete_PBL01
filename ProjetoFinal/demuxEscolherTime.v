module demuxEscolherTime (entSomador, escolhaTime, reg1, reg2);
	
	input [6:0] entSomador;
	input escolhaTime;
	output reg [6:0] reg1, reg2;
	
	always @* begin
		case (escolhaTime)
			1'b0 : begin reg1 = entSomador; reg2 = 7'b0000000; end
			1'b1 : begin reg2 = entSomador; reg1 = 7'b0000000; end
		endcase 
	end
	
endmodule 