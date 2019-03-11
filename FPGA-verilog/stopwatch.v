`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2019 19:22:56
// Design Name: 
// Module Name: stopwatch
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


module stopwatch(
input clk,
input start,
input reset,
input pause,
output [3:0]O

    );
    reg [3:0]t;
    initial 
       begin
          t=0000;
    
       end

   always @(posedge clk or posedge reset)
   begin
   if(reset)
    t <= 4'd0;
   else
   if ((start==1)&(pause==0))
   begin
    t <= t + 4'd1;
    end
   end 
   assign O = t;
   

endmodule
