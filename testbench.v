module testBench;
reg clk,Reset;
reg[7:0] dataInA;

datapath datapath_Inst(.clk(clk),
					   .Reset(Reset),
                       .dataInA(dataInA));

initial begin
	$dumpfile("TestFixture.vcd");
	$dumpvars(9,testBench);

	dataInA= 0;
	clk = 0;
	Reset=1;
end

always 
#5 clk = ~clk;


initial
begin
	#8 Reset = 0;
	repeat (8) begin
	@ (posedge clk);
	#10 dataInA <= $random;
end

#200 Reset = 1;
#5 $finish;
end 

endmodule