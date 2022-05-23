module registradorParalelo7bit(entrada, clock, saida);
	input [6:0]entrada;
	input clock;
	output [6:0]saida;
	
	reg [6:0] bits;
	
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
	end

endmodule 