module datapath(clk,Reset,dataInA);

input  Reset, clk;
input [7:0] dataInA;

wire Wea, Web,IncB,IncA;
wire in1,in2,in3,in4,in5;
wire sign;
wire [2:0] addrA;
wire [7:0] DOut1;
wire [7:0] DOut2;
wire [7:0] addOut, subOut;
wire [7:0] dataInB;
wire [1:0] addrB;
wire [4:0] out;
wire rstor;

counter_5bit counter_5bit_Inst(.in1(in1),
	                           .in2(in2),
	                           .in3(in3),
	                           .in4(in4),
	                           .in5(in5),
	                           .out(out),
	                       	   .clk(clk),
	                       	   .rstor(Reset));

controller controller_Inst(.Wea(Wea),
                           .IncA(IncA),
                           .IncB(IncB),
                           .Web(Web),
                           .rstor(rstor),
                           .in1(in1),
                           .in2(in2),
                           .in3(in3),
                           .in4(in4),
                           .in5(in5),
                           .rst(Reset));
//
CounterA CounterA_Inst(.addrA(addrA),
					   .IncA(IncA), 
					   .clk(clk), 
					   .rst(rstor));

MemoryA  MemoryA_Inst(.DOut(DOut1), 
					  .addrA(addrA), 
					  .Wea(Wea),
					  .clk(clk), 
					  .dataInA(dataInA));

dflipflop dflipflop_Inst(.Q(DOut2),
						 .D(DOut1),
						 .clk(clk));

comparator comparator_Inst(.sign(sign), 
						   .Din1(DOut1),
						   .Din2(DOut2));

adder adder_Inst(.addOut(addOut), 
				 .DOut2(DOut2), 
				 .DOut1(DOut1));

subtracter subtracter_Inst(.subOut(subOut), 
						   .DOut2(DOut2), 
						   .DOut1(DOut1));

mux mux_Inst(.dataInB(dataInB),
			 .addOut(addOut), 
			 .subOut(subOut), 
			 .sign(sign));

MemoryB MemoryB_Inst(.dataInB(dataInB), 
				.addrB(addrB), 
				.clk(clk),
			        .Web(Web));

CounterB CounterB_Inst(.addrB(addrB), 
		       .IncB(IncB), 
		       .clk(clk), 
		       .rst(rstor));

endmodule