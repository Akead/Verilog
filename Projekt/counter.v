module counter(clk, reset, ctrl, out);

	parameter N = 4;	//Parametr. Domyślnie 4 bit out, N >= 2
	input clk, reset;	//Zegar oraz reset
	input [1:0] ctrl;	//Sterowanie 2-bitowe
	output [N-1:0] out;	//Wyjście N-bitowe, kod Gray'a
	reg [N-1:0] tmp;	//Zmienna pomocnicza, kod binarny

	always @(posedge clk, negedge reset) begin
		//Sprawdzenie resetu
		if (reset == 0) begin	
			tmp <= 0;
		end else begin
				//Sterowanie na licznik do tyłu
				if (ctrl == 0) begin
					tmp <= tmp - 1;
				//Sterowanie na licznik sterowany ctrl w kodzie U2
				end else begin
					//Użycie modyfikatora $signed umożliwia działania na liczbach w kodzie U2
					tmp <= $signed(tmp) + $signed(ctrl);
				end
		end
	end
	//Konwersja z N-bitowego kodu binarnego na N-bitowy kod Gray'a
	assign out = {tmp[N-1], tmp[N-1:1] ^ tmp[N-2:0]}; // ^ - operator XOR
endmodule 
