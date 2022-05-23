module cronometroRegressivo (clock_in, resetNumero, chaveParar, chaveEscolherCronometro , saida, buzzer);
	
	input clock_in, resetNumero, chaveParar, chaveEscolherCronometro;
	output reg [4:0] saida;
	output reg buzzer;
	
	wire [9:0] saidaF;
	wire [1:0] buzzerF;
	
	cronometroRegressivo14 cronometro14 (.clock_in(clock_in), .reset14(resetNumero), .chaveParar(chaveParar), .chaveNumero(chaveEscolherCronometro), .saida(saidaF[4:0]), .buzzer(buzzerF[0]));
	cronometroRegressivo24 cronometro24 (.clock_in(clock_in), .reset24(resetNumero), .chaveParar(chaveParar), .chaveNumero(chaveEscolherCronometro), .saida(saidaF[9:5]), .buzzer(buzzerF[1]));
	
	always @* begin
		case (chaveEscolherCronometro)
			1'b0 : begin saida = saidaF[4:0]; buzzer = buzzerF[0]; end
			1'b1 : begin saida = saidaF[9:5]; buzzer = buzzerF[1]; end
		endcase 
	end
	
	
endmodule 