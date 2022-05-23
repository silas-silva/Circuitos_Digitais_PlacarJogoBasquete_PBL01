module placarTimes (clr, pr ,clock,chaveNP, chaveTime, somaBTNs,somaTime1, somaTime2);
	
	input clr, pr, clock, chaveNP, chaveTime;
	input [1:0] somaBTNs;
	output [6:0] somaTime1, somaTime2;
	
	reg [1:0] paraSomarT1, paraSomarT2;
	
	placarTime time01 (.clr(clr), .pr(pr) ,.clock(clock) ,.chaveNP(chaveNP) , .somaBTNs(paraSomarT1), .somaTime(somaTime1));
	placarTime time02 (.clr(clr), .pr(pr) ,.clock(clock) ,.chaveNP(chaveNP) , .somaBTNs(paraSomarT2), .somaTime(somaTime2));
	
	always @* begin
		case (chaveTime)
			1'b0 : begin paraSomarT1 = somaBTNs; paraSomarT2 = 2'b00; end
			1'b1 : begin paraSomarT2 = somaBTNs; paraSomarT1 = 2'b00; end 
			default : begin paraSomarT1 = 2'b00; paraSomarT2 = 2'b00; end 
		endcase 
	end
	
endmodule 