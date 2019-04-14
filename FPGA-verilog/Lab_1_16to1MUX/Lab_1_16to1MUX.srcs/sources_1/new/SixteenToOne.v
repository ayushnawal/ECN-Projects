`timescale 1ns / 1ps
module SixteenToOne(
input a[15:0],
input c[3:0],
output y
    );
wire temp[13:0];
TwoToOne t11(a[0],a[1],c[3],temp[0]);
TwoToOne t12(a[2],a[3],c[3],temp[1]);
TwoToOne t13(a[4],a[5],c[3],temp[2]);
TwoToOne t14(a[6],a[7],c[3],temp[3]);
TwoToOne t15(a[8],a[9],c[3],temp[4]);
TwoToOne t16(a[10],a[11],c[3],temp[5]);
TwoToOne t17(a[12],a[13],c[3],temp[6]);
TwoToOne t18(a[14],a[15],c[3],temp[7]);
TwoToOne t21(temp[0],temp[1],c[2],temp[8]);
TwoToOne t22(temp[2],temp[3],c[2],temp[9]);
TwoToOne t23(temp[4],temp[5],c[2],temp[10]);
TwoToOne t24(temp[6],temp[7],c[2],temp[11]);
TwoToOne t31(temp[8],temp[9],c[1],temp[12]);
TwoToOne t32(temp[10],temp[11],c[1],temp[13]);
TwoToOne t41(temp[12],temp[13],c[0],y);

endmodule
