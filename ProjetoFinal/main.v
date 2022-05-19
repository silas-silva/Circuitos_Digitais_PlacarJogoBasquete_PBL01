module main (clock, /*botoesEntrada,*/ chave24, chave14, btnMudar, chaveParar, display, cronometro1, escolhaDisplay ,buzzer);
		
		//Entradas
		//input [2:0] botoesEntrada;
		input clock, chave24, chave14, chaveParar, btnMudar;
		
		//Saidas
		
		output buzzer;
		output [6:0] display;
		output [3:0] escolhaDisplay;
		output [4:0] cronometro1;
		
		//Wires
		wire [1:0] bEntrada, buzzerEscolher;
		wire [6:0] soma;
		wire [4:0] segsEntrada, cronometro;
		wire [7:0] numBCD;
		wire [3:0] entDisplay;
		wire [7:0] digDisplay = 8'b10111101;
		wire [3:0] frequencias;
		
		assign cronometro1 = cronometro;
		//Modulos
		
		clockDivider(.clock_in(clock), .frequencias(frequencias) );
		
		//btnsEntrada entradasBotoes ( .A(botoesEntrada[0]), .B(botoesEntrada[1]), .C(botoesEntrada[2]), .N(bEntrada));
		//somadorSubtrator7bts somador (.A(7'0000001), .B(bEntrada), .Cin(1'b0), .S(soma), .Cout());
		
		//comparadorDeMagnitude comparador ( .chavePN(), .B(), .A(), .F());

		//controleCronometro controlCronometro (.ch24(chave24), .ch14(chave14), .N(segsEntrada));
		
		cronometroRegressivo moduleCronometro (.clock_in(clock), .segundosEntrada(segsEntrada),.chave14(chave14), .chave24(chave24), .btnMudar(btnMudar), .chaveParar(chaveParar) ,.saida(cronometro), .buzzer(buzzer));
		
		conversorBinarioBcd convertBinBCD ( .A(cronometro), .B(numBCD), .Passou99());
		
		//mux 8 para 4
		muxEscolherDig (.N(numBCD), .escolha(frequencias[1]), .S(entDisplay));
		
		decod7segs(.BCD(entDisplay), .n7Segs(display));
		
		muxEscolherDig (.N(digDisplay), .escolha(frequencias[1]), .S(escolhaDisplay));
		//Mux escolher display
		
		
endmodule 