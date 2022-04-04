module btnsEntrada ( A, B, C, N);
	input A, B, C;
	output [1:0] N;
	
	
	wire T1, T2, T3, T4;
	
	
	xor Xor0(T1, A, B);
	not Not0(T2, C);
	and And0 (N[0], T1, T2);
	xor Xor1(T3, A, C);
	not Not1(T4, B);
	and And1 (N[1], T3, T4);
	
	
endmodule 