module decodificadorDisplay7Segmentos (pontos, timeBasquete, display1Time0,display2Time0, display1Time1, display2Time1);
   input [6:0] pontos;
   input timeBasquete;
   output reg [10:0] display1Time0,display2Time0, display1Time1, display2Time1 ;
   
   always @* begin 
      case (pontos)  
         7'b0000000 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
            endcase
          end
         7'b0000001 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10111001111;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11101001111;
               end
            endcase
          end
         7'b0000010 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110010010;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100010010;
               end
            endcase
          end
         7'b0000011 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000110;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000110;
               end
            endcase
          end
         7'b0000100 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10111001100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11101001100;
               end
            endcase
          end
         7'b0000101 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110100100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100100100;
               end
            endcase
          end
         7'b0000110 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110100000;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100100000;
               end
            endcase
          end
         7'b0000111 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110001111;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100001111;
               end
            endcase
          end
         7'b0001000 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000000;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000000;
               end
            endcase
          end
         7'b0001001 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000100;
               end
            endcase
          end
         7'b0001010 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01111001111;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11011001111;
                  display2Time1 = 11'b11100000001;
               end
            endcase
          end
         7'b0001011 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01111001111;
                  display2Time0 = 11'b10111001111;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11011001111;
                  display2Time1 = 11'b11101001111;
               end
            endcase
          end
         7'b0001100 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01111001111;
                  display2Time0 = 11'b10110010010;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11011001111;
                  display2Time1 = 11'b11100010010;
               end
            endcase
          end
         7'b0001101 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01111001111;
                  display2Time0 = 11'b10110000110;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11011001111;
                  display2Time1 = 11'b11100000110;
               end
            endcase
          end
         7'b0001110 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01111001111;
                  display2Time0 = 11'b10111001100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11011001111;
                  display2Time1 = 11'b11101001100;
               end
            endcase
          end
         7'b0001111 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01111001111;
                  display2Time0 = 11'b10110100100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11011001111;
                  display2Time1 = 11'b11100100100;
               end
            endcase
          end
         7'b0010000 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01111001111;
                  display2Time0 = 11'b10110100000;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11011001111;
                  display2Time1 = 11'b11100100000;
               end
            endcase
          end
         7'b0010001 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01111001111;
                  display2Time0 = 11'b10110001111;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11011001111;
                  display2Time1 = 11'b11100001111;
               end
            endcase
          end
         7'b0010010 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01111001111;
                  display2Time0 = 11'b10110000000;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11011001111;
                  display2Time1 = 11'b11100000000;
               end
            endcase
          end
         7'b0010011 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01111001111;
                  display2Time0 = 11'b10110000100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11011001111;
                  display2Time1 = 11'b11100000100;
               end
            endcase
          end
         7'b0010100 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110010010;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010010010;
                  display2Time1 = 11'b11100000001;
               end
            endcase
          end
         7'b0010101 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110010010;
                  display2Time0 = 11'b10111001111;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010010010;
                  display2Time1 = 11'b11101001111;
               end
            endcase
          end
         7'b0010110 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110010010;
                  display2Time0 = 11'b10110010010;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010010010;
                  display2Time1 = 11'b11100010010;
               end
            endcase
          end
         7'b0010111 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110010010;
                  display2Time0 = 11'b10110000110;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010010010;
                  display2Time1 = 11'b11100000110;
               end
            endcase
          end
         7'b0011000 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110010010;
                  display2Time0 = 11'b10111001100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010010010;
                  display2Time1 = 11'b11101001100;
               end
            endcase
          end
         7'b0011001 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110010010;
                  display2Time0 = 11'b10110100100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010010010;
                  display2Time1 = 11'b11100100100;
               end
            endcase
          end
         7'b0011010 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110010010;
                  display2Time0 = 11'b10110100000;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010010010;
                  display2Time1 = 11'b11100100000;
               end
            endcase
          end
         7'b0011011 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110010010;
                  display2Time0 = 11'b10110001111;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010010010;
                  display2Time1 = 11'b11100001111;
               end
            endcase
          end
         7'b0011100 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110010010;
                  display2Time0 = 11'b10110000000;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010010010;
                  display2Time1 = 11'b11100000000;
               end
            endcase
          end
         7'b0011101 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110010010;
                  display2Time0 = 11'b10110000100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010010010;
                  display2Time1 = 11'b11100000100;
               end
            endcase
          end
         7'b0011110 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000110;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000110;
                  display2Time1 = 11'b11100000001;
               end
            endcase
          end
         7'b0011111 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000110;
                  display2Time0 = 11'b10111001111;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000110;
                  display2Time1 = 11'b11101001111;
               end
            endcase
          end
         7'b0100000 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000110;
                  display2Time0 = 11'b10110010010;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000110;
                  display2Time1 = 11'b11100010010;
               end
            endcase
          end
         7'b0100001 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000110;
                  display2Time0 = 11'b10110000110;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000110;
                  display2Time1 = 11'b11100000110;
               end
            endcase
          end
         7'b0100010 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000110;
                  display2Time0 = 11'b10111001100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000110;
                  display2Time1 = 11'b11101001100;
               end
            endcase
          end
         7'b0100011 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000110;
                  display2Time0 = 11'b10110100100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000110;
                  display2Time1 = 11'b11100100100;
               end
            endcase
          end
         7'b0100100 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000110;
                  display2Time0 = 11'b10110100000;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000110;
                  display2Time1 = 11'b11100100000;
               end
            endcase
          end
         7'b0100101 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000110;
                  display2Time0 = 11'b10110001111;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000110;
                  display2Time1 = 11'b11100001111;
               end
            endcase
          end
         7'b0100110 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000110;
                  display2Time0 = 11'b10110000000;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000110;
                  display2Time1 = 11'b11100000000;
               end
            endcase
          end
         7'b0100111 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000110;
                  display2Time0 = 11'b10110000100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000110;
                  display2Time1 = 11'b11100000100;
               end
            endcase
          end
         7'b0101000 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01111001100;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11011001100;
                  display2Time1 = 11'b11100000001;
               end
            endcase
          end
         7'b0101001 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01111001100;
                  display2Time0 = 11'b10111001111;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11011001100;
                  display2Time1 = 11'b11101001111;
               end
            endcase
          end
         7'b0101010 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01111001100;
                  display2Time0 = 11'b10110010010;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11011001100;
                  display2Time1 = 11'b11100010010;
               end
            endcase
          end
         7'b0101011 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01111001100;
                  display2Time0 = 11'b10110000110;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11011001100;
                  display2Time1 = 11'b11100000110;
               end
            endcase
          end
         7'b0101100 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01111001100;
                  display2Time0 = 11'b10111001100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11011001100;
                  display2Time1 = 11'b11101001100;
               end
            endcase
          end
         7'b0101101 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01111001100;
                  display2Time0 = 11'b10110100100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11011001100;
                  display2Time1 = 11'b11100100100;
               end
            endcase
          end
         7'b0101110 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01111001100;
                  display2Time0 = 11'b10110100000;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11011001100;
                  display2Time1 = 11'b11100100000;
               end
            endcase
          end
         7'b0101111 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01111001100;
                  display2Time0 = 11'b10110001111;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11011001100;
                  display2Time1 = 11'b11100001111;
               end
            endcase
          end
         7'b0110000 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01111001100;
                  display2Time0 = 11'b10110000000;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11011001100;
                  display2Time1 = 11'b11100000000;
               end
            endcase
          end
         7'b0110001 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01111001100;
                  display2Time0 = 11'b10110000100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11011001100;
                  display2Time1 = 11'b11100000100;
               end
            endcase
          end
         7'b0110010 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110100100;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010100100;
                  display2Time1 = 11'b11100000001;
               end
            endcase
          end
         7'b0110011 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110100100;
                  display2Time0 = 11'b10111001111;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010100100;
                  display2Time1 = 11'b11101001111;
               end
            endcase
          end
         7'b0110100 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110100100;
                  display2Time0 = 11'b10110010010;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010100100;
                  display2Time1 = 11'b11100010010;
               end
            endcase
          end
         7'b0110101 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110100100;
                  display2Time0 = 11'b10110000110;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010100100;
                  display2Time1 = 11'b11100000110;
               end
            endcase
          end
         7'b0110110 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110100100;
                  display2Time0 = 11'b10111001100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010100100;
                  display2Time1 = 11'b11101001100;
               end
            endcase
          end
         7'b0110111 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110100100;
                  display2Time0 = 11'b10110100100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010100100;
                  display2Time1 = 11'b11100100100;
               end
            endcase
          end
         7'b0111000 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110100100;
                  display2Time0 = 11'b10110100000;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010100100;
                  display2Time1 = 11'b11100100000;
               end
            endcase
          end
         7'b0111001 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110100100;
                  display2Time0 = 11'b10110001111;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010100100;
                  display2Time1 = 11'b11100001111;
               end
            endcase
          end
         7'b0111010 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110100100;
                  display2Time0 = 11'b10110000000;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010100100;
                  display2Time1 = 11'b11100000000;
               end
            endcase
          end
         7'b0111011 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110100100;
                  display2Time0 = 11'b10110000100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010100100;
                  display2Time1 = 11'b11100000100;
               end
            endcase
          end
         7'b0111100 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110100000;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010100000;
                  display2Time1 = 11'b11100000001;
               end
            endcase
          end
         7'b0111101 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110100000;
                  display2Time0 = 11'b10111001111;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010100000;
                  display2Time1 = 11'b11101001111;
               end
            endcase
          end
         7'b0111110 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110100000;
                  display2Time0 = 11'b10110010010;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010100000;
                  display2Time1 = 11'b11100010010;
               end
            endcase
          end
         7'b0111111 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110100000;
                  display2Time0 = 11'b10110000110;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010100000;
                  display2Time1 = 11'b11100000110;
               end
            endcase
          end
         7'b1000000 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110100000;
                  display2Time0 = 11'b10111001100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010100000;
                  display2Time1 = 11'b11101001100;
               end
            endcase
          end
         7'b1000001 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110100000;
                  display2Time0 = 11'b10110100100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010100000;
                  display2Time1 = 11'b11100100100;
               end
            endcase
          end
         7'b1000010 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110100000;
                  display2Time0 = 11'b10110100000;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010100000;
                  display2Time1 = 11'b11100100000;
               end
            endcase
          end
         7'b1000011 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110100000;
                  display2Time0 = 11'b10110001111;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010100000;
                  display2Time1 = 11'b11100001111;
               end
            endcase
          end
         7'b1000100 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110100000;
                  display2Time0 = 11'b10110000000;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010100000;
                  display2Time1 = 11'b11100000000;
               end
            endcase
          end
         7'b1000101 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110100000;
                  display2Time0 = 11'b10110000100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010100000;
                  display2Time1 = 11'b11100000100;
               end
            endcase
          end
         7'b1000110 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110001111;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010001111;
                  display2Time1 = 11'b11100000001;
               end
            endcase
          end
         7'b1000111 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110001111;
                  display2Time0 = 11'b10111001111;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010001111;
                  display2Time1 = 11'b11101001111;
               end
            endcase
          end
         7'b1001000 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110001111;
                  display2Time0 = 11'b10110010010;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010001111;
                  display2Time1 = 11'b11100010010;
               end
            endcase
          end
         7'b1001001 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110001111;
                  display2Time0 = 11'b10110000110;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010001111;
                  display2Time1 = 11'b11100000110;
               end
            endcase
          end
         7'b1001010 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110001111;
                  display2Time0 = 11'b10111001100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010001111;
                  display2Time1 = 11'b11101001100;
               end
            endcase
          end
         7'b1001011 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110001111;
                  display2Time0 = 11'b10110100100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010001111;
                  display2Time1 = 11'b11100100100;
               end
            endcase
          end
         7'b1001100 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110001111;
                  display2Time0 = 11'b10110100000;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010001111;
                  display2Time1 = 11'b11100100000;
               end
            endcase
          end
         7'b1001101 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110001111;
                  display2Time0 = 11'b10110001111;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010001111;
                  display2Time1 = 11'b11100001111;
               end
            endcase
          end
         7'b1001110 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110001111;
                  display2Time0 = 11'b10110000000;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010001111;
                  display2Time1 = 11'b11100000000;
               end
            endcase
          end
         7'b1001111 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110001111;
                  display2Time0 = 11'b10110000100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010001111;
                  display2Time1 = 11'b11100000100;
               end
            endcase
          end
         7'b1010000 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000000;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000000;
                  display2Time1 = 11'b11100000001;
               end
            endcase
          end
         7'b1010001 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000000;
                  display2Time0 = 11'b10111001111;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000000;
                  display2Time1 = 11'b11101001111;
               end
            endcase
          end
         7'b1010010 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000000;
                  display2Time0 = 11'b10110010010;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000000;
                  display2Time1 = 11'b11100010010;
               end
            endcase
          end
         7'b1010011 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000000;
                  display2Time0 = 11'b10110000110;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000000;
                  display2Time1 = 11'b11100000110;
               end
            endcase
          end
         7'b1010100 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000000;
                  display2Time0 = 11'b10111001100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000000;
                  display2Time1 = 11'b11101001100;
               end
            endcase
          end
         7'b1010101 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000000;
                  display2Time0 = 11'b10110100100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000000;
                  display2Time1 = 11'b11100100100;
               end
            endcase
          end
         7'b1010110 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000000;
                  display2Time0 = 11'b10110100000;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000000;
                  display2Time1 = 11'b11100100000;
               end
            endcase
          end
         7'b1010111 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000000;
                  display2Time0 = 11'b10110001111;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000000;
                  display2Time1 = 11'b11100001111;
               end
            endcase
          end
         7'b1011000 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000000;
                  display2Time0 = 11'b10110000000;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000000;
                  display2Time1 = 11'b11100000000;
               end
            endcase
          end
         7'b1011001 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000000;
                  display2Time0 = 11'b10110000100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000000;
                  display2Time1 = 11'b11100000100;
               end
            endcase
          end
         7'b1011010 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000100;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000100;
                  display2Time1 = 11'b11100000001;
               end
            endcase
          end
         7'b1011011 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000100;
                  display2Time0 = 11'b10111001111;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000100;
                  display2Time1 = 11'b11101001111;
               end
            endcase
          end
         7'b1011100 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000100;
                  display2Time0 = 11'b10110010010;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000100;
                  display2Time1 = 11'b11100010010;
               end
            endcase
          end
         7'b1011101 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000100;
                  display2Time0 = 11'b10110000110;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000100;
                  display2Time1 = 11'b11100000110;
               end
            endcase
          end
         7'b1011110 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000100;
                  display2Time0 = 11'b10111001100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000100;
                  display2Time1 = 11'b11101001100;
               end
            endcase
          end
         7'b1011111 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000100;
                  display2Time0 = 11'b10110100100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000100;
                  display2Time1 = 11'b11100100100;
               end
            endcase
          end
         7'b1100000 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000100;
                  display2Time0 = 11'b10110100000;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000100;
                  display2Time1 = 11'b11100100000;
               end
            endcase
          end
         7'b1100001 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000100;
                  display2Time0 = 11'b10110001111;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000100;
                  display2Time1 = 11'b11100001111;
               end
            endcase
          end
         7'b1100010 : begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000100;
                  display2Time0 = 11'b10110000000;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000100;
                  display2Time1 = 11'b11100000000;
               end
            endcase
          end
         7'b1100011 : begin  // 99
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000100;
                  display2Time0 = 11'b10110000100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000100;
                  display2Time1 = 11'b11100000100;
               end
            endcase
          end
			 7'b1111111 : begin  // -1
				display1Time0 = 11'b01110000001;
				display2Time0 = 11'b10110000001;
				display1Time1 = 11'b11010000001;
				display2Time1 = 11'b11100000001;
          end
			 7'b1111110 : begin  // -2
				display1Time0 = 11'b01110000001;
				display2Time0 = 11'b10110000001;
				display1Time1 = 11'b11010000001;
				display2Time1 = 11'b11100000001;
          end
			 7'b1111101 : begin  // -3
				display1Time0 = 11'b01110000001;
				display2Time0 = 11'b10110000001;
				display1Time1 = 11'b11010000001;
				display2Time1 = 11'b11100000001;
          end
         default:  begin 
            case(timeBasquete) 
               1'b0: begin
                  display1Time0 = 11'b01110000100;
                  display2Time0 = 11'b10110000100;
                  display1Time1 = 11'b11010000001;
                  display2Time1 = 11'b11100000001;
               end
               1'b1: begin
                  display1Time0 = 11'b01110000001;
                  display2Time0 = 11'b10110000001;
                  display1Time1 = 11'b11010000100;
                  display2Time1 = 11'b11100000100;
               end
            endcase
          end
      endcase
   end    
endmodule
