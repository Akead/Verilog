module test_bench;
	reg [3:0] A;
	reg [3:0] B;
	wire GA, EQU, GB;

	comparator_4_bit uut(.A(A), .B(B), .GA(GA), .EQU(EQU), .GB(GB));

	initial begin

		$dumpfile("test.vcd");
		$dumpvars(0, test_bench);
		//GA
		A = 4'b0110;
		B = 4'b1110;
		#100;
		A = 4'b0111;
		B = 4'b0100;
		#100;
		A = 4'b1111;
		B = 4'b1100;
		//EQU
		#100;
		A = 4'b1110;
		B = 4'b1110;
		#100;
		A = 4'b0110;
		B = 4'b0110;
		//GB
		#100;
		B = 4'b0110;
		A = 4'b1110;
		#100;
		B = 4'b0110;
		A = 4'b0100;
		#100;
		B = 4'b1111;
		A = 4'b1100;
		#100;
	end
	
endmodule


		
