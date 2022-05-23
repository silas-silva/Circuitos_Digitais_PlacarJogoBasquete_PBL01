module registradorParalelo7bits(clk, rst, x, value, tot);
	
	//Entradas
	input clk, rst, x;
	input [1:0] value;
	output reg [6:0] tot;
	
	//Registrador de Estado
	reg [1:0] state;
	
	//Codificação
	parameter inicio = 2'b00, espera = 2'b01, somar = 2'b10, espera2 = 2'b11;
	
	//Estado inicial
	initial begin
		state <= inicio;
		tot = 7'd0;
	end
	
	//Procedimento Unico. Sensivel ao clk e ao rst
	
	always @(posedge clk, posedge rst) begin
		
		//Caso inicial
		if(rst == 1'b1) begin 
			state <= inicio;
			tot = 7'd0;
		end
		//caso contrario
		else begin
			
			//verifica o estado
			case(state)
				//Inicio
				inicio : begin state <= espera; tot = 7'd0; end
				
				//Espera
				espera: begin  
					if(x == 1'b1) state <= espera;
					else state <= somar;
				end
				
				//somar ou Subtrair
				somar: begin 
					tot = tot + value; 
					state <= espera2; 

				end
				
				//Espera2
				espera2: begin  
					if(x == 1'b1) state <= espera;
					else state <= espera2;
				end
			endcase
		end
	end

endmodule 