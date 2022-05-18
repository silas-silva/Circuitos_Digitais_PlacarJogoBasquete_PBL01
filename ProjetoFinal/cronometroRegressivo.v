module cronometroRegressivo(clock_in, segundosEntrada, chaveParar ,saida, buzzer);

	//entradas
	input clock_in;
	input chaveParar;
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
		if(segundosEntrada == 5'b11000) begin
			counter <= 5'b11000; 
			nBuzzer <=  1'b0;
		end 
		if(segundosEntrada == 5'b01110) begin
			counter <= 5'b01110; 
			nBuzzer <=  1'b0;
		end 
		if ( counter != 5'b00000 ) // Verificar se é diferente de 0 e se a chave parar ta liberada
		begin
			counter <= counter - 1; // A cada mudança do clock o counter é decrementado
		end
		if ( counter == 5'b00001)
		begin 
			nBuzzer <= 1; //Ativa o buzzer
		end 
	end 

endmodule 