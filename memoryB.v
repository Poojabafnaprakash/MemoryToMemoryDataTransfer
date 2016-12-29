module MemoryB(dataInB, addrB, clk, Web);

input wire [7:0] dataInB;
input wire [1:0] addrB;
input wire Web;
input clk;

reg [7:0] memoryB [3:0];
always @ (posedge clk)
begin
	if(Web)
	begin
		memoryB[addrB] <= dataInB;
	end
end

endmodule