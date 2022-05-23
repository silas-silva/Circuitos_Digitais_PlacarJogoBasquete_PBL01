module mudarOrdem(n, saida);
	input [7:0] n;
	output [7:0] saida;
	
	wire N0, N1, N2, N3, N4, N5, N6, N7;
	not (N0, n[0]);
	not (N1, n[1]);
	not (N2, n[2]);
	not (N3, n[3]);
	
	not (N4, n[4]);
	not (N5, n[5]);
	not (N6, n[6]);
	not (N7, n[7]);

	
	// ==================================
	not (saida[0], N0);
	not (saida[1], N4);
	not (saida[2], N1);
	not (saida[3], N5);
	not (saida[4], N2);
	not (saida[5], N6);
	not (saida[6], N3);
	not (saida[7], N7);
	
endmodule 
