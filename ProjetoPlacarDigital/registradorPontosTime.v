module registradorPontosTime (D, clr, pr ,clock, validarSoma, saida);
	
	input clr ,pr, clock, validarSoma;
	input [6:0] D;
	output [6:0] saida;
	
	wire saidaQ1, saidaQ2, somaValidada;
	
	D_FF ffdR01 (.D(validarSoma), .clk(clock), .clr(clr), .pr(pr), .Q(saidaQ1));
	D_FF ffdR02 (.D(saidaQ1), .clk(clock), .clr(clr), .pr(pr), .Q(saidaQ2));
	D_FF ffdR03 (.D(saidaQ2), .clk(clock), .clr(clr), .pr(pr), .Q(somaValidada));
	
	//Registrar pontos
	D_FF ffdRe01 (.D(D[0]), .clk(somaValidada), .clr(clr), .pr(pr), .Q(saida[0]));
	D_FF ffdRe02 (.D(D[1]), .clk(somaValidada), .clr(clr), .pr(pr), .Q(saida[1]));
	D_FF ffdRe03 (.D(D[2]), .clk(somaValidada), .clr(clr), .pr(pr), .Q(saida[2]));
	D_FF ffdRe04 (.D(D[3]), .clk(somaValidada), .clr(clr), .pr(pr), .Q(saida[3]));
	D_FF ffdRe05 (.D(D[4]), .clk(somaValidada), .clr(clr), .pr(pr), .Q(saida[4]));
	D_FF ffdRe06 (.D(D[5]), .clk(somaValidada), .clr(clr), .pr(pr), .Q(saida[5]));
	D_FF ffdRe07 (.D(D[6]), .clk(somaValidada), .clr(clr), .pr(pr), .Q(saida[6]));
	
	
endmodule 