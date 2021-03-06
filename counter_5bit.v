module counter_5bit(in1,in2,in3,in4,in5,out,clk,rstor);

output reg [4:0] out;
output reg in1,in2,in3,in4,in5;
input clk,rstor;

always @(posedge clk)
begin
	if(rstor)
		begin
		out = 5'b00000;
		end

	else
		begin
		out = out + 1;

		case(out)
			5'b00001 : begin in1=0;in2=0;in3=0;in4=0;in5=1; end
			5'b00010 : begin in1=0;in2=0;in3=0;in4=1;in5=0; end
			5'b00011 : begin in1=0;in2=0;in3=0;in4=1;in5=1; end
			5'b00100 : begin in1=0;in2=0;in3=1;in4=0;in5=0; end
			5'b00101 : begin in1=0;in2=0;in3=1;in4=0;in5=1; end
			5'b00110 : begin in1=0;in2=0;in3=1;in4=1;in5=0; end
			5'b00111 : begin in1=0;in2=0;in3=1;in4=1;in5=1; end
			5'b01000 : begin in1=0;in2=1;in3=0;in4=0;in5=0; end
			5'b01001 : begin in1=0;in2=1;in3=0;in4=0;in5=1; end
			5'b01010 : begin in1=0;in2=1;in3=0;in4=1;in5=0; end
			5'b01011 : begin in1=0;in2=1;in3=0;in4=1;in5=1; end
			5'b01100 : begin in1=0;in2=1;in3=1;in4=0;in5=0; end
			5'b01101 : begin in1=0;in2=1;in3=1;in4=0;in5=1; end
			5'b01110 : begin in1=0;in2=1;in3=1;in4=1;in5=0; end
			5'b01111 : begin in1=0;in2=1;in3=1;in4=1;in5=1; end
			5'b10000 : begin in1=1;in2=0;in3=0;in4=0;in5=0; end
			5'b10001 : begin in1=1;in2=0;in3=0;in4=0;in5=1; end
			5'b10010 : begin in1=1;in2=0;in3=0;in4=1;in5=0; end
			5'b10011 : begin in1=1;in2=0;in3=0;in4=1;in5=1; end
			
		endcase
		end
end

endmodule
