module CounterB(addrB, IncB, clk, rst);
  parameter n = 1;
 
  output reg [n:0] addrB;
  input clk;
  input rst;     // Active high reset.
  input IncB;
 
  always @(posedge clk) begin 
    if (rst) begin
      addrB <= 2'b0;
    end
    else if(IncB) begin
      addrB <= addrB + 1;
    end     
  end  
endmodule