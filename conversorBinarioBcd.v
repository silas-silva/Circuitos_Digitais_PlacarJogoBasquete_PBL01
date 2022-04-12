module conversorBinarioBcd( A, B, Passou99);
	input [6:0] A;
	output [7:0] B;
	output Passou99;
	
	//Expressões
	//A = A6   B = A5   C = A4   D = A3   E = A2   F = A1   G = A0
	
	//B[0] = A B C' E' F'  + A B C' D'  + A B' C ;
	
	//B[1] = A B' C'  + A' B C  + A' B D ;

	//B[2] = A' B C' D'  + A' C D E  + A B' C'  + A' B' C D  + A' B' C E ;
	
	//B[3] = A' B D' F  + A C' D' E F  + A C' D E' F'  + A B' D E  + A' B' C D' E'  + A' B C D E'  + A' B D' E  + A B' D F  + B C' D'  + B' D E F  + B' C' D E  + B' C' D F ; 
	
	//B[4] = A' B' C D E F'  + A' B' C D' E' F  + A' B C D E' F  + A B' C D E' F'  + A' B C D' E' F'  + A B' C' D E F  + A' B' C' D E' F'  + B C' D' E F  + A C' D' E F'  + A B C' D E' F'  + A B C' D' F ;
	
	//B[5] = A' C' D' E F'  + A' B' C' E F  + A' B C' D E  + A' C D E' F'  + A C' D' E' F'  + A' B C D' E F  + A B' C E F  + A B' C D' E  + A' B C' D' E' F  + A B' C' E' F  + A' B' C D E'  + A' B' C E' F'  + A B' C' D E F' ;
	
	//B[6] =  B' C' D' E' F  + A' B' D' E F  + A B' C D' F  + B C' D' E' F'  + A B' D E F'  + A B' C' D F'  + A' B C D E' F'  + A' B D E F  + A' B D' E F'  + A' B C' D F  + A' B' C D E' F  + A' B' C D' E' F'  + B' C' D E F' ;
	
	//B[7] =  A B C' D E' F'  + A B C' D' E  + B' G + A' G + C' D' G;
	
	//Passou99 = A B C' D E' F'  + A B C' D' E ;
	
	wire AN6, AN5, AN4, AN3, AN2, AN1, AN0 ;
	not (AN6, A[6]);
	not (AN5, A[5]);
	not (AN4, A[4]);
	not (AN3, A[3]);
	not (AN2, A[2]);
	not (AN1, A[1]);
	not (AN0, A[0]);

	//==================================== Saida B[7] =================================
	//A B C' E' F'  + A B C' D'  + A B' C ;
	wire B00, B01, B02;
	and andB00 (B00 ,A[6], A[5], AN2, AN1);
	and andB01 (B01 ,A[6], A[5], AN3, AN4);
	and andB02 (B02 ,A[6], AN5, A[4]);
	or orB00 (B[7] ,B00, B01, B02);
	
	//==================================== Saida B[6] =================================
	//A B' C'  + A' B C  + A' B D ;
	wire B10, B11, B12;
	and andB10 (B10 ,A[6], AN5, AN4);
	and andB11 (B11 ,AN6, A[5], A[4]);
	and andB12 (B12 ,AN6, A[5], A[3]);
	or orB10 (B[6] ,B10, B11, B12);
	
	//==================================== Saida B[5] =================================
	//A' B C' D'   + A' C D E  + A B' C'  + A' B' C D  + A' B' C E ;
	wire B20, B21, B22, B23;
	and andB20 (B20 ,AN6, A[5], AN4, AN3);
	and andB21 (B21 ,AN6, A[4], A[3], A[2]);
	and andB22 (B22 ,A[6], AN5, AN4);
	and andB23 (B23 ,AN6, AN5, A[4], A[2]);
	or orB20 (B[5] ,B20, B21, B22, B23);
	
	//==================================== Saida B[4] =================================
	//A' B D' F  + A C' D' E F  + A C' D E' F'  + A B' D E + A' B' C D' E'  + A' B C D E'  + A' B D' E  + A B' D F  
	//+ B C' D'  + B' D E F  + B' C' D E  + B' C' D F ;
	wire B30, B31, B32, B33, B34, B35, B36, B37, B38, B39, B391, B392;
	and andB30 (B30 ,AN6, A[5], AN3, A[1]);
	and andB31 (B31 ,A[6], AN4, AN3, A[2], A[1]);
	and andB32 (B32 ,A[6], AN4, A[3], AN2, AN1 );
	and andB33 (B33 ,A[6], AN5, A[3], A[2]);
	and andB34 (B34 ,AN6, AN5, A[4], AN3, AN2);
	and andB35 (B35 ,AN6, A[5], A[4], A[3], AN2);
	and andB36 (B36 ,AN6, A[5], AN3, A[2]);
	and andB37 (B37 ,A[6], AN5, A[3], A[1]);
	and andB38 (B38 ,A[5], AN4, AN3);
	and andB39 (B39 ,AN5, A[3], A[2], A[1]);
	and andB391 (B391 ,AN5, AN4, A[3], A[2]);
	and andB392 (B392 ,AN5, AN4, A[3], A[1]);
	or orB30 (B[4] ,B30, B31, B32, B33, B34, B35, B36, B37, B38, B39, B391, B392);
	
	//==================================== Saida B[3] =================================
	//A' B' C D E F'  + A' B' C D' E' F  + A' B C D E' F  + A B' C D E' F'  
	//+ A' B C D' E' F' + A B' C' D E F  + A' B' C' D E' F'  + B C' D' E F  
	//+ A C' D' E F'  + A B C' D E' F'  + A B C' D' F ;
	wire B40, B41, B42, B43, B44, B45, B46, B47, B48, B49, B491;
	and andB40 (B40 ,AN6, AN5, A[4], A[3], A[2], AN1);
	and andB41 (B41 ,AN6, AN5, A[4], AN3, A[1]);
	and andB42 (B42 ,AN6, A[5], A[4], A[3], AN2, A[1] );
	and andB43 (B43 ,A[6], AN5, A[4], AN2, AN1);
	and andB44 (B44 ,AN6, A[5], A[4], AN3, AN2, AN1);
	and andB45 (B45 ,A[6], AN5, AN4, A[3], A[2], A[1]);
	and andB46 (B46 ,AN6, AN5, AN4, A[3], AN2, AN1);
	and andB47 (B47 ,A[5], AN4, AN3, A[2], A[1]);
	and andB48 (B48 ,A[6], AN4, AN3, A[2], AN1);
	and andB49 (B49 ,A[6], AN4, A[3], AN2, AN1);
	and andB491 (B491 ,A[5], A[4], AN3, AN3, A[1]);
	or orB40 (B[3] ,B40, B41, B42, B43, B44, B45, B46, B47, B48, B49, B491);

	//==================================== Saida B[2] =================================
	//A' C' D' E F'  + A' B' C' E F  + A' B C' D E  + A' C D E' F'  
	//A C' D' E' F' + A' B C D' E F  + A B' C E F  + A B' C D' E  
	//A' B C' D' E' F  + A B' C' E' F  + A' B' C D E'  + A' B' C E' F'  
	// A B' C' D E F' ;
	wire B50, B51, B52, B53, B54, B55, B56, B57, B58, B59, B591, B592, B593;
	and andB50 (B50 ,AN6, AN4, AN3, A[2], AN1);
	and andB51 (B51 ,AN6, AN5, AN4, A[2], A[1]);
	and andB52 (B52 ,AN6, A[5], AN4, A[3], A[2]);
	and andB53 (B53 ,AN6, A[4], A[3], AN2, AN1);
	and andB54 (B54 ,A[6], AN4, AN3, AN2, AN1);
	and andB55 (B55 ,AN6, A[5], AN3, A[2], A[1]);
	and andB56 (B56 ,A[6], AN5, A[4], A[2], A[1]);
	and andB57 (B57 ,A[6], AN5, A[4], AN3, A[2]);
	and andB58 (B58 ,AN6, A[5], AN4, AN3, AN2, A[1]);
	and andB59 (B59 ,A[6], AN5, AN4, AN2, A[1]);
	and andB591 (B591 ,AN6, AN5, A[4], A[3], AN2);
	and andB592 (B592 ,AN6 , AN5, A[4], AN2, AN1);
	and andB593 (B593 ,A[6], AN5, AN4, A[3], A[2], AN1);
	or orB50 (B[2] ,B50, B51, B52, B53, B54, B55, B56, B57, B58, B59, B591, B592, B593);
	
	//==================================== Saida B[1] =================================
	//B' C' D' E' F  + A' B' D' E F  + A B' C D' F  + B C' D' E' F'  
	//A B' D E F'  + A B' C' D F'  + A' B C D E' F'  + A' B D E F   
	//A' B D' E F'  + A' B C' D F  + A' B' C D E' F  + A' B' C D' E' F'  
	//B' C' D E F' ;
	wire B60, B61, B62, B63, B64, B65, B66, B67, B68, B69, B691, B692, B693;	
	and andB60 (B60 ,AN5, AN4, AN3, AN2, A[1]);
	and andB61 (B61 ,AN6, AN5, AN4, A[2], A[1]); 
	and andB62 (B62 ,A[6], AN5, A[4], AN3, A[1]);
	and andB63 (B63 ,A[5], AN4, AN3, AN2, AN1);	 
	and andB64 (B64 ,A[6], AN5, A[3], A[2], AN1);
	and andB65 (B65 ,A[6], AN5, AN4, A[3], AN1);
	and andB66 (B66 ,AN6, A[5], A[4], A[3], AN2, AN1);
	and andB67 (B67 ,AN6, A[5], A[3], A[2], A[1]);
	and andB68 (B68 ,AN6, A[5], AN3, A[2], AN1);
	and andB69 (B69 ,AN6, A[5], AN4, A[3], A[1]);
	and andB691 (B691 ,AN6, AN5, A[4], A[3], AN2, A[1]);
	and andB692 (B692 ,AN6 , AN5, A[4], AN3, AN2, AN1);
	and andB693 (B693, AN5, AN4, A[3], A[2], AN1);
	
	or orB60 (B[1] ,B60, B61, B62, B63, B64, B65, B66, B67, B68, B69, B691, B692, B693);
	
	//==================================== Saida B[0] =================================
	// A B C' D E' F'  + A B C' D' E  + B' G + A' G +  C' D' G;
	wire B70, B71, B72, B73, B74;
	and andB70 (B70 ,A[6], A[5], AN4, A[3], AN2, AN1);
	and andB71 (B71 ,A[6], A[5], AN4, AN3, A[2]);
	and andB72 (B72 ,AN5, A[0]);
	and andB73 (B73 ,AN6, A[0]);
	and andB74 (B74 ,AN4, AN3, A[0]);
	or orB70 (B[0] ,B70, B71, B72, B73, B74);
	
	//==================================== Saida Passou 99 =================================
	//Passou99 = A B C' D E' F'  + A B C' D' E ;
	wire P1, P2;
	and andP1 (P1 ,A[6], A[5], AN4, A[3], AN2, AN1);
	and andP2 (P2 ,A[6], A[5], AN4, AN3, A[2]);
	or orP1 (Passou99 ,P1, P2);
	
endmodule  