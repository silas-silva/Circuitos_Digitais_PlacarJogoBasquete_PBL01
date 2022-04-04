module Entradas_soma ( A, B, C, ChaveNegativaPositiva, MudarTime, N1, SaidaBtns, S, Cout, time1d1,time1d2, time2d1, time2d2);
	input A, B, C, ChaveNegativaPositiva, MudarTime;
	input [6:0] N1;
	output [1:0] SaidaBtns;
	output [6:0] S;
	output Cout;
	
	
	btnsEntrada entradas (.A(A), .B(B), .C(C), .N(SaidaBtns));	
	
	//Verificar se o valor de 'N1' é maior que o de 'SaidaBtns'
	//Se for verdade 'Soma'
	somador_subitrator7bts r1 (.A(N1), .B(SaidaBtns), .Cin(ChaveNegativaPositiva), .S(S), .Cout(Cout));
	
	//Se não 'Ligar led ou busina'
	
	//Decodificador para mostrar no display
	decodificadorDisplay7Segmentos display (.pontos(S), .timeBasquete(MudarTime), .display1Time0(time1d1),.display2Time0(time1d2), .display1Time1(time2d1), .display2Time1(time2d2));
	
	
endmodule 