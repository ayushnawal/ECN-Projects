`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2018 16:27:03
// Design Name: 
// Module Name: read_write_textFile
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module read_write_textFile;
    
reg[9:0] instForm[0:0];
reg[9:0] inst;
wire[3:0] ALU_Out;
integer file_id;
integer i;
ALU test_unit(
           inst,  // ALU 8-bit Inputs
           ALU_Out // ALU 8-bit Output
    );

   initial begin
   // hold reset state for 100 ns
           $readmemb("E://test.txt", instForm);
     inst = instForm[0];
     #10
     file_id =$fopen("E://write.txt", "w");
     #10
     for(i=3;i>=0;i=i-1)
     begin
     $fwrite(file_id,"%b", ALU_Out[i]);
    
     end
    #10 
     $fclose(file_id);
             
   end
endmodule
