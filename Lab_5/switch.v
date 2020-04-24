module switch(input clk, reset, start, stop, output reg out);
	always @(posedge clk, negedge reset)
	if (reset == 0)
		out <= 0;
	else
		out <= start | (out & ~ stop);
endmodule
