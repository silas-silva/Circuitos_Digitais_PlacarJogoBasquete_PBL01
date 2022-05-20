module botoesDeEntrada ( A, B, C, N);
	input A, B, C;
	output [1:0] N;
	
	wire T1, T2, T3;
	wire CN, BN, AN;
	
	not (CN, C);
	not (BN, B);
	not (AN, A);
	
	and And0 (T1, CN, B, A);
	
	and And1 (T2, C, BN, A);
	
	and And2 (T3, C, B, AN);
	

	
	xor Xor0(N[0], T1, T3);
	xor Xor1(N[1], T1, T2);
	
	
endmodule 