module mux16pra4(seletor1 ,seletorTime , saida);
	input seletor1, seletorTime;
	output reg [3:0] saida;
	
	// 0111 1101 invertido isso 1101 0111
	// 1011 1110 e esse
//	assign OP1 = 8'b11010111;
//	assign OP2 = 8'b11101011;
//	wire [3:0] s1;
//	wire [3:0] s2;
//	wire [7:0] entradaFinal;
//
//	mux8pra4 mux1 (.N(OP1), .escolha(seletorTime), .S(s1));
//	
//	mux8pra4 mux2 (.N(OP2), .escolha(seletorTime), .S(s2));
//	
//	retornar8 R (.n1(s1), .n2(s2), .saida(entradaFinal));
//	mux8pra4 mux3 (.N(entradaFinal), .escolha(seletor1), .S(saida));
	
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
