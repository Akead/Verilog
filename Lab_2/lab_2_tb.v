`timescale 1ns/100ps

module lab_2_tb;
	
	wire A, B, C, D, F_2, F_6, F_7;
	wire [3:0] in_2;
	wire [3:0] in_6;
	integer i;
	assign {A, B, C, D} = i;
	assign in_2 = i;
	assign in_6 = i;
	lab_2_fun7 the_circut_7(A, B, C, D, F_7);
	lab_2_fun2 the_circut_2(in_2, F_2);
	lab_2_fun6 the_circut_6(in_6, F_6);

	initial begin

		$dumpfile("lab_2.vcd");
		$dumpvars(0, lab_2_tb);

		for(i = 4'd0; i<=4'd15; i=i+4'd1)
			#10 $display("done testing case %d",i);

		$finish;
	end
endmodule 
