`timescale 1ns / 1ps
module TwoToOne(
input a,b,c,
output y
    );

assign y = (c==0)?a:b;

endmodule
