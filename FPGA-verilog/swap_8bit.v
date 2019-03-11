module nonblocking(
input[15:0]sw,input btnC,
output [15:0]led
    );
    reg[7:0]a,b;
    always @ (btnC)
       begin
       a = sw[15:8];
       b = sw[7:0];
         a <= b;
         b <= a;
       end
assign led[15:8]=b[7:0];
       assign led[7:0]=a[7:0];
endmodule

