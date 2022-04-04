module somador_subitrator7bts (A, B, Cin, S, Cout);
	
	input [6:0] A;
	input [1:0] B;
	input Cin;
	output [6:0] S;
	output Cout;
	
	wire c1, c2, c3, c4, c5, c6;
	
	wire B1, B2, B3, B4, B5, B6, B7;
	
	xor xor0(B1, Cin, B[0]);
	xor xor1(B2, Cin, B[1]);
	xor xor2(B3, Cin, 0);
	xor xor3(B4, Cin, 0);
	xor xor4(B5, Cin, 0);
	xor xor5(B6, Cin, 0);
	xor xor6(B7, Cin, 0);	
	
	somador1bt r1 (.A(A[0]), .B(B1), .Cin(Cin), .S(S[0]), .Cout(c1));
	somador1bt r2 (.A(A[1]), .B(B2), .Cin(c1), .S(S[1]), .Cout(c2));
	somador1bt r3 (.A(A[2]), .B(B3), .Cin(c2), .S(S[2]), .Cout(c3));
	somador1bt r4 (.A(A[3]), .B(B4), .Cin(c3), .S(S[3]), .Cout(c4));
	somador1bt r5 (.A(A[4]), .B(B5), .Cin(c4), .S(S[4]), .Cout(c5));
	somador1bt r6 (.A(A[5]), .B(B6), .Cin(c5), .S(S[5]), .Cout(c6));
	somador1bt r7 (.A(A[6]), .B(B7), .Cin(c6), .S(S[6]), .Cout(Cout));
	
	
	

endmodule 
