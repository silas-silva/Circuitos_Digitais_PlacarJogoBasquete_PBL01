module cronometroRegressivo(clock_in, segundosEntrada, chave14, chave24, btnMudar ,chaveParar ,saida, buzzer);

	//entradas
	input clock_in, chaveParar, chave24, chave14, btnMudar;
	input [4:0] segundosEntrada;
	
	//saidas
	output [4:0] saida;
	output buzzer;
	
	//Registrador
	reg [4:0] counter;
	initial counter = 5'b00000;
	
	reg [4:0] segundos;
	initial segundos = 5'b00000;
	
	reg nBuzzer;
	initial nBuzzer = 1'b0;
	
	reg validar24;
	initial validar24 = 1'b0;
	
	reg validar14;
	initial validar14 = 1'b0;
	
	assign saida = counter;
	assign buzzer = nBuzzer;
	
	always @(negedge clock_in)
	begin
		if((chave24 == 1'b1) && (chave14 == 1'b0)) begin
			validar24 <= 1'b1;
			validar14 <= 1'b0;
		end 
		else if((chave14 == 1'b1)) begin
			validar14 <= 1'b1;
			validar24 <= 1'b0;
		end 
		
		if(validar24 == 1'b1) begin
			validar24 <= 1'b0;
			counter <= 5'b11000; 
			nBuzzer <=  1'b0;
		end 
		else if(validar14 == 1'b1) begin
			validar14 <=  1'b0;
			counter <= 5'b01110; 
			nBuzzer <=  1'b0;
		end 
		if ( (counter != 5'b00000) && (chaveParar == 1'b0) && (btnMudar == 1'b1) ) // Verificar se é diferente de 0 e se a chave parar ta liberada
		begin
			counter <= counter - 1; // A cada mudança do clock o counter é decrementado
		end
		if ( (counter == 5'b00001)  && (chaveParar == 1'b0) && (btnMudar == 1'b1) )
		begin 
			nBuzzer <= 1; //Ativa o buzzer
		end 
	end 

endmodule 