module comparator(sign, Din1, Din2);

input [7:0] Din1,Din2;
output reg sign;

always @ (Din1 or Din2)
    begin
        sign = 1'b0;
        if(Din1 > Din2)
            sign = 1'b0;
        else
            sign = 1'b1;
    end
endmodule
