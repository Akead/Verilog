`timescale 1ns/100ps

module lab_1_fun7_tb;
	
	wire A, B, C, D, F;
	integer i;
	assign {A, B, C, D} = i;
	lab_1_fun7 the_circut(A, B, C, D, F);

	initial begin

		$dumpfile("lab_1_fun7.vcd");
		$dumpvars(0, lab_1_fun7_tb);

		for(i=0; i<16; i=i+1)
			#10 $display("done testing case %d",i);

		$finish;
	end
endmodule 
