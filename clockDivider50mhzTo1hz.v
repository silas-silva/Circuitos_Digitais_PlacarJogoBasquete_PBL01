module clockDivider50mhzTo1hz(clock_in, clock_out);

	//entradas
	input clock_in;
	
	//saidas
	output [25:0] clock_out;
	
	//Registrador
	reg [25:0] counter;
	initial counter = 10111110101111000010000000;
	
	//Entrada vai ser 50MHz
	// Bit 26 do contador sai : 1Hz

	assign clock_out = counter; 
	
	always @(posedge clock_in)
	begin
		counter <= counter + 1; // A cada mudança do clock o counter é incrementado
		if ( counter == 26'd0 ) // Verificar se em zero para resetar o valor
		begin
			counter <= 26'b10111110101111000010000000; //Reseta o contador
		end
	end 

endmodule 