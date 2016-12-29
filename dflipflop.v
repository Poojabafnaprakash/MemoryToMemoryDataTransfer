module dflipflop(Q,D,clk);
input [7:0] D;
input clk;

output reg [7:0] Q;

always @(posedge clk)
 Q = D;
endmodule





