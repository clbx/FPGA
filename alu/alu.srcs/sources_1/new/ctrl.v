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
    0100 -> B++
    0101 -> B--
    0110 -> Bitwise AND
    0111 -> Bitwise OR
    1000 -> Bitwise XOR
    1001 -> Bitwise NOT A
    1010 -> Bitwise NOT B
    1011 -> A << B
    1100 -> B << A
    1101 -> Light first LED if A > B
    1110 -> Light first LED if B > A
    1111 -> Light first LED if A = B
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
                //B++
                led <= B + 1'b1;
            4'b0101:
                //B--
                led <= B - 1'b1;
            4'b0110:
                //A & B
                led = (A & B);
            4'b0111:
                //A | B
                led = (A | B);                
            4'b1000:
                //A ^ B
                led = (A ^ B);
            4'b1001:
                //~A
                led = {1'b0,~A[5:0]};
            4'b1010:
                //~B
                led = {1'b0,~B[5:0]};
            4'b1011:
                //A << B
                led = A << B;
            4'b1100:
                //B << A
                led = B << A;
                
            4'b1101:
                //Light LED[0] if A > B
                if(A > B)
                    led = 7'b0000001;
                else
                    led = 7'b0000000;
            4'b1110:
                //Light LED[0] if A < B
                if(A < B)
                    led = 7'b00000001;
                else
                    led = 7'b0000000;
                    
            4'b1111:
                //Light LED[0] if A=B
                if(A == B)
                    led = 7'b0000001;
                else
                    led = 7'b0000000;          
            default: 
                //Unimplemented opcode
                led <= 7'b1111111;
        endcase
    end
    

endmodule
