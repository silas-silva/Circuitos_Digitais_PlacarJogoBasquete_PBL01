module cronometroRegressivo(clock_in, segundosEntrada ,saida, buzzer);

	//entradas
	input clock_in;
	input [4:0] segundosEntrada;
	
	//saidas
	output [4:0] saida;
	output buzzer;
	
	//Registrador
	reg [4:0] counter;
	initial counter = 5'b00000;
	
	reg nBuzzer;
	initial nBuzzer = 1'b0;
	
	assign saida = counter;
	assign buzzer = nBuzzer;
	

	
	
	always @(negedge clock_in)
	begin
		always @(segundosEntrada)
			begin
			if(segundosEntrada == 5'b11000) begin
				counter <= 5'b11000; 
				nBuzzer <=  1'b0;
			end 
			if(segundosEntrada == 5'b01110) begin
				counter <= 5'b01110; 
				nBuzzer <=  1'b0;
			end 
		end
		if ( counter != 5'b00000 ) // Verificar se é diferente de 0
		begin
			counter <= counter - 1; // A cada mudança do clock o counter é decrementado
		end
		if ( counter == 5'b00000 )
		begin 
			nBuzzer <= 1; //Ativa o buzzer
		end 
	end 

endmodule 