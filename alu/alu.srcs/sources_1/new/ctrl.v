`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Elizabethtown College
// Engineer: Clay Buxton
// 
// Create Date: 03/29/2019 04:42:36 PM
// Design Name: ALU
// Module Name: ctrl
// Project Name: ALU
// Target Devices: Basys 3
// Tool Versions: Vivado 2018.3
// Description: Control logic for ALU
// 
// Dependencies: all other alu files
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ctrl(
    input clk,
    input [5:0] A,
    input [5:0] B,
    input [3:0] C,
    output reg [6:0] led
    ); 
    /*
    0000 -> A + B
    0001 -> A - B
    0010 -> A++
    0011 -> A--
    0100 -> A & B
    0101 -> A | B
    0110 -> A ^ B    
    */
    
    
    always @(posedge clk)
    begin
        case(C)
            4'b0000:
                //A + B
                led <= A + B;
            4'b0001:
                //A - B
                led <= A - B;
            4'b0010:
                //A++
                led <= A + 1'b1;
            4'b0011:
                //A--
                led <= A - 1'b1;
            4'b0100:
                //A & B
                led <= A & B;
            4'b0101:
                //A | B
                led <= A | B;
            4'b0110:
                //A ^ B
                led <= A ^ B;
            default: 
                //Unimplemented opcode
                led <= 7'b1111111;
        endcase
    end
endmodule
