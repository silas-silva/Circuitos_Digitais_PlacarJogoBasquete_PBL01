module muxEscolherTime(t1, t2, escolha, S);
	input [6:0] t1, t2;
	input escolha;
	output reg [6:0] S;

	always @* begin
		case (escolha)
			1'b0 : begin 
				S = t1;
			end
			1'b1 : begin 
				S = t2;
			end
		endcase 
	end
	

endmodule 