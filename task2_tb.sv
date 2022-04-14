module task2_tb;
//Write testbench here
// Add internal signals here

// defining the register
reg CLK, n_RESET;

//Defining the parameters
wire [15:0] Q; 

task2 u1 (Q, CLK, n_RESET);


always 
begin
//making sure the clk is represted either it being 0 or 1
CLK= 1'b0;
	#(Q/2);
CLK = 1'b1;
	#(Q/2);

end 
	initial 
	begin
	// allowing the reset also can be either 0 or 1
	n_RESET=1'b0;
	#2
	n_RESET=1'b1;
	//repeating the clockcycle
	repeat (2) @(negedge CLK);
	wait (Q == 1); 
	
	#100ps; //delay
 end

endmodule
