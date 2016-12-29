module subtracter(subOut, DOut2, DOut1);

output [7:0] subOut;
input [7:0] DOut1;
input [7:0] DOut2;

	assign subOut = DOut1 - DOut2;

endmodule
