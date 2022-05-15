module clockDivider50mhzTo1hz(clock_in, clock_out);

	//entradas
	input clock_in;
	
	//saidas
	output reg clock_out;
	
	//Registrador
	reg [24:0] counter;
	initial counter = 0;
	initial clock_out = 0;
	
	//1011111010111100000111111
	
	always @(posedge clock_in) begin
		if ( counter == 25'b0 ) begin // Verificar se em zero para resetar o valor
			counter <= 25'b1011111010111100000111111; //Reseta o contador
			clock_out <= ~clock_out; 
		end else begin
			counter <= counter -1;
		end
	end 

endmodule 