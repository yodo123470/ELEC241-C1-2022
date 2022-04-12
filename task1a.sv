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




endmodule
