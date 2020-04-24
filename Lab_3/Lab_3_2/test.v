`timescale 1ns/100ps

module test;
	
	reg [2:0] A;
	reg [2:0] B;
	wire C,D;

	fun uut(.A(A), .B(B), .C(C), .D(D));

	initial begin

		$dumpfile("test.vcd");
		$dumpvars(0, test);
		//GA
		A = 3'b011;
		B = 3'b111;
		#100;
		A = 3'b011;
		B = 3'b010;
		#100;
		A = 3'b111;
		B = 3'b110;
		//EQU
		#100;
		A = 3'b111;
		B = 3'b111;
		#100;
		A = 3'b011;
		B = 3'b011;
		//GB
		#100;
		B = 3'b011;
		A = 3'b111;
		#100;
		B = 3'b011;
		A = 3'b010;
		#100;
		B = 3'b111;
		A = 3'b110;
		#100;
	end
endmodule
