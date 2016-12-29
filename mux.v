module mux(dataInB, addOut, subOut, sign);
input [7:0] addOut;
input [7:0] subOut;
input sign;
output reg [7:0] dataInB;
always @ (addOut,subOut,sign)
begin
    if(sign)
    	//input 1 will be the mul output//sel = 1
        dataInB = addOut;
    else
    	//input 0 will be the number 1//sel = 0
        dataInB = subOut;
end  
endmodule