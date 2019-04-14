`timescale 1ns / 1ps
module Full_Adder(
input a, b, cin,
output sum, cout
    );
assign sum = a^b^cin;
assign cout = (a&b)|(a&cin)|(b&cin);

endmodule
