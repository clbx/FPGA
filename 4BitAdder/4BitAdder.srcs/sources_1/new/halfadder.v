`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Elizabethtown College
// Engineer: Clay Buxton
// 
// Create Date: 02/09/2019 08:02:42 PM
// Design Name: 4 Bit Adder
// Module Name: halfadder
// Project Name: 4 Bit Adder
// Target Devices: Basys 3
// Tool Versions: Vivado 2018.3
// Description: Adds 4-bit numbers
// 
// Dependencies:
// 
// Revision: 0.02 - Project Finished
// Revision 0.01 - File Created
// Additional Comments: None
// 
//////////////////////////////////////////////////////////////////////////////////


module halfadder(in0,in1,out0,carry);
    input in0, in1;
    output out0, carry;
    
    and(carry,in0,in1);
    xor(out,in0,in1);
    
endmodule