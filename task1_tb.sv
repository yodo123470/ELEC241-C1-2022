module task1_tb;

//Use these for the inputs.
logic a,b,c;

//Use these two signals for the outputs
logic [1:0] y_structural, y_other;

// Instantiate both UUT
task1a u1 (y_structural, a, b, c);
task1b u2 (y_other, a, b, c);

initial
begin
	//Write your testbench here
	
   a = 1'b0;	// 1'b0 => 1 bit wide, binary, value 0
   b = 1'b0;
	c = 1'b1;
   #100ps;		// Simulate 50ps delay
   a = 1'b0;	// 1'b0 => 1 bit wide, binary, value 0
   b = 1'b1;
	b = 1'b0;	// 1'b1 => 1 bit wide, binary, value 1
   #100ps;		// Simulate 50ps delay
   a = 1'b1;	// 1'b0 => 1 bit wide, binary, value 0
   b = 1'b0;
	b = 1'b0;
   #100ps;		// Simulate 50ps delay
   a = 1'b1;	// 1'b0 => 1 bit wide, binary, value 0
   b = 1'b1;
	b = 1'b1;
   #100ps;
//    y_structural = 4'b1;  
//	
//	a = 1'b0;	// 1'b0 => 1 bit wide, binary, value 0
//   b = 1'b1;
//	b = 1'b1;
//   #100ps;		// Simulate 50ps delay
//   a = 1'b1;	// 1'b0 => 1 bit wide, binary, value 0
//   b = 1'b0;
//	b = 1'b1;	// 1'b1 => 1 bit wide, binary, value 1
//   #100ps;		// Simulate 50ps delay
//   a = 1'b1;	// 1'b0 => 1 bit wide, binary, value 0
//   b = 1'b1;
//	b = 1'b0;
//   #100ps;		// Simulate 50ps delay
//   a = 1'b1;	// 1'b0 => 1 bit wide, binary, value 0
//   b = 1'b1;
//	b = 1'b1;
//	#100ps;


end	

endmodule

