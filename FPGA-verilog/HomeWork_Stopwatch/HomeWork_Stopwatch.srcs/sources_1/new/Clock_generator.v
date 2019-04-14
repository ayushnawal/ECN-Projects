`timescale 1ns / 1ps
module Clock_generator(
input clk,
output clk1
);
wire [27:0] t;
clock_divider2 c1(clk, t[0]);
clock_divider2 c2(t[0], t[1]);
clock_divider2 c3(t[1], t[2]);
clock_divider2 c4(t[2], t[3]);
clock_divider2 c5(t[3], t[4]);
clock_divider2 c6(t[4], t[5]);
clock_divider2 c7(t[5], t[6]);
clock_divider2 c8(t[6], t[7]);
clock_divider2 c9(t[7], t[8]);
clock_divider2 c10(t[8], t[9]);
clock_divider2 c11(t[9], t[10]);
clock_divider2 c12(t[10], t[11]);
clock_divider2 ca(t[11], t[12]);
clock_divider2 cs(t[12], t[13]);
clock_divider2 cd(t[13], t[14]);
clock_divider2 cf(t[14], t[15]);
clock_divider2 cg(t[15], t[16]);
clock_divider2 ch(t[16], t[17]);
clock_divider2 cj(t[17], t[18]);
clock_divider2 ck(t[18], t[19]);
clock_divider2 cl(t[19], t[20]);
clock_divider2 cq(t[20], t[21]);
clock_divider2 cw(t[21], t[22]);
clock_divider2 ce(t[22], t[23]);
clock_divider2 cr(t[23], t[24]);
clock_divider2 ct(t[24], t[25]);
clock_divider2 cy(t[25], t[26]);
clock_divider2 cu(t[26], t[27]);
clock_divider2 ci(t[27], clk1);
endmodule
