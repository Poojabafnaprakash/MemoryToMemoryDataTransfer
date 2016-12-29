module CounterA(addrA, IncA, clk, rst);
  parameter n = 2;
 
  output reg [n:0] addrA;
  input clk;
  input rst;     // Active high reset.
  input IncA;
 
  // Set the initial value
 
  // Increment count on clock
  //always @(posedge clk or posedge rst) begin 
  always @(posedge clk) begin 
    if (rst) begin
      addrA <= 3'b000;
    end
    else if(IncA) begin
      addrA <= addrA + 1;
    end     
  end  
endmodule