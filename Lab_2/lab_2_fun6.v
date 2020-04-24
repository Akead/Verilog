module lab_2_fun6(input [3:0] in, output F);
	wire A = in[3];
	wire B = in[2];
	wire C = in[1];
	wire D = in[0];

	assign F = (~C & D) | (~C & B);

endmodule
