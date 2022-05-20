module cronometroRegressivo (chaveParar, chave24, chave14, clock1hz, cronometro);
	
	//Entradas
	input chaveParar, chave24, chave14, clock1hz ;
	
	//Saidas
	output [4:0] cronometro;
	
	//Wires
	wire T = 1'b1;
	wire clock1Segundo, chavePararNegada, ch14negada, saidaOr3;
	wire [4:0] pr, clr, Q;
	wire saidaOr4, saidaOr4Negada, saidaOr5, saidaOr5Negada, saidaAnd12, saidaAnd13;
	wire [4:0] n;
	//initial n = 5'b00000;
	wire saidaAnd15, saidaAnd16, saidaOr2;
	wire saidaAnd17;
	wire [4:0] nNeg;




	
	//Modules
	//and1
	not (chavePararNegada, chaveParar);
	and and1 (clock1Segundo, chavePararNegada, clock1hz);
	
	//Registradores
	T_FF ff1 (.T(T), .clk(clock1Segundo), .clr(clr[0]), .pr(pr[0]), .Q(cronometro[0]));
	T_FF ff2 (.T(T), .clk(cronometro[0]), .clr(clr[1]), .pr(pr[1]), .Q(cronometro[1]));
	T_FF ff3 (.T(T), .clk(cronometro[1]), .clr(clr[2]), .pr(pr[2]), .Q(cronometro[2]));
	T_FF ff4 (.T(T), .clk(cronometro[2]), .clr(clr[3]), .pr(pr[3]), .Q(cronometro[3]));
	T_FF ff5 (.T(T), .clk(cronometro[3]), .clr(clr[4]), .pr(pr[4]), .Q(cronometro[4]));
	
	//or4, or5, and12, and13
	or or4 (saidaOr4 ,cronometro[0], cronometro[1], cronometro[2], cronometro[3], cronometro[4]);
	not (saidaOr4Negada, saidaOr4);
	and and12 (saidaAnd12 ,cronometro[4], cronometro[3]);
	and and13 (saidaAnd13 ,cronometro[3], cronometro[2], cronometro[1]);
	or or5 (saidaOr5, saidaAnd12, saidaAnd13);
	not (saidaOr5Negada, saidaOr5);
	
	
	//Entradas Botões and14
	and and14 (n[4], ch14negada, chave24);
	or or1 (n[3], chave14, chave24);
	//not not1 (n[2], ch14negada);
	//not not2 (n[1], ch14negada);
	//not not3 (n[0], T);
	assign n[1] = chave14;
	assign n[1] = chave14;
	assign n[0] = 1'b0; 
	
	//and15, and16, or2
	and and15 (saidaAnd15, n[4], n[3]);
	and and16 (saidaAnd16, n[3], n[2], n[1]);
	or or2 (saidaOr2, saidaAnd15, saidaAnd16);
	
	//and17
	and and17 (saidaAnd17, saidaOr5Negada, saidaOr2);
	
	//or3
	or or3 (saidaOr3, saidaAnd17, saidaOr4Negada);
	
	
	// numero 24 ou 14 negado
	not (nNeg[0], n[0]);
	not (nNeg[1], n[1]);
	not (nNeg[2], n[2]);
	not (nNeg[3], n[3]);
	not (nNeg[4], n[4]);
	
	//and7 a and11
	and and7 (pr[0], n[0], saidaOr3);
	and and8 (pr[1], n[1], saidaOr3);
	and and9 (pr[2], n[2], saidaOr3);
	and and10 (pr[3], n[3], saidaOr3);
	and and11 (pr[4], n[4], saidaOr3);
	
	//and2 a and6
	and and2 (clr[0], nNeg[0], saidaOr3);
	and and3 (clr[1], nNeg[1], saidaOr3);
	and and4 (clr[2], nNeg[2], saidaOr3);
	and and5 (clr[3], nNeg[3], saidaOr3);
	and and6 (clr[4], nNeg[4], saidaOr3);
	
endmodule 