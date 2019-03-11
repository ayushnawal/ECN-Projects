module lol1(input a0, input a1, input S, output O);
    assign O=(S==0)? a0:a1;
endmodule

module lol3( input [15:0] sw, input btnC, input btnU, input btnL, input btnR, output [0:0]led);
    wire w1,w2,w3,w4,w5,w6,w7,w8,x1,x2,x3,x4,z1,z2;
    lol1 m1(sw[0],sw[1],btnC,w1);
    lol1 m2(sw[2],sw[3],btnC,w2);
    lol1 m3(sw[4],sw[5],btnC,w3);
    lol1 m4(sw[6],sw[7],btnC,w4);
    lol1 m5(sw[8],sw[9],btnC,w5);
    lol1 m6(sw[10],sw[11],btnC,w6);
    lol1 m7(sw[12],sw[13],btnC,w7);
    lol1 m8(sw[14],sw[15],btnC,w8);
    lol1 m9(w1,w2,btnU,x1);
    lol1 m10(w3,w4,btnU,x2);
    lol1 m11(w5,w6,btnU,x3);
    lol1 m12(w7,w8,btnU,x4);
    lol1 m13(x1,x2,btnL,z1);
    lol1 m14(x3,x4,btnL,z2);
    lol1 m15(z1,z2,btnR,led[0]);
    
 
endmodule