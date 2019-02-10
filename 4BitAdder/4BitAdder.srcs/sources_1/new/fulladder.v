`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Elizabethtown College
// Engineer: Clay Buxton
// 
// Create Date: 02/09/2019 08:02:42 PM
// Design Name: 4 Bit Adder
// Module Name: fulladder
// Project Name: 4 Bit Adder
// Target Devices: Basys 3
// Tool Versions: Vivado 2018.3
// Description: Adds 4-bit numbers
// 
// Dependencies: halfadder.v
// 
// Revision: 0.02 - Project Finished
// Revision 0.01 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////


module fulladder(carryin,in0,in1,out0,carry);
    input carryin,in0,in1;
    output out0,carry;
    
    wire carry2xor0;
    wire carry2xor1;
    wire out2in1;
    
    halfadder(in0,in1,out2in1,carry2xor0);
    halfadder(carryin,out2in1,out0,carry2xor1);
    
    and(carry,carry2xor0,carry2xor1);  
    
endmodule
