module cronometroRegressivo (chaveParar, chave24, chave14, clock1hz, cronometro);
	
	//Entradas
	input chaveParar, chave24, chave14, clock1hz ;
	
	//Saidas
	output [4:0] cronometro;
	
	//Wires
	wire constZero = 1'b1;
	
	
	//Modules
	//Validação parar cronometro
	//wire
	wire clock1Segundo, ch14negada, chavePararNegada;
	not (chavePararNegada, chaveParar);
	and and1 (clock1Segundo, chavePararNegada, clock1hz);
	
	//Entradas Botões
	//wire
	wire [4:0] n;
	and and2 (n[4], ch14negada, chave24);
	or or1 (n[3], chave14, chave24);
	not not1 (n[2], ch14negada);
	not not2 (n[1], ch14negada);
	not not3 (n[0], constZero);
	
	//
	//wire
	wire [1:0] v;
	wire l;
	and (v[0], n[4], n[3]);
	and (v[1], n[3], n[2], n[1]);
	or (l, v[0], v[1]);
	
	//
	//wire
	wire [4:0] nNeg;
	not (nNeg[0], n[0]);
	not (nNeg[1], n[1]);
	not (nNeg[2], n[2]);
	not (nNeg[3], n[3]);
	not (nNeg[4], n[4]);
	
	//
	wire [4:0] pr, clr, Q;
	wire validarPassarReg;
	
	assign cronometro = Q;

	and (pr[0], n[0], validarPassarReg);
	and (pr[1], n[1], validarPassarReg);
	and (pr[2], n[2], validarPassarReg);
	and (pr[3], n[3], validarPassarReg);
	and (pr[4], n[4], validarPassarReg);
	
	and (clr[0], nNeg[0], validarPassarReg);
	and (clr[1], nNeg[1], validarPassarReg);
	and (clr[2], nNeg[2], validarPassarReg);
	and (clr[3], nNeg[3], validarPassarReg);
	and (clr[4], nNeg[4], validarPassarReg);
	
	
	//
	wire T = 1'b1;
	wire validarChegarA0, validarChegarA0Negado, validar14, validar24, validarNumeros, validarNumerosNegado, validar;
	T_FF (.T(T), .clk(clock1Segundo), .clr(clr[0]), .pr(pr[0]), .Q(Q[0]));
	T_FF (.T(T), .clk(Q[0]), .clr(clr[1]), .pr(pr[1]), .Q(Q[1]));
	T_FF (.T(T), .clk(Q[1]), .clr(clr[2]), .pr(pr[2]), .Q(Q[2]));
	T_FF (.T(T), .clk(Q[2]), .clr(clr[3]), .pr(pr[3]), .Q(Q[3]));
	T_FF (.T(T), .clk(Q[3]), .clr(clr[4]), .pr(pr[4]), .Q(Q[4]));
	 
	
	//
	or (validarChegarA0 ,Q[0], Q[1], Q[2], Q[3], Q[4]);
	not (validarChegarA0Negado ,validarChearA0);
	
	
	//
	and (validar14, Q[3], Q[2], Q[1]);
	and (validar24, Q[4], Q[3]);
	
	//
	or (validarNumeros, validar14, validar24);
	not (validarNumerosNegado, validarNumeros);
	
	and (validar, validarNumerosNegado, l);
	
	//
	or(validarPassarReg, validar, validarChegarA0Negado);
	
	
	
endmodule 