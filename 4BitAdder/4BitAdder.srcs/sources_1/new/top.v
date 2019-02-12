`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2019 02:21:59 PM
// Design Name: 
// Module Name: top
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



module top(
    input [3:0] num1,
    input [3:0] num2,
    output [4:0] out
    );
    
    wire cout0,cout1,cout2;
    
    fulladder(1'b0,num1[0],num2[0],out[0],cout0);
    fulladder(cout0,num1[1],num2[1],out[1],cout1);
    fulladder(cout1,num1[2],num2[2],out[2],cout2);
    fulladder(cout2,num1[3],num2[3],out[3],out[4]);
    
    
endmodule

