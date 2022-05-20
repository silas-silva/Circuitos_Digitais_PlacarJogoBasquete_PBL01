module muxEscolherDigBcdParaDisplay(N, escolha, S);
	input [7:0] N;
	input escolha;
	output reg [3:0] S;

	always @* begin
		case (escolha)
			1'b0 : begin 
				S = N[3:0];
			end
			1'b1 : begin 
				S = N[7:4];
			end
		endcase 
	end
	

endmodule 