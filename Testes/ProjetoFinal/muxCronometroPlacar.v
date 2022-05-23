module muxCronometroPlacar(placarT1, placarT2, cronometro ,clock2segs, clock60hz , saida);
	input [6:0] placarT1, placarT2;
	input [4:0] cronometro;
	input clock2segs, clock60hz;
	output reg [6:0] saida;
	
	always @* begin
		case (clock2segs)
			1'b0 : begin 
						case(clock60hz)
							1'b0 : saida = placarT1;
							1'b1 : saida = placarT2;
						endcase 
					end
			1'b1 : begin saida[6:5] = 2'b00; saida[4:0] = cronometro; end
		endcase 
	end
	

endmodule 
