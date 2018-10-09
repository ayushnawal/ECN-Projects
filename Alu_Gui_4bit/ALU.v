module ALU(
           input [9:0] inst,  // ALU 8-bit Inputs                 
           output [3:0] ALU_Out // ALU 8-bit Output
    );
    reg [3:0] ALU_Result;
    wire [3:0] A;
    wire [3:0] B;
    wire [1:0] opCode;
    assign ALU_Out = ALU_Result; // ALU out
    assign A = inst[7:4];
    assign B = inst[3:0];
    assign opCode = inst[9:8];
    always @(*)
    begin
        case(opCode)
        4'b00: // Addition
           ALU_Result = A + B ; 
        4'b01: // Subtraction
           ALU_Result = A - B ;
        4'b10: // Or
           ALU_Result = A | B;
        4'b11: // 2's complement
            ALU_Result = ~A + 4'b0001;
        endcase
    end

endmodule

