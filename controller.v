module controller(Wea,IncA,IncB,Web,rstor,in1,in2,in3,in4,in5,rst);

input in1,in2,in3,in4,in5,rst;
output wire Wea,IncA,IncB,Web,rstor;

and A(Wea1,~in1,~in2,~in3,~in4,in5);
and B(Wea2,~in1,~in2,~in3,in4,~in5);
and C(Wea3,~in1,~in2,~in3,in4,in5);
and D(Wea4,~in1,~in2,in3,~in4,~in5);
and E(Wea5,~in1,~in2,in3,~in4,in5);
and F(Wea6,~in1,~in2,in3,in4,~in5);
and G(Wea7,~in1,~in2,in3,in4,in5);
and H(Wea8,~in1,in2,~in3,~in4,~in5);

or one(Wea,Wea1,Wea2,Wea3,Wea4,Wea5,Wea6,Wea7,Wea8);

and I(IncA1,in1,~in2,~in3,~in4,in5);
and J(IncA2,in1,~in2,~in3,in4,~in5);
and K(IncA3,in1,~in2,~in3,in4,in5);

nor two(IncA,IncA1,IncA2,IncA3);

and L(IncB1,~in1,in2,in3,~in4,~in5);
and M(IncB2,~in1,in2,in3,in4,~in5);
and N(IncB3,in1,~in2,~in3,~in4,~in5);
and O(IncB4,in1,~in2,~in3,in4,~in5);

or three(IncB,IncB1,IncB2,IncB3,IncB4);

and P(Web1,~in1,in2,~in3,in4,in5);
and Q(Web2,~in1,in2,in3,~in4,in5);
and R(Web3,~in1,in2,in3,in4,in5);
and S(Web4,in1,~in2,~in3,~in4,in5);

or four(Web,Web1,Web2,Web3,Web4);

and T(RO,in1,~in2,~in3,in4,~in5);
or five(rstor, RO, rst);



endmodule