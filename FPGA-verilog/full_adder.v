`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2019 17:21:16
// Design Name: 
// Module Name: mux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux(
input i0,
input i1,
input i2,
input i3,
input i4,
input i5,
input i6,
input i7,
input i8,
input i9,
input i10,
input i11,
input i12,
input i13,
input i14,
input i15,
input [3:0]S,
output Out
 );
 wire w1,w2,w3,w4,w5,w6,w7,w8,x1,x2,x3,x4,z1,z2;
 m m1(i0,i1,S[0],w1);
 m m2(i2,i3,S[0],w2);
 m m3(i4,i5,S[0],w3);
 m m4(i6,i7,S[0],w4);
 m m5(i8,i9,S[0],w5);
 m m6(i10,i11,S[0],w6);
 m m7(i12,i13,S[0],w7);
 m m8(i14,i15,S[0],w8);
 m m9(w1,w2,S[1],x1);
m m10(w3,w4,S[1],x2);
m m11(w5,w6,S[1],x3);
m m12(w7,w8,S[1],x4); 
m m13(x1,x2,S[2],z1);
m m14(x3,x4,S[2],z2);
m m15(z1,z2,S[3],Out);
 
endmodule
module m(
input a0,
input a1,
input S,
output O);
assign O= (S==0)? a0:a1;
endmodule