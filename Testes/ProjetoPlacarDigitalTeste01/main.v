module main (nSimulacao ,cBotoes ,chaveNP, chaveTime ,clock ,buzzer ,led ,display, escolhaDisplay);
	
	//Botoes de entrada
	//numeros de simulação simulação
	//comparador
	//somador
	//Conversor bin/bcd
	//Mux 8 pra 4
	//Mux 16 para 4
	
	input [6:0] nSimulacao;
	input [2:0] cBotoes;
	input chaveNP, chaveTime, clock;
	output buzzer ,led;
	output [6:0] display;
	output [3:0] escolhaDisplay;

	
	
	wire [1:0] somaBTNs;
	wire [6:0] soma; 
	wire [7:0] digitosBCD; 
	wire [7:0] digitosBCDPadraoMux;
	wire [3:0] digitosBCDdisplay; 
	wire Cout;

	
	
	
	btnsEntrada somaBotoes ( .A(cBotoes[0]), .B(cBotoes[1]), .C(cBotoes[2]), .N(somaBTNs));
	
	
	comparadorDeMagnitude comparar ( .chavePN(chaveNP), .B(somaBTNs), .A(nSimulacao), .F(led));
	
	
	somadorSubtrator7bts somador (.A(nSimulacao), .B(somaBTNs), .Cin(chaveNP), .S(soma), .Cout(Cout));

	
	conversorBinarioBcd bin_bcd ( .A(soma), .B(digitosBCD), .Passou99(buzzer));
	
	
	mux16pra4 escolherDisplay (.seletor1(clock), .seletorTime(chaveTime) , .saida(escolhaDisplay));
	
	
	mux8pra4 digitoMostrarDisplay (.N(digitosBCD), .escolha(clock), .S(digitosBCDdisplay));

	
	decod7segs decodificador7segs (.BCD(digitosBCDdisplay), .n7Segs(display));
	
	

	
endmodule 