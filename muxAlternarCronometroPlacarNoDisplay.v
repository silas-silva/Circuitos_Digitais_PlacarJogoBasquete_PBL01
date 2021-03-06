module muxAlternarCronometroPlacarNoDisplay( clock60hz, clock120hz, saida);
	input clock60hz, clock120hz;
	output reg [3:0] saida;
		
	always @* begin
		case (clock60hz)
			1'b0 : begin //placar
				case (clock120hz)
					1'b0: saida = 4'b1101;
					1'b1: saida = 4'b1110;
				endcase	
			end
			1'b1 : begin //Cronometro
				case (clock120hz) //Clock igual ao clock do escolher digito para não interferir no sincronismo da exibição.
					1'b0: saida = 4'b0111;
					1'b1: saida = 4'b1011;
				endcase 
			end
			default: saida = 4'b1111;
		endcase 
	end
	

endmodule 
