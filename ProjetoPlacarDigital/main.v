module main (clk, czp, cnp, ct, chpc, c1424, b, buzzer, ledV, bled, display, escolhaDisplay);
	
	input clk; /* clock */
	input czp; /* chave zerar placar */
	input cnp; /* chave negativa positiva */
	input ct; /* chave time */
	input [2:0] b; /* botões */
	input chpc; /* chave parar cronometro */
	input c1424; /* chave para escolher 14 ou 24 segundos */
	output buzzer; /* Caso o cronometro chegue a zero */
	output ledV; /* Caso a soma seja invalida, led vermelho*/
	output bled; /* Barra de led caso o numero passe de 99 */
	output [6:0] display; /* display de 7 segmentos */
	output [3:0] escolhaDisplay;
	
	wire [3:0] clks; // Saida do Divisor de clock
	wire [1:0] somaBts; // Soma de botões
	wire [6:0] somaT1, somaT2; // Acumulador dos times
	wire [4:0] cronometro; 
	wire [6:0] entradaParaCodificarBDC ; //Saida cronometro ou placar
	wire [7:0] numeroBCD2Digs;
	wire [3:0] numeroBCD1Dig;
	
	
	//Divisor de Clock  -> clks[0] 120hz , clks[1] 60hz , clks[2] 1hz, clks[3] 0.5hz
	clockDivider divisorDeClock(.clock_in(clk), .frequencias(clks));
	
	
	//Numero vindo Dos botões
	btnsEntrada numeroDosBotoes(.A(b[0]), .B(b[1]), .C(b[2]), .N(somaBts));
	
	
	//Placar dos Times
	placarTimes PlacarDosTimes(.clr(czp), .pr(1'b0), .clock(clks[0]), .chaveNP(cnp), .chaveTime(ct), .somaBTNs(somaBts), .somaTime1(somaT1), .somaTime2(somaT2), .led(ledV));
	
	
	//Cronometro 24 e 14
	cronometroRegressivo Cronometro(.clock_in(clks[2]), .resetNumero(czp), .chaveParar(chpc), .chaveEscolherCronometro(c1424), .saida(cronometro), .buzzer(buzzer));	
	
	
	//Escolher Cronometro ou placar
	muxCronometroPlacar CronometroOuPlacar(.placarT1(somaT1), .placarT2(somaT2), .cronometro(cronometro), .clock2segs(clks[3]), .clock60hz(clks[1]), .saida(entradaParaCodificarBDC));
	
	
	//Conversor binario/bcd
	conversorBinarioBcd conversorBinBcd(.A(entradaParaCodificarBDC), .B(numeroBCD2Digs), .Passou99(bled));
	
	
	// ==========================================================================
	
	
	//Selecionar se é o digito 1 ou 2 do BCD
	muxEscolherDigBCD escolherDigBCD(.N(numeroBCD2Digs), .escolha(clks[0]), .S(numeroBCD1Dig));
	
	
	//Decodificador para 7 segmentos
	decod7segs decod7segmentos(.BCD(numeroBCD1Dig), .n7Segs(display));
	
	
	//Alternar os digitos no display de sete segmentos
	muxAlternarCronometroPlacarNoDisplay alternarDigitosNoDisplay(.clock2segs(clks[3]), .clock60hz(clks[1]), .clock120hz(clks[0]), .saida(escolhaDisplay));
	
	
	
endmodule 