module compararMais99 (N, Buzzer, led, );
   input [6:0] N;
   output reg Buzzer, led;
   
   always @* begin 
		case (N)
			7'b1100100 : begin  // N = 100
				Buzzer = 1'b1;
				led = 1'b1;
			end
         7'b1100101 : begin  // N = 101
				Buzzer = 1'b1;
				led = 1'b1;
			end
			7'b1100110 : begin  // N = 102
				Buzzer = 1'b1;
				led = 1'b1;
			end
			7'b1100111 : begin  // N = 103
				Buzzer = 1'b1;
				led = 1'b1;
			end
			default: begin 
				Buzzer = 1'b0;
				led = 1'b0;
			end 
		endcase 
	end 

endmodule 