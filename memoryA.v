module MemoryA(DOut, dataInA,addrA,Wea,clk);

output reg [7:0] DOut;
input wire [7:0] dataInA;
input wire [2:0] addrA;
input wire Wea;
input clk;

reg [7:0] memoryA [7:0];

always @(posedge clk)
begin
	if(Wea)
	begin
		memoryA[addrA] <= dataInA;
	end
	else begin
		DOut <= memoryA[addrA];
	end
end
endmodule