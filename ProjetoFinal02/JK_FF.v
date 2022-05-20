module JK_FF (J, K, clk, clr, pr, Q);
	
	//Entradas
	input J, K, clk, clr, pr;
	
	//Saidas
	output reg Q;
	
	//Constantes Locais
	localparam MANTER = 2'b00, SET = 2'b10, RESET = 2'b01, COMPLEMENTO = 2'b11; 
	
	always @(posedge clk) begin
		if(clr) begin
			Q <= 1'b0;
		end
		else if(pr) begin
			Q <= 1'b1;
		end
		else begin
			case({J,K})
				MANTER : Q <= Q;
				RESET : Q <= 1'b0;
				SET : Q <= 1'b1;
				COMPLEMENTO: Q <= ~Q;
			endcase 
		end
	end

endmodule 