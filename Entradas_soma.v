module Entradas_soma ( A, B, C, Chave, N1, Nbtoes, S);
	input A, B, C, Chave;
	input [6:0] N1;
	input [1:0] Nbtoes;
	output [6:0] S;
	
		
	btnsEntrada entradas (.A(A), .B(B), .C(C), .N(Nbtoes));
	somador7bts soma (.A(N1), .B(Nbtoes), .Cin(Chave), .S(S), .Cout(Cout));
	
	
	
endmodule 