module comparator_4_bit(A, B, GA, EQU, GB);

	input [3:0] A;
	input [3:0] B;
	output GA, EQU, GB;
	reg GA, EQU, GB;
	//A to B

	always @(A or B)
	begin
		if($signed(A) > $signed(B))
			begin
				GA = 1;
				EQU = 0;
				GB = 0;
			end
		else if($signed(A) == $signed(B))
			begin
				GA = 0;
				EQU = 1;
				GB = 0;
			end
		else
			begin
				GA = 0;
				EQU = 0;
				GB = 1;
			end
		end

endmodule
