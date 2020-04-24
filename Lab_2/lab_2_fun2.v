module lab_2_fun2(input [3:0] in, output reg F);

	always @* begin
		case(in)
		default : F = 0;
		4'd5	: F = 1;
		4'd7	: F = 1;
		4'd12 : F = 1;
		4'd13 : F = 1;
		4'd15 : F = 1;
		endcase
	end

	

endmodule
