module comparador (N1, N2, R);
   input [6:0] N2;
   input [1:0] N1;
   output reg R;
   
   always @* begin 
		case (N2)  
         7'b0000001 : begin 
				case (N1)
					2'b10 : R = 1'b0;
					2'b11 : R = 1'b0;
					default : R =  1'b1;
				endcase
			end
			7'b0000010 : begin 
				case (N1)
					2'b11 : R = 1'b0;
					default : R =  1'b1;
				endcase
			end 
			default: R = 1;   
		endcase 
	end 

endmodule 