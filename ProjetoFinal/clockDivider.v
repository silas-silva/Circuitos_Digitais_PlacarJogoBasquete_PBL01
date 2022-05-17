module clockDivider(clock_in, frequencias );

	//entradas
	input clock_in;
	
	//saidas
	output [4:0] frequencias;
	
	//Registrador
	reg [26:0] counter;
	initial counter = 0;
	
	//Entrada vai ser 50MHz
	// Bit 00 do contador : 25Mhz;
	// Bit 18 do contador : Dobro do de baixo  - Simular o de 120hz (Por enquanto)
	// Bit 19 do contador : 95,367hz
	// Bit 24 do contador : 2,98hz 
	// Bit 25 do contador : 1,49hz 
	
	// Bit 26 do contador : 0,745hz / Simular o de 2 segundos (Por enquanto)
	
	assign frequencias[0] = counter[18]; // 120hz
	assign frequencias[1] = counter[19]; // 60hz
	assign frequencias[2] = counter[25]; // 1 seg
	assign frequencias[3] = counter[26]; // 2 segs
	
	
	always @(posedge clock_in)
	begin
		counter <= counter + 1; // A cada mudança do clock o counter é incrementado
		if ( counter == 27'b111111111111111111111111111 ) // Verificar se chegaou no maximo, para tratar o estouro do numero
		begin
			counter <= 27'd0; //Reseta o contador
		end
	
	end 

endmodule 