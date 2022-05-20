module conversorBinarioBcd( A, B, Passou99);
	input [6:0] A;
	output reg [7:0] B;
	output reg Passou99;
	
	always @* begin	
		case(A)			
			7'b0000000 : begin B = 8'b00000000; Passou99 = 1'b0; end //0 
			7'b0000001 : begin B = 8'b00000001; Passou99 = 1'b0; end //1 
			7'b0000010 : begin B = 8'b00000010; Passou99 = 1'b0; end //2 
			7'b0000011 : begin B = 8'b00000011; Passou99 = 1'b0; end //3 
			7'b0000100 : begin B = 8'b00000100; Passou99 = 1'b0; end //4 
			7'b0000101 : begin B = 8'b00000101; Passou99 = 1'b0; end //5 
			7'b0000110 : begin B = 8'b00000110; Passou99 = 1'b0; end //6 
			7'b0000111 : begin B = 8'b00000111; Passou99 = 1'b0; end //7 
			7'b0001000 : begin B = 8'b00001000; Passou99 = 1'b0; end //8 
			7'b0001001 : begin B = 8'b00001001; Passou99 = 1'b0; end //9 
			7'b0001010 : begin B = 8'b00010000; Passou99 = 1'b0; end //10 
			7'b0001011 : begin B = 8'b00010001; Passou99 = 1'b0; end //11 
			7'b0001100 : begin B = 8'b00010010; Passou99 = 1'b0; end //12 
			7'b0001101 : begin B = 8'b00010011; Passou99 = 1'b0; end //13 
			7'b0001110 : begin B = 8'b00010100; Passou99 = 1'b0; end //14 
			7'b0001111 : begin B = 8'b00010101; Passou99 = 1'b0; end //15 
			7'b0010000 : begin B = 8'b00010110; Passou99 = 1'b0; end //16 
			7'b0010001 : begin B = 8'b00010111; Passou99 = 1'b0; end //17 
			7'b0010010 : begin B = 8'b00011000; Passou99 = 1'b0; end //18 
			7'b0010011 : begin B = 8'b00011001; Passou99 = 1'b0; end //19 
			7'b0010100 : begin B = 8'b00100000; Passou99 = 1'b0; end //20 
			7'b0010101 : begin B = 8'b00100001; Passou99 = 1'b0; end //21 
			7'b0010110 : begin B = 8'b00100010; Passou99 = 1'b0; end //22 
			7'b0010111 : begin B = 8'b00100011; Passou99 = 1'b0; end //23 
			7'b0011000 : begin B = 8'b00100100; Passou99 = 1'b0; end //24 
			7'b0011001 : begin B = 8'b00100101; Passou99 = 1'b0; end //25 
			7'b0011010 : begin B = 8'b00100110; Passou99 = 1'b0; end //26 
			7'b0011011 : begin B = 8'b00100111; Passou99 = 1'b0; end //27 
			7'b0011100 : begin B = 8'b00101000; Passou99 = 1'b0; end //28 
			7'b0011101 : begin B = 8'b00101001; Passou99 = 1'b0; end //29 
			7'b0011110 : begin B = 8'b00110000; Passou99 = 1'b0; end //30 
			7'b0011111 : begin B = 8'b00110001; Passou99 = 1'b0; end //31 
			7'b0100000 : begin B = 8'b00110010; Passou99 = 1'b0; end //32 
			7'b0100001 : begin B = 8'b00110011; Passou99 = 1'b0; end //33 
			7'b0100010 : begin B = 8'b00110100; Passou99 = 1'b0; end //34 
			7'b0100011 : begin B = 8'b00110101; Passou99 = 1'b0; end //35 
			7'b0100100 : begin B = 8'b00110110; Passou99 = 1'b0; end //36 
			7'b0100101 : begin B = 8'b00110111; Passou99 = 1'b0; end //37 
			7'b0100110 : begin B = 8'b00111000; Passou99 = 1'b0; end //38 
			7'b0100111 : begin B = 8'b00111001; Passou99 = 1'b0; end //39 
			7'b0101000 : begin B = 8'b01000000; Passou99 = 1'b0; end //40 
			7'b0101001 : begin B = 8'b01000001; Passou99 = 1'b0; end //41 
			7'b0101010 : begin B = 8'b01000010; Passou99 = 1'b0; end //42 
			7'b0101011 : begin B = 8'b01000011; Passou99 = 1'b0; end //43 
			7'b0101100 : begin B = 8'b01000100; Passou99 = 1'b0; end //44 
			7'b0101101 : begin B = 8'b01000101; Passou99 = 1'b0; end //45 
			7'b0101110 : begin B = 8'b01000110; Passou99 = 1'b0; end //46 
			7'b0101111 : begin B = 8'b01000111; Passou99 = 1'b0; end //47 
			7'b0110000 : begin B = 8'b01001000; Passou99 = 1'b0; end //48 
			7'b0110001 : begin B = 8'b01001001; Passou99 = 1'b0; end //49 
			7'b0110010 : begin B = 8'b01010000; Passou99 = 1'b0; end //50 
			7'b0110011 : begin B = 8'b01010001; Passou99 = 1'b0; end //51 
			7'b0110100 : begin B = 8'b01010010; Passou99 = 1'b0; end //52 
			7'b0110101 : begin B = 8'b01010011; Passou99 = 1'b0; end //53 
			7'b0110110 : begin B = 8'b01010100; Passou99 = 1'b0; end //54 
			7'b0110111 : begin B = 8'b01010101; Passou99 = 1'b0; end //55 
			7'b0111000 : begin B = 8'b01010110; Passou99 = 1'b0; end //56 
			7'b0111001 : begin B = 8'b01010111; Passou99 = 1'b0; end //57 
			7'b0111010 : begin B = 8'b01011000; Passou99 = 1'b0; end //58 
			7'b0111011 : begin B = 8'b01011001; Passou99 = 1'b0; end //59 
			7'b0111100 : begin B = 8'b01100000; Passou99 = 1'b0; end //60 
			7'b0111101 : begin B = 8'b01100001; Passou99 = 1'b0; end //61 
			7'b0111110 : begin B = 8'b01100010; Passou99 = 1'b0; end //62 
			7'b0111111 : begin B = 8'b01100011; Passou99 = 1'b0; end //63 
			7'b1000000 : begin B = 8'b01100100; Passou99 = 1'b0; end //64 
			7'b1000001 : begin B = 8'b01100101; Passou99 = 1'b0; end //65 
			7'b1000010 : begin B = 8'b01100110; Passou99 = 1'b0; end //66 
			7'b1000011 : begin B = 8'b01100111; Passou99 = 1'b0; end //67 
			7'b1000100 : begin B = 8'b01101000; Passou99 = 1'b0; end //68 
			7'b1000101 : begin B = 8'b01101001; Passou99 = 1'b0; end //69 
			7'b1000110 : begin B = 8'b01110000; Passou99 = 1'b0; end //70 
			7'b1000111 : begin B = 8'b01110001; Passou99 = 1'b0; end //71 
			7'b1001000 : begin B = 8'b01110010; Passou99 = 1'b0; end //72 
			7'b1001001 : begin B = 8'b01110011; Passou99 = 1'b0; end //73 
			7'b1001010 : begin B = 8'b01110100; Passou99 = 1'b0; end //74 
			7'b1001011 : begin B = 8'b01110101; Passou99 = 1'b0; end //75 
			7'b1001100 : begin B = 8'b01110110; Passou99 = 1'b0; end //76 
			7'b1001101 : begin B = 8'b01110111; Passou99 = 1'b0; end //77 
			7'b1001110 : begin B = 8'b01111000; Passou99 = 1'b0; end //78 
			7'b1001111 : begin B = 8'b01111001; Passou99 = 1'b0; end //79 
			7'b1010000 : begin B = 8'b10000000; Passou99 = 1'b0; end //80 
			7'b1010001 : begin B = 8'b10000001; Passou99 = 1'b0; end //81 
			7'b1010010 : begin B = 8'b10000010; Passou99 = 1'b0; end //82 
			7'b1010011 : begin B = 8'b10000011; Passou99 = 1'b0; end //83 
			7'b1010100 : begin B = 8'b10000100; Passou99 = 1'b0; end //84 
			7'b1010101 : begin B = 8'b10000101; Passou99 = 1'b0; end //85 
			7'b1010110 : begin B = 8'b10000110; Passou99 = 1'b0; end //86 
			7'b1010111 : begin B = 8'b10000111; Passou99 = 1'b0; end //87 
			7'b1011000 : begin B = 8'b10001000; Passou99 = 1'b0; end //88 
			7'b1011001 : begin B = 8'b10001001; Passou99 = 1'b0; end //89 
			7'b1011010 : begin B = 8'b10010000; Passou99 = 1'b0; end //90 
			7'b1011011 : begin B = 8'b10010001; Passou99 = 1'b0; end //91 
			7'b1011100 : begin B = 8'b10010010; Passou99 = 1'b0; end //92 
			7'b1011101 : begin B = 8'b10010011; Passou99 = 1'b0; end //93 
			7'b1011110 : begin B = 8'b10010100; Passou99 = 1'b0; end //94 
			7'b1011111 : begin B = 8'b10010101; Passou99 = 1'b0; end //95 
			7'b1100000 : begin B = 8'b10010110; Passou99 = 1'b0; end //96 
			7'b1100001 : begin B = 8'b10010111; Passou99 = 1'b0; end //97 
			7'b1100010 : begin B = 8'b10011000; Passou99 = 1'b0; end //98 
			7'b1100011 : begin B = 8'b10011001; Passou99 = 1'b0; end //99
			default: begin B = 8'b10011001; Passou99 = 1'b1; end
		endcase 
	end
	
endmodule  