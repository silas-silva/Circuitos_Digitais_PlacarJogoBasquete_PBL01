module registradorParalelo8bit(entrada, clock, saida);
	input [7:0]entrada;
	input clock;
	output [7:0]saida;
	
	reg [7:0] bits;
	
	assign saida = bits;
	
	always @(posedge clock) begin
		bits <= saida << 1;
		bits[0] <= entrada[0];
		bits[1] <= entrada[1];
		bits[2] <= entrada[2];
		bits[3] <= entrada[3];
		bits[4] <= entrada[4];
		bits[5] <= entrada[5];
		bits[6] <= entrada[6];
		bits[7] <= entrada[7];
	end

endmodule 