module placarTimes (clr, pr ,clock,chaveNP, chaveTime, somaBTNs,somaTime1, somaTime2, led);
	
	input clr, pr, clock, chaveNP, chaveTime;
	input [1:0] somaBTNs;
	output [6:0] somaTime1, somaTime2;
	output reg led;
	
	reg [1:0] paraSomarT1, paraSomarT2;
	
	wire ledt1, ledt2;
	
	placarTime time01 (.clr(clr), .pr(pr) ,.clock(clock) ,.chaveNP(chaveNP) , .somaBTNs(paraSomarT1), .somaTime(somaTime1));
	placarTime time02 (.clr(clr), .pr(pr) ,.clock(clock) ,.chaveNP(chaveNP) , .somaBTNs(paraSomarT2), .somaTime(somaTime2));
	
	//Comparador de magnitude time 1
	comparadorDeMagnitude comparadorTime1 (.chavePN(chaveNP), .A(somaTime1), .B(paraSomarT1), .F(ledt1));
	
	//Comparador de magnitude time 2
	comparadorDeMagnitude comparadorTime2 (.chavePN(chaveNP), .A(somaTime2), .B(paraSomarT2), .F(ledt2));
	
	always @* begin
		case (chaveTime)
			1'b0 : begin paraSomarT1 = somaBTNs; paraSomarT2 = 2'b00; led = ledt1 ; end
			1'b1 : begin paraSomarT2 = somaBTNs; paraSomarT1 = 2'b00; led = ledt2 ; end 
			default : begin paraSomarT1 = 2'b00; paraSomarT2 = 2'b00; led = 1'b0 ;end 
		endcase 
	end
	
endmodule 