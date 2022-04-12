// ELEC241 C1 2022
//Structural Version

/*
A	B	C	Y
0	0	0	00
0	0	1	01
0	1	0	01
0	1	1	10
1	0	0	01
1	0	1	10
1	1	0	10
1	1	1	11
*/

module task1a(output logic [1:0] Y, input logic A, B, C);

//if (A == 0 && B== 0 && C == 0)
//	Y = 0; 
//
//else if (A == 0 && B == 0 && C== 1) || (A == 0 && B == 1 && C== 0) || (A == 1 && B == 0 && C== 0)
//	Y = 1;
//
//else if (A == 0 && B == 1 && C== 1) || (A == 1 && B == 0 && C== 1) || (A == 1 && B == 1 && C== 0)
//	Y = 2;
//
//else
//	Y = 3;
//	
	

//Internal wires
wire Ainv;
//wire Binv;
//wire Ainv;
//wire Cinv;
wire Binv;
wire Cinv;


wire term0;
wire term1;
wire term2;
wire term3;



//Place and connect gates

not u1 (invA, A);
not u2 (invB, B);
//not u3 (invA, A);
not u4 (invC, C);
//not u5 (invB, B);
//not u6 (invC, C);

and u7 (term0, invA, invB, C);
and u8 (term1, invA, B, invC);
and u9 (term2, A, invB, invC);
and u10 (term3, A, B, C);

or u11 (Y[0], term0, term1, term2, term3);






//
//wire term00;
//wire term11;
//wire term22;
//wire term33;
//
//
//
////Place and connect gates
//
////not u12 (invA, A);
////not u13 (invB, B);
//////not u13 (invA, A);
////not u14 (invC, C);
//////not u15 (invB, B);
//////not u16 (invC, C);
//
//and u18 (term00, invA, B, C);
//and u19 (term11, A, invB, C);
//and u20 (term22, A, B, invC);
//and u21 (term33, A, B, C);
//
//or u22 (Y[1], term00, term11, term22, term33);




endmodule
