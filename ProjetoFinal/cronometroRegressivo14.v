module cronometroRegressivo14(clock_in, validar ,saida, buzzer);

	//entradas
	input clock_in;
	input [4:0] validar;
	
	//saidas
	output[4:0] saida;
	output buzzer;
	
	//Registrador
	reg [4:0] counter;
	initial counter = 5'b01110;
	
	reg nBuzzer;
	initial nBuzzer = 1'b0;
	
	assign saida = counter;
	assign buzzer = nBuzzer;
	
	always @(negedge clock_in)
	begin
		if(validar == 5'b01110) begin 
			if ( counter != 5'b00000 ) // Verificar se é diferente de 0
			begin
				counter <= counter - 1; // A cada mudança do clock o counter é decrementado
			end
			if ( counter == 5'b00000 )
			begin 
				nBuzzer <= 1; //Ativa o buzzer
			end 
		end
		if(validar != 5'b01110) begin 
			counter <= 5'b00000;
		end
	end 

endmodule 