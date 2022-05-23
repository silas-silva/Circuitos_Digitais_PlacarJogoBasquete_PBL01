module muxAlternarCronometroPlacarNoDisplay(clock2segs ,clock60hz, clock120hz, saida);
	input clock2segs, clock60hz, clock120hz;
	output reg [3:0] saida;
		
	always @* begin
		case (clock2segs)
			1'b0 : begin //placar
				case (clock60hz)
					1'b0: begin 
						case(clock120hz) 
							1'b0: saida = 4'b0111;
							1'b1: saida = 4'b1011;
						endcase	
					end //Placar T1;
					1'b1: begin 
						case(clock120hz) 
							1'b0: saida = 4'b1101;
							1'b1: saida = 4'b1110;
						endcase	
					end //Placar t2;
				endcase 
			end
			1'b1 : begin //Cronometro
				case (clock60hz)
					1'b0: saida = 4'b1011;
					1'b1: saida = 4'b1101;
				endcase 
			end
			default: saida = 4'b1111;
		endcase 
	end
	

endmodule 
