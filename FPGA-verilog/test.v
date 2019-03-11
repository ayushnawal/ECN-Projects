`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2019 17:46:36
// Design Name: 
// Module Name: test
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


module test();
reg [15:0]a1;
reg [3:0]S;
wire out;
mux utt(a1[0],a1[1],a1[2],a1[3],a1[4],a1[5],a1[6],a1[7],a1[8],a1[9],a1[10],a1[11],a1[12],a1[13],a1[14],a1[15],S,out);
initial begin
a1=0000001000111010;
#(10)
S=0000;
#(10)
S=0100;
#(10)
S=1111;
end
endmodule
