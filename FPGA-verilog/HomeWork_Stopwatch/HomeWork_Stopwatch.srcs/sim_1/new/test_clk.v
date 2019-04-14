`timescale 1ns / 1ps
module test_clk;

reg clk;
reg start;
reg reset; 
reg pause; 
reg [3:0]O;
reg led;

stopwatch st( clk, start , reset, pause, O, led);

initial 
    begin
        clk = 0;
        pause = 0;
        start = 1'b1;
        reset = 0;
    end
always@(posedge start,posedge reset,posedge pause,posedge clk)
begin
start = 1;
end
endmodule
