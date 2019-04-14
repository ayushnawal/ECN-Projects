`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2019 05:34:34 PM
// Design Name: 
// Module Name: clock_divider
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


module clock_divider(
    input clk,
    input clko
    );
    wire clk1;
        reg[29:0] counter = 30'd0;
        parameter d = 30'd1000000000;
        always @(posedge clk)
        begin
            counter <= counter + 30'd1;
            if(counter>=(d-1))
                counter <= 30'd0 ; 
        end
        
        assign clko = (counter<(d/2))?1'b0:1'b1;
        
endmodule
