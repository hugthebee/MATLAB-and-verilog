`timescale 1ns/10ps
module multiplier (a0,a1,a2,a3,b0,b1,b2,b3,p0,p1,p2,p3,p4,p5,p6,p7);

input a0,a1,a2,a3,b0,b1,b2,b3;
output p0,p1,p2,p3,p4,p5,p6,p7;
wire y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,y16,y17,y18,y19,y20,c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10;

//assign Y = ((A | B) & C) & (C & D);
assign p0 = a0 & b0;
assign y0 = a0 & b1;
assign y1 = a1 & b0;
//half adder - 
assign p1 = y0 ^ y1;
assign c0 = y0 & y1;

assign y2 = a1 & b1;
assign y3 = a2 & b0;
assign y4 = a0 & b2;
//half adder - 
assign y5 = y2 ^ y3;
assign c1 = y2 & y3;
//full adder-
assign p2 = (y4 ^ y5) ^ c0;
assign c2 = ((y4 ^ y5) & c0) | (y4 & y5);

assign y6 = a2 & b1;
assign y7 = a3 & b0;
assign y9 = a1 & b2;
//half adder - 
assign y8 = y6 ^ y7;
assign c3 = y6 & y7;
//full adder-
assign y10 = (y9 ^ y8) ^ c1;
assign c4 = ((y9 ^ y8) & c1) | (y9 & y8);
assign y11 = a0 & b3;
//full adder-
assign p3 = (y11 ^ y10) ^ c2;
assign c5 = ((y11 ^ y10) & c2) | (y11 & y10);

assign y12 = a3 & b1;
assign y13 = a2 & b2;
//full adder-
assign y14 = (y12 ^ y13) ^ c3;
assign c6 = ((y12 ^ y13) & c3) | (y12 & y13);
assign y15 = a1 & b3;
//full adder-
assign y16 = (y15 ^ y14) ^ c4;
assign c7 = ((y15 ^ y14) & c4) | (y15 & y14);
//half adder - 
assign p4 = y16 ^ c5;
assign c8 = y16 & c5;

assign y17 = a2 & b3;
assign y18 = a3 & b2;
//full adder-
assign y19 = (y17 ^ y18) ^ c6;
assign c9 = ((y17 ^ y18) & c6) | (y17 & y18);
//full adder-
assign p5 = (y19 ^ c7) ^ c8;
assign c10 = ((y19 ^ c7) & c8) | (y19 & c7);

assign y20 = a3 & b3;
//full adder-
assign p6 = (y20 ^ c9) ^ c10;
assign p7 = ((y20 ^ c9) & c10) | (y20 & c9);

endmodule