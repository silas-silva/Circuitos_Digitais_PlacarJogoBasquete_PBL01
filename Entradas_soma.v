module Entradas_soma ( A, B, C, Chave, N1, SaidaBtns, S, Cout);
	input A, B, C, Chave;
	input [6:0] N1;
	output [1:0] SaidaBtns;
	output [6:0] S;
	output Cout;
	
		
	btnsEntrada entradas (.A(A), .B(B), .C(C), .N(SaidaBtns));
	somador7bts r1 (.A(N1), .B(SaidaBtns), .Cin(Chave), .S(S), .Cout(Cout));
	
	
	
endmodule 