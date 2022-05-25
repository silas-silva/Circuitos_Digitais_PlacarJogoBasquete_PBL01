module D_FF (D, clk, clr, pr, Q);
	
	//Entradas
	input D, clk, clr, pr;
	
	//Saidas
	output reg Q;
	
	always @(posedge clk, posedge clr, posedge pr) begin
		if(clr) begin
			Q <= 1'b0;
		end
		else if(pr) begin
			Q <= 1'b1;
		end
		else begin
			Q <= D;
		end
	end

endmodule 