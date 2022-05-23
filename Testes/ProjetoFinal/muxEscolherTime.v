module muxEscolherTime (reg1, reg2, chaveTime, saidaParaSomador);
	
	input chaveTime;
	input [6:0] reg1, reg2;
	output reg [6:0] saidaParaSomador;

	
	always @* begin
		case (chaveTime)
			1'b0 : saidaParaSomador = reg1;
			1'b1 : saidaParaSomador = reg2;
		endcase 
	end
	
endmodule 