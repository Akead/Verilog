`timescale 1ns/100ps

module test_bench;

	//Input
	reg clk = 0;
	reg reset;
	reg way = 0; //way == 1 => Up // way == 0 => Down

	//Output
	wire [3:0] out;

	always 
		# 10 clk = ~clk;

		counter count(clk, reset, way, out);

	initial begin

		$dumpfile("counter.vcd");
		$dumpvars(0, test_bench);

		reset = 0;
		#5 reset = 1;
		#500 way = 1;
		#500 $finish;
	end

endmodule
