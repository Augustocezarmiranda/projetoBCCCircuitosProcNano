module  display7seg(dp, dado, leds);
input dp; // dp = Decimal Point
input [3:0] dado;
output reg [7:0] leds;
	always @(*)
		begin
			case(dado)
			//                  abcdefg
			4'b0000:leds = ~(7'b0000001); //0
			4'b0001:leds = ~(7'b1001111); //1
			4'b0010:leds = ~(7'b0010010); //2
			4'b0011:leds = ~(7'b0000110); //3
			4'b0100:leds = ~(7'b1100110); //4
			4'b0101:leds = ~(7'b0100010); //5
			4'b0110:leds = ~(7'b0100000); //6
			4'b0111:leds = ~(7'b0001111); //7
			4'b1000:leds = ~(7'b0000000); //8
			4'b1001:leds = ~(7'b0000100); //9
			4'b1010:leds = ~(7'b0001000); //A
			4'b1011:leds = ~(7'b1100000); //B no led vai aparecer b para não confundir com o 8
			4'b1100:leds = ~(7'b0110001); //C
			4'b1101:leds = ~(7'b1100000); //D no led vai apaecer d para não confudir com 0
			4'b1110:leds = ~(7'b0110000); //E
			4'b1111:leds = ~(7'b0111000); //F
			
			/*	//                  abcdefg
			0:leds = ~(7'b0000001); //0
			1:leds = ~(7'b1001111); //1
			2:leds = ~(7'b0010010); //2
			3:leds = ~(7'b0000110); //3
			4:leds = ~(7'b1100110); //4
			5:leds = ~(7'b0100010); //5
			6:leds = ~(7'b0100000); //6
			7:leds = ~(7'b0001111); //7
			8:leds = ~(7'b0000000); //8
			9:leds = ~(7'b0000100); //9
			A:leds = ~(7'b0001000); //A
			B:leds = ~(7'b1100000); //B no led vai aparecer b para não confundir com o 8
			C:leds = ~(7'b0110001); //C
			D:leds = ~(7'b1100000); //D no led vai apaecer d para não confudir com 0
			E:leds = ~(7'b0110000); //E
			F:leds = ~(7'b0111000); //F
			*/
			endcase
		end
		

endmodule 

	