`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 10.02.2019 18:47:59
// Design Name:
// Module Name: swap_block
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
 
 
module swap_nonblock(A,B,
 
  a,b,clk );
  input [7:0]A;
  input [7:0]B;
  output  [7:0]a;
  output [7:0]b;
  input clk;
  reg [7:0] w,y;
 
 
 
  always @ (posedge clk)
     begin
     
      w<=B;
      y<=A;
       end
       assign a=w;
       assign b=y;
endmodule