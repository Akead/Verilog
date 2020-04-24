module counter(input clk, reset, way, output reg [3:0] out);

	always @(posedge clk, negedge reset)
		if (reset == 0)
			out <= 4'd0;
		else 
			begin
				if (way == 1) //way == 1 => Up // way == 0 => Down
					if (out == 4'd13)
						out <= 4'd0;
					else if (out == 4'd6 | out == 4'd9)
						out <= out + 4'd2;
					else
						out <= out + 4'd1;
				else
					if (out == 4'd0)
						out <= 4'd13;
					else if (out == 4'd8 | out == 4'd11)
						out <= out - 4'd2;
					else
						out <= out - 4'd1;
			end

endmodule 
