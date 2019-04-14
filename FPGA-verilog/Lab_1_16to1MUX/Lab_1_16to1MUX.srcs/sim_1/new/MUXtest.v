`timescale 1ns / 1ps

module MUXtest();
reg [15:0] s;
reg [3:0] con;
wire out;

SixteenToOne tt(.a(s), .c(con), .y(out));
    initial begin
    s = 16'b0000000000000001;
    con = 4'b0000;
    #10;
    s = 16'b1000000000000000;
    con = 4'b1111;
    #10;
    s = 16'b1010101010101010;
    con = 4'b01010;
    #10;
    end

endmodule
