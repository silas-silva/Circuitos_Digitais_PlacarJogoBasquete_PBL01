module placarTime (clr, pr ,clock, chaveNP, somaBTNs, somaTime);
	
	input clr, pr, clock, chaveNP;
	input [1:0] somaBTNs;
	output [6:0] somaTime;
	
	wire [6:0] soma;
	wire validarSoma;
	
	or or1(validarSoma, somaBTNs[0], somaBTNs[1]);
	
	somadorSubtrator7bts somadorT1 (.A(somaTime), .B(somaBTNs), .Cin(chaveNP), .S(soma), .Cout());
	
	registradorPontosTime time01 (.D(soma), .clr(clr), .pr(pr) ,.clock(clock), .validarSoma(validarSoma), .saida(somaTime));
	

endmodule 