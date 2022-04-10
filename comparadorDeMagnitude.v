module comparadorDeMagnitude( chavePN, B, A, F);
	input [6:0] A;
	input [1:0] B;
	input chavePN;

	output F;
	
	//Expressão 
	//F = x a6’ a5’ a4’ a3’ a2’ (b1’ b0 a1’ a0’ + b1 b0’ a1’ + b1 b0 (a0’ + a1’ a0))
	
	wire AN6, AN5, AN4, AN3, AN2, AN1, AN0 ;
	not (AN6, A[6]);
	not (AN5, A[5]);
	not (AN4, A[4]);
	not (AN3, A[3]);
	not (AN2, A[2]);
	not (AN1, A[1]);
	not (AN0, A[0]);
	
	wire BN1, BN0;
	not (BN1, B[1]);
	not (BN0, B[0]);
	
	wire AL5, AL4, AL3, AL2, AL1, AL0;
	
	//x a6’ a5’ a4’ a3’ a2’
	and And0(AL0, AN6, AN5, AN4, AN3, AN2, chavePN);
	
	//b1’ b0 a1’ a0’
	and And1(AL1, BN1, B[0], AN1, AN0);
	
	//b1 b0’ a1’
	and And2(AL2, B[1], BN0, AN1);
	
	//b1 b0 
	and And3(AL3, B[1], B[0]);
	
	//a1’ a0
	and And4(AL4, AN1, A[0]);
	

	
	wire OL3, OL2, OL1, OL0;
	
	//a0’ + a1’ a0
	or Or0(OL0, AL4, AN0);
	
	//b1 b0 (a0’ + a1’ a0)
	and And5 (AL5, OL0, AL3);
	
	//b1 b0’ a1’ + b1 b0 (a0’ + a1’ a0))
	or Or1(OL1, AL2, AL5);
	
	//(b1’ b0 a1’ a0’ + b1 b0’ a1’ + b1 b0 (a0’ + a1’ a0))
	or Or2(OL2, AL1, OL1);
	
	
	
	
	//x a6’ a5’ a4’ a3’ a2’ (b1’ b0 a1’ a0’ + b1 b0’ a1’ + b1 b0 (a0’ + a1’ a0))
	and and6(F, AL0, OL2);
	
endmodule  