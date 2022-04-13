module mux8pra4(N, escolha, S);
	input [7:0] N;
	input escolha;
	output [3:0] S;
	
	//S0 = N0 escolha' + N4 escolha
	//S1 = N1 escolha' + N5 escolha
	//S2 = N2 escolha' + N6 escolha
	//S3 = N3 escolha' + N7 escolha
	
	wire EN;
	not not1 (EN, escolha);
	
	// N0 escolha' + N4 escolha
	// ============================= Saida S0 =================================
	wire s00, s01;
	and ands00 (s00, N[0], EN);
	and ands01 (s01, N[4], escolha);
	or ors00 (S[0], s00, s01);
	
	// N1 escolha' + N5 escolha
	// ============================= Saida S1 =================================
	wire s10, s11;
	and ands10 (s10, N[1], EN);
	and ands11 (s11, N[5], escolha);
	or ors10 (S[1], s10, s11);
	
	// N2 escolha' + N6 escolha
	// ============================= Saida S2 =================================
	wire s20, s21;
	and ands20 (s20, N[2], EN);
	and ands21 (s21, N[6], escolha);
	or ors20 (S[2], s20, s21);
	
	// N3 escolha' + N7 escolha
	// ============================= Saida S1 =================================
	wire s30, s31;
	and ands30 (s30, N[3], EN);
	and ands31 (s31, N[7], escolha);
	or ors30 (S[3], s30, s31);

	

endmodule 