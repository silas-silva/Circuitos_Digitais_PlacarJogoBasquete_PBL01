module retornar8(n1, n2, saida);
	input [3:0] n1, n2;
	output [7:0] saida;
	
	wire N10, N11, N12, N13;
	not (N13, n1[3]);
	not (N12, n1[2]);
	not (N11, n1[1]);
	not (N10, n1[0]);
	
	wire N20, N21, N22, N23;
	not (N23, n2[3]);
	not (N22, n2[2]);
	not (N21, n2[1]);
	not (N20, n2[0]);
	
	
	// ==================================
	not (saida[0], N10);
	not (saida[1], N11);
	not (saida[2], N12);
	not (saida[3], N13);
	not (saida[4], N20);
	not (saida[5], N21);
	not (saida[6], N22);
	not (saida[7], N23);
	
	
endmodule 
