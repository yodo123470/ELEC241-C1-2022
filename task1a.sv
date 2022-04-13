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


//Logic gates converted to writen gates
//defining the wires of inputs of the not gates
wire Ainv;
wire Binv;
wire Cinv;

//defining the wires for the AND gates for the right hand side of first bit
wire term0;
wire term1;
wire term2;
wire term3;

//defining the wires for the AND gates for the left hand side of the second bit
wire term4;
wire term5;
wire term6;
wire term7;

//defining the NOT gate with the inputs and outputs 
not u4 (invA, A);
not u5 (invB, B);
not u6 (invC, C);

//defining the AND gate with the inputs and outputs 
and u7 (term0, invA, invB, C);
and u8 (term1, invA, B, invC);
and u9 (term2, A, invB, invC);
and u10 (term3, A, B, C);

//defining the AND gate with the inputs and outputs of the second diagram
and u11(term4, invA, B, C);
and u12(term5, A, invB, C);
and u13(term6, A, B, invC);
and u14(term7, A, B, C);

//Defining the two logic gates
or u15 (Y[00], term0, term1, term2, term3);
or u16 (Y[01], term4, term5, term6, term7);



endmodule
