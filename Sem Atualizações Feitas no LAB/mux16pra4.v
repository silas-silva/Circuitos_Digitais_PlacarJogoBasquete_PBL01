module mux16pra4(seletor1 ,seletorTime , saida);
	input seletor1, seletorTime;
	output reg [3:0] saida;
		
	always @* begin
		case (seletorTime)
			1'b0 : begin 
				case (seletor1)
					1'b0: saida = 4'b0111;
					1'b1: saida = 4'b1011;
				endcase 
			end
			1'b1 : begin 
				case (seletor1)
					1'b0: saida = 4'b1101;
					1'b1: saida = 4'b1110;
				endcase 
			end
			default: saida = 4'b1111;
		endcase 
	end
	

endmodule 
