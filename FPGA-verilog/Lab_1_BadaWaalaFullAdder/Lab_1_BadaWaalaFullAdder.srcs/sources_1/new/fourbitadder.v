`timescale 1ns / 1ps
module fourbitadder(
input [3:0] a,b,
input cin,
output [3:0] sum,
output cout
    );
wire temp[2:0];
onebitadder a1(a[0],b[0],cin,sum[0],temp[0]);
onebitadder a2(a[1],b[1],temp[0],sum[1],temp[1]);
onebitadder a3(a[2],b[2],temp[1],sum[2],temp[2]);
onebitadder a4(a[3],b[3],temp[2],sum[3],cout);


endmodule
