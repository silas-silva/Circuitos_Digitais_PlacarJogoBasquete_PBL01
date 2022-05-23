module T_FF (T, clk, clr, pr, Q);
	
	//Entradas
	input T, clk, clr, pr;
	
	//Saidas
	output reg Q;
	
	always @(posedge clk) begin
		if(clr) begin
			Q <= 1'b0;
		end
		else if(pr) begin
			Q <= 1'b1;
		end
		else begin
			case(T)
				1'b0 : Q <= Q;
				1'b1 : Q <= ~Q;
			endcase
		end
	end

endmodule 