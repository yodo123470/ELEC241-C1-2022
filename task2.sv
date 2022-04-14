
module task2 #(parameter N=16'b1010110011100001) (output logic [15:0] Q, input logic CLK, n_RESET);

//Write solution here

// recording in the registor that there is 15 outputs

reg [15:0]Y;
 
assign Q = Y;

// defining the wires
wire w1,w2,w3, w4;

//w1,w2,w3 has xor operation between the mentioned bits

assign w1=Y[0]^Y[14],

w2= Y[0]^Y[13],

w3= Y[0]^Y[11],

w4= Y[0];

//checking for CLK and RESET
always@(posedge CLK,posedge n_RESET)

begin

//if Reset, it will load the initial bits
	if(n_RESET)
		//allowing Y to be the block of N which is representing the paramaters 
		Y<= N;

	//else right shift everything in the line

	else

		Y<={w4,Y[15], w1, w2,Y[12],w3,Y[10:1]};

	end

endmodule
