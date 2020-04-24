`timescale 1ns/100ps

module test_bench;

	//Input
	reg clk = 0;
	reg reset;
	reg start = 0;
	reg stop = 0;

	//Output
	wire out;

	always 
		# 10 clk = ~clk;

		switch memory_switch(clk, reset, start, stop, out);

	initial begin

		$dumpfile("memory_switch.vcd");
		$dumpvars(0, test_bench);

		reset = 0;
		#5 reset = 1;
		#50 stop = 1;
		#50 start = 0;
		#50 stop = 0;
		#50 stop = 1;
		#50 start = 1;
		#50 $finish;
	end

endmodule
