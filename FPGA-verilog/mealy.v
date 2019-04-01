`timescale 1ns / 1ps
module mealy(out,in,clk);
output reg out;
input wire in;
input wire clk;
reg state;
parameter s0 = 1'b0,s1 = 1'b1;
always @(posedge clk)
begin
case (state)
s0 : begin
if(in == 1'b0) begin state = s0;out = 1'b0 ;end
else begin state = s1; out = 1'b1;end
end
s1 : begin
if(in == 1'b0) begin state = s1;out = 1'b1 ;end
else begin state = s1; out = 1'b0;end
end
default : begin state = s0; out = 1'b0; end
endcase
end
endmodule
