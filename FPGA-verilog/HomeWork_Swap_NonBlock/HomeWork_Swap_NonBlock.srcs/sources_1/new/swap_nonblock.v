`timescale 1ns / 1ps
module swap_nonblock(a, b);
  output  reg [7:0]a;
  output reg [7:0]b;
  always @ (*)
     begin
       a <= b;
       b <= a;
       
     end 
endmodule

