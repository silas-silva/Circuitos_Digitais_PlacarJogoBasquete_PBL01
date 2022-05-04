module cronometroTeste(clock,buzzer,display,escolhaDisplay);
	
	//Botoes de entrada
	//numeros de simulação simulação
	//comparador
	//somador
	//Conversor bin/bcd
	//Mux 8 pra 4
	//Mux 16 para 4
	
	input clock;
	output buzzer;
	output [6:0] display;
	output [3:0] escolhaDisplay;

	wire [7:0] digitosBCD;
	wire [3:0] digitosBCDdisplay;
	wire clock1hz;
	
	wire [4:0] entrada24  = 5'b11000;
	wire [4:0] regressao;
	wire [3:0] frequencias;
	wire chaveTime = 1'b0;
	wire teste;
	
	clockDivider50mhzTo1hz clock1hzz (.clock_in(clock), .clock_out(clock1hz));
	
	clockDivider divisorDeClock (.clock_in(clock), .frequencias(frequencias));
	
	
	
	cronometroRegressivo Cronometro (.clock_in(frequencias[3]) , .saida(regressao) , .buzzer(buzzer));

	conversorBinarioBcd bin_bcd ( .A(regressao), .B(digitosBCD), .Passou99(teste));
	
	mux16pra4 escolherDisplay (.seletor1(frequencias[0]), .seletorTime(chaveTime) , .saida(escolhaDisplay));

	mux8pra4 digitoMostrarDisplay (.N(digitosBCD), .escolha(frequencias[0]), .S(digitosBCDdisplay));
	
	decod7segs decodificador7segs (.BCD(digitosBCDdisplay), .n7Segs(display));

	
endmodule 