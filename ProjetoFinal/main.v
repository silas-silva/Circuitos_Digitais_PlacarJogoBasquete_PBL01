module main (clock, botoesEntrada, chave24, chave14, chaveTime, chaveNegativaPositiva, btnMudar, chaveParar, display, cronometro1, escolhaDisplay , led,buzzer);
		
		//Entradas
		input [2:0] botoesEntrada;
		input clock, chave24, chave14,chaveTime, chaveParar, btnMudar,chaveNegativaPositiva;
		
		//Saidas
		 
		output buzzer, led;
		output [6:0] display;
		output [3:0] escolhaDisplay;
		output [4:0] cronometro1;
		
		//Wires
		wire [1:0] bEntrada, buzzerEscolher;
		wire [6:0] soma, regT1, regT2, acumuladorT1, acumuladorT2, regParaSomador;
		wire [4:0] segsEntrada, cronometro;
		wire [7:0] numBCD;
		wire [3:0] entDisplay;
		wire [3:0] frequencias;
		
		assign cronometro1 = cronometro;
		
		//Modulos
		
		//Parte 1 do desenho do Circuito ====================== ( Antes Do mux de escolher Soma ou Cronometro )
		
		clockDivider(.clock_in(clock), .frequencias(frequencias) );
		
		btnsEntrada entradasBotoes ( .A(botoesEntrada[0]), .B(botoesEntrada[1]), .C(botoesEntrada[2]), .N(bEntrada));
		
		
		somadorSubtrator7bts somador (.A(regParaSomador), .B(bEntrada), .Cin(1'b0), .S(soma), .Cout());
			
		demuxEscolherTime escolherRegTime (.entSomador(soma), .escolhaTime(chaveTime), .reg1(), .reg2());

		registradorParalelo7bit regTime1 (.entrada(regT1), .clock(), .saida(acumuladorT1));
		registradorParalelo7bit regTime2 (.entrada(regT2), .clock(), .saida(acumuladorT2));
		
		muxEscolherTime escolherTimeSomar (.reg1(acumuladorT1), .reg2(acumuladorT2), .chaveTime(chaveTime), .saidaParaSomador(regParaSomador));
		
		comparadorDeMagnitude comparador ( .chavePN(chaveNegativaPositiva), .B(bEntrada), .A(regParaSomador), .F(led));

		cronometroRegressivo moduleCronometro (.clock_in(clock), .segundosEntrada(segsEntrada),.chave14(chave14), .chave24(chave24), .btnMudar(btnMudar), .chaveParar(chaveParar) ,.saida(cronometro), .buzzer(buzzer));
		
		// FIM Parte 1 ================================================================================
		
		wire [6:0] numParaBDC;
		
		muxCronometroPlacar(.placarT1(acumuladorT1), .placarT2(acumuladorT2), .cronometro(cronometro) , .clock2segs(), .clock60hz() , .saida(numParaBDC));

		
		conversorBinarioBcd convertBinBCD ( .A(numParaBDC), .B(numBCD), .Passou99());
		
		//mux 8 para 4
		muxEscolherDig (.N(numBCD), .escolha(frequencias[1]), .S(entDisplay));
		
		decod7segs(.BCD(entDisplay), .n7Segs(display));
		
		muxAlternarCronometroPlacarNoDisplay digDisplayLigar (.clock2segs() , .clock60hz(), .clock120hz(), .saida());
		
		//Mux escolher display
		
		
endmodule 