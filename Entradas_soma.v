module Entradas_soma ( A, B, C, ChaveNegativaPositiva, MudarTime, N1, SaidaBtns, S, Cout, time1d1,time1d2, time2d1, time2d2, buzzer, led1, led2);
	input A, B, C, ChaveNegativaPositiva, MudarTime;
	input [6:0] N1;
	output [1:0] SaidaBtns;
	output [6:0] S;
	output [10:0] time1d1, time1d2, time2d1, time2d2;
	output reg led1;
	output Cout, buzzer, led2;
	
	btnsEntrada entradas (.A(A), .B(B), .C(C), .N(SaidaBtns));	
	wire valido;
	
	//Comparar o SaidaBtns com S
	comparador comparar (SaidaBtns, S, valido);
	//Saida com a resposta 1 para numero valido 0 para invalido
		
	always @* begin 
		case (ChaveNegativaPositiva) // Se for negativo
			1'b1 : begin 
				case (valido) // Se o numero for invalido
					1'b0 : begin 
						//Se não 'Ligar led para sinalizar numero invalido'
						led1 = 1'b1;
					end	
					default: led1 = 1'b0;
				endcase
			end
			1'b0 : led1 = 1'b0;
		endcase 
	end 
	
	//Se for verdade 'Soma' e mostra
	somador_subtrator7bts resultado (.A(N1), .B(SaidaBtns), .Cin(ChaveNegativaPositiva), .S(S), .Cout(Cout));
	
	//Comparar se é maior que 99 para alertar com buzina e led
	compararMais99 comparar99 (.N(S), .Buzzer(buzzer), .led(led2));
	
	//Decodificador para mostrar no display
	decodificadorDisplay7Segmentos display (.pontos(S), .timeBasquete(MudarTime), .display1Time0(time1d1),.display2Time0(time1d2), .display1Time1(time2d1), .display2Time1(time2d2));	
	

	
endmodule 