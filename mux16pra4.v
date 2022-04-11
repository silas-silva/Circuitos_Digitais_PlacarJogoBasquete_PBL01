module mux16pra4(seletor1 ,seletorTime , saida);
	input seletor1, seletorTime;
	output [3:0] saida;
	
	// 0111 1101
	// 1011 1110
	assign OP1 = 8'b01111011;
	assign OP2 = 8'b11011110;
	
	wire [3:0] saida1;
	wire [3:0] saida2;
	wire [7:0] entradaFinal;

	mux8pra4 mux1 (OP1, seletorTime, saida1);
	mux8pra4 mux2 (OP2, seletorTime, saida2);
	
	retornar8 R(.n1(saida1), .n2(saida2), .saida(entradaFinal));
	
	mux8pra4 mux3 (entradaFinal, seletor1, saida);

endmodule 
