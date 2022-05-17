module main (clock, botoesEntrada, chave24, chave14, chaveParar, cronometro, buzzer);
		
		//Entradas
		input [2:0] botoesEntrada;
		input clock, chave24, chave14, chaveParar;
		
		//Saidas
		output [4:0] cronometro;
		output buzzer;
		
		//Wires
		wire [1:0] bEntrada, buzzerEscolher;
		wire [6:0] soma;
		wire [4:0] segsEntrada;
		wire [9:0] cronometroEscolher;
		
		//Modulos
		//btnsEntrada entradasBotoes ( .A(botoesEntrada[0]), .B(botoesEntrada[1]), .C(botoesEntrada[2]), .N(bEntrada));
		//somadorSubtrator7bts somador (.A(7'0000001), .B(bEntrada), .Cin(1'b0), .S(soma), .Cout());
		
		//comparadorDeMagnitude comparador ( .chavePN(), .B(), .A(), .F());

		controleCronometro controlCronometro (.ch24(chave24), .ch14(chave14), .N(segsEntrada));
		
		cronometroRegressivo moduleCronometro (.clock_in(clock), .segundosEntrada(segsEntrada) ,.saida(cronometro), .buzzer(buzzer));

	
		
endmodule 