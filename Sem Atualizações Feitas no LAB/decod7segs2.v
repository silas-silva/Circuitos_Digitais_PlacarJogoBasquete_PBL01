module decod7segs2(BCD, n7Segs);
	
	input [3:0] BCD;
	output [6:0] n7Segs;

//	a = ~n4 ~n3 ~n2 + ~n4 ~n2 ~n1
//
//	b = ~n4 ~n3 ~n2 ~n1 + ~n4 n3 ~n2 n1 + ~n4 n3 n2 ~n1
//
//	c = ~n4 ~n3 ~n1
//
//	d = ~n4 ~n3 ~n2 + ~n4 ~n2 ~n1 + ~n4 n3 n2 n1
//
//	e = ~n4 ~n2 + ~n4 n1 + ~n3 ~n2 n1
//
//	f = ~n4 ~n3 + ~n4 n2 n1
//
//	g = ~n4 ~n3 ~n2 n1 + n3 n2 n1 + n4 n2 + n4 n3


//BCD negado
wire n1, n2, n3, n4;
not not1 (n1, BCD[0]);
not not2 (n2, BCD[1]);
not not3 (n3, BCD[2]);
not not4 (n4, BCD[3]);




//Saida A
wire a1, a2;
and anda1 (a1, n4, n3, n2);
and anda2 (a2, n4, n2, n1);
or ora1 (n7Segs[6], a1, a2);
	

//Saida B
wire b1, b2, b3;
and andb1 (b1, n4, n3, n2, n1);
and andb2 (b2, n4, BCD[2], n2, BCD[0]);
and andb3 (b3, n4, BCD[2], BCD[1], n1);
or orb1 (n7Segs[5], b1, b2, b3);

//Saida C
and andc1 (n7Segs[4], n4, n3, n1);


//Saida D     
wire d1, d2, d3;
and andd1 (d1, n4, n3, n2);
and andd2 (d2, n4, n2, n1);
and andd3 (d3, n4, BCD[2], BCD[1], BCD[0]);
or ord1 (n7Segs[3], d1, d2, d3);

//Saida E      
wire e1, e2, e3;
and ande1 (e1, n4, n2);
and ande2 (e2, n4, BCD[0]);
and ande3 (e3, n3, n2, BCD[0]);
or ore1 (n7Segs[2], e1, e2, e3);

//Saida F   
wire f1, f2;
and andf1 (f1, n4, n3);
and andf2 (f2, n4, BCD[1], BCD[0]);
or orf1 (n7Segs[1], f1, f2);

//Saida F   ~n4 ~n3 ~n2 n1 + n3 n2 n1 + n4 n2 + n4 n3
wire g1, g2, g3, g4;
and andg1 (g1, n4, n3, n2, BCD[0]);
and andg2 (g2, BCD[2], BCD[1],  BCD[0]);
and andg3 (g3, BCD[3],  BCD[1]);
and andg4 (g4, BCD[3],  BCD[2]);

or org1 (n7Segs[0], g1, g2, g3, g4);

endmodule 