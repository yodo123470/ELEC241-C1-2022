
module task2 #(parameter N=16'b1010110011100001) (output logic [15:0] Q, input logic CLK, n_RESET);

//Write solution here

//q->16 bit intermediate line for shift register

//q0 is assigned to y ;right shift

reg [15:0]Y;


assign Q = Y;

wire w1,w2,w3, w4;

//w1,w2,w3 has xor operation between mentioned bits

assign w1=Y[0]^Y[14],

w2= Y[0]^Y[13],

w3= Y[0]^Y[11],

w4= Y[0];

always@(posedge CLK,posedge n_RESET)

begin

//if clr=1, load the initial bits
	if(n_RESET)

		Y<= N;

	//else right shift and load w3 as msb bit

	else

		Y<={w4,Y[15], w1, w2,Y[12],w3,Y[10:1]};

	end

endmodule
