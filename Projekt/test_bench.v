`timescale 1ns/100ps

module test_bench;

	parameter N = 4;	//Parametr. Domyślnie 4 bit out, N >= 2
	//Input
	reg clk = 0;		//Zegar
	reg reset;			//Reset
	reg [1:0] ctrl = 0;	//Sterowanie 2-bitowe

	//Output
	wire [N-1:0] out;	//Wyjście N-bitowe

	always 
		# 10 clk = ~clk;	//Zmiana zegara, okres 20 ns

		counter count(clk, reset, ctrl, out);	//Wywołanie modułu counter

	initial begin

		$dumpfile("counter.vcd");
		$dumpvars(0, test_bench);

		reset = 0;
		#5 reset = 1;		//Ustawienie resetu
		#150 ctrl = 2'b01;
		#150 ctrl = 2'b11;
		#150 $finish;
	end

endmodule
