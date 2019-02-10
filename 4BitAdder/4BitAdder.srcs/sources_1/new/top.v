`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Elizabethtown College
// Engineer: Clay Buxton
// 
// Create Date: 02/09/2019 08:02:42 PM
// Design Name: 4 Bit Adder
// Module Name: top
// Project Name: 4 Bit Adder
// Target Devices: Basys 3
// Tool Versions: Vivado 2018.3
// Description: Adds 4-bit numbers
// 
// Dependencies: fulladder.v
// 
// Revision: 0.02 - Project Finished
// Revision 0.01 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////

module top(a,b,out,carryin);
    input [0:3] a,b;
    input carryin;
    output [0:4] out;
    
    wire carry0,carry1,carry2;
    
    fulladder(carryin,a[0],b[0],out[0],carry0);
    fulladder(carry0,a[1],b[1],out[1],carry1);
    fulladder(carry1,a[2],b[2],out[2],carry2);
    fulladder(carry2,a[3],b[3],out[3],out[4]);   
    
endmodule
