module stopwatch(
input clk,
input start,
input reset,
input pause,
output [3:0]O,
output led
);
    wire clk1;
    clock_divider c1(clk,clk1);
    
    reg [3:0]t;
        initial 
            begin
                 t=0000;
            end

   always @(posedge clk1 or posedge reset)
    begin
        if(reset)
        t <= 4'b0000;
    else
    if ((start==1)&(pause==0))
        begin
          t <= t + 4'b0001;
        end
    end 
   assign O = t;
   
assign led = clk1;
endmodule