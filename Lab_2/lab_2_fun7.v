module lab_2_fun7(input A, B, C, D, output F);

	assign F = (~B & ~D) | (B & D) | (~B & C);

endmodule
