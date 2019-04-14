`timescale 1ns / 1ps
module clock_divider2(
input clock,
output reg uclock
);

always@(posedge clock)
begin
 uclock <= ~uclock;
end

endmodule
