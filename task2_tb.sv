module task2_tb;
//Write testbench here
// Add internal signals here
reg CLK, n_RESET;
wire [15:0] Q; 

task2 u1 (Q, CLK, n_RESET);


always 
begin

CLK= 1'b0;
	#(Q/2);
CLK = 1'b1;
	#(Q/2);
end 
	initial 
	begin

	n_RESET=1'b0;
	#2
	n_RESET=1'b1;

	repeat (2) @(negedge CLK);
	wait (Q == 1);
	
	#100ps; 
 end

endmodule
