//Dataflow or behavioural only

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

module task1b(output logic [1:0] Y, input logic A, B, C);

always @(A, B, C)
begin
	if (A == 0 && B== 0 && C == 0)
		Y = 0; 
	else if ((A == 0 && B == 0 && C== 1) || (A == 0 && B == 1 && C== 0) || (A == 1 && B == 0 && C== 0))
		Y = 1;
	else if ((A == 0 && B == 1 && C== 1) || (A == 1 && B == 0 && C== 1) || (A == 1 && B == 1 && C== 0))
		Y = 2;
	else
		Y = 3;

end

endmodule

