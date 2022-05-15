module muxCronometroPlacar(placar, cronometro ,clock2segs , saida);
	input [6:0] placar;
	input [4:0] cronometro;
	input clock2segs;
	output reg [6:0] saida;
	
	always @* begin
		case (clock2segs)
			1'b0 :  saida = placar;
			1'b1 : begin saida[6:5] = 2'b00; saida[4:0] = cronometro; end
		endcase 
	end
	

endmodule 
