module cronometroRegressivo14(clock_in, reset14, chaveParar, chaveNumero, saida, buzzer);

	//entradas
	input clock_in, chaveParar, reset14, chaveNumero;
	
	//saidas
	output[4:0] saida;
	output buzzer;
		
	//Registrador
	reg [4:0] counter;
	reg nBuzzer;

	initial counter = 5'b01110;
	initial nBuzzer = 1'b0;
	
	assign saida = counter;
	assign buzzer = nBuzzer;
	
	always @(negedge clock_in)
	begin
		if ( counter != 5'b00000 && chaveParar == 1'b0 && chaveNumero == 1'b0) // Verificar se é diferente de 0
		begin
			counter <= counter - 1; // A cada mudança do clock o counter é decrementado
		end
		if (counter != 5'b01110 && reset14 == 1'b1)
		begin 
			nBuzzer <= 1'b0;
			counter <= 5'b01110;
		end 
		if ( counter == 5'b00000)
		begin 
			nBuzzer <= 1'b1; //Ativa o buzzer
		end 
		if (counter != 5'b00000 && nBuzzer == 1'b1)
		begin 
			nBuzzer <= 1'b0;
		end 
	end 

endmodule 