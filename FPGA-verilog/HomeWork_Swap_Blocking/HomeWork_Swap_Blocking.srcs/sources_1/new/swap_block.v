`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2019 04:02:54 PM
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


module swap_block(a,b);
  output  reg [7:0]a;
  output reg [7:0]b;
  reg [7:0]temp;
  always @ (*)
     begin
       temp = b;
       b = a;
       a = temp;
     end 
endmodule
