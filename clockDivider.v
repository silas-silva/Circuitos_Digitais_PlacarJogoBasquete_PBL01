module clockDivider(clock_in, frequencias );

	//entradas
	input clock_in;
	
	//saidas
	output [4:0] frequencias;
	
	//Registrador
	reg [27:0] counter;
	initial counter = 0;
	
	//Entrada vai ser 50MHz
	// Bit 00 do contador : 25mhz
	// Bit 18 do contador : 95,367hz
	// Bit 23 do contador : 2,98hz
	// Bit 24 do contador : 1,49hz
	// Bit 25 do contador : 0,745hz
	
	
	assign frequencias[0] = counter[18];
	assign frequencias[1] = counter[19];
	assign frequencias[2] = counter[24];
	assign frequencias[3] = counter[27];
	
	
	always @(posedge clock_in)
	begin
		counter <= counter + 1; // A cada mudança do clock o counter é incrementado
		if ( counter == 28'b1111111111111111111111111111 ) // Verificar se chegaou no maximo, para tratar o estouro do numero
		begin
			counter <= 28'd0; //Reseta o contador
		end
	
	end 

endmodule 