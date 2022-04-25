module clockDivider(clock_in, frequencias );

	//entradas
	input clock_in;
	
	//saidas
	output [4:0] frequencias;
	
	//Registrador
	reg [4:0] counter;
	initial counter = 0;
	
	//Entrada vai ser 50MHz
	// Bit 1 do contador : 25MHz
	// Bit 2 do contador : 12.5MHz
	// Bit 3 do contador : 6.250MHz
	// Bit 3 do contador : 3.1250MHz
	// Bit 3 do contador : 1.5625MHz
	// Bit 3 do contador : 0.78125MHz
	
	assign frequencias = counter; 
	
	always @(posedge clock_in)
	begin
		counter <= counter + 1; // A cada mudança do clock o counter é incrementado
		if ( counter == 5'b11111 ) // Verificar se chegaou no maximo, para tratar o estouro do numero
		begin
			counter <= 5'b0; //Reseta o contador
		end
	
	end 

endmodule 