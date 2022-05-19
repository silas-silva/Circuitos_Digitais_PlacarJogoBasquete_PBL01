module main (clock, botoesEntrada, chave24, chave14, chaveTime, chaveNegativaPositiva, btnMudar, chaveParar, display, barraDeLed, escolhaDisplay , led,buzzer);
		
		//Entradas
		input [2:0] botoesEntrada;
		input clock, chave24, chave14,chaveTime, chaveParar, btnMudar,chaveNegativaPositiva;
		
		//Saidas
		 
		output buzzer, led, barraDeLed;
		output [6:0] display;
		output [3:0] escolhaDisplay;
		
		//Wires
		wire [1:0] bEntrada;
		wire [6:0] soma, regT1, regT2, acumuladorT1, acumuladorT2, regParaSomador;
		wire [4:0] segsEntrada, cronometro;
		wire [7:0] numBCD;
		wire [3:0] entDisplay;
		wire [3:0] frequencias;
				
		//Modulos
		
		//Parte 1 do desenho do Circuito ====================== ( Antes Do mux de escolher Soma ou Cronometro )
		
		clockDivider divisorDeClock(.clock_in(clock), .frequencias(frequencias) );
		
		btnsEntrada entradasBotoes ( .A(botoesEntrada[0]), .B(botoesEntrada[1]), .C(botoesEntrada[2]), .N(bEntrada));
		
		
		somadorSubtrator7bts somador (.A(regParaSomador), .B(bEntrada), .Cin(1'b0), .S(soma), .Cout());
			
		demuxEscolherTime escolherRegTime (.entSomador(soma), .escolhaTime(chaveTime), .reg1(regT1), .reg2(regT2));

		registradorParalelo7bit regTime1 (.entrada(regT1), .clock(), .saida(acumuladorT1));
		registradorParalelo7bit regTime2 (.entrada(regT2), .clock(), .saida(acumuladorT2));
		
		muxEscolherTime escolherTimeSomar (.reg1(acumuladorT1), .reg2(acumuladorT2), .chaveTime(chaveTime), .saidaParaSomador(regParaSomador));
		
		comparadorDeMagnitude comparador ( .chavePN(chaveNegativaPositiva), .B(bEntrada), .A(regParaSomador), .F(led));

		cronometroRegressivo moduleCronometro (.clock_in(frequencias[2]), .segundosEntrada(segsEntrada),.chave14(chave14), .chave24(chave24), .btnMudar(btnMudar), .chaveParar(chaveParar) ,.saida(cronometro), .buzzer(buzzer));
		
		// FIM Parte 1 ================================================================================
		
		wire [6:0] numParaBDC;
		
		muxCronometroPlacar cronometroOuPlacar (.placarT1(acumuladorT1), .placarT2(acumuladorT2), .cronometro(cronometro) , .clock2segs(frequencias[3]), .clock60hz(frequencias[1]) , .saida(numParaBDC));

		
		conversorBinarioBcd convertBinBCD ( .A(numParaBDC), .B(numBCD), .Passou99(barraDeLed));
		
		//mux 8 para 4
		muxEscolherDig selecionarDigito (.N(numBCD), .escolha(frequencias[1]), .S(entDisplay));
		
		decod7segs decodificador7Segnmentos(.BCD(entDisplay), .n7Segs(display));
		
		muxAlternarCronometroPlacarNoDisplay digDisplayLigar (.clock2segs(frequencias[3]) , .clock60hz(frequencias[1]), .clock120hz(frequencias[0]), .saida(escolhaDisplay));
		
		//Mux escolher display
		
		
endmodule 