module counter(input clk, reset, output reg [3:0] out);

	always @(posedge clk, negedge reset)
		if (reset == 0)
			out <= 4'b0000;
		else
			begin
				if (out == 4'b1101)
					out <= 4'b0000;
				else if (out == 4'b0110 | out == 4'b1001)
					out <= out + 4'b0010;
				else
					out <= out + 4'b0001;
			end

endmodule 
