`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Elizabethtown College
// Engineer: Clay Buxton
// 
// Create Date: 09/24/2018 06:53:13 PM
// Design Name: 4 Bit Adder
// Module Name: half-adder
// Project Name: 4 Bit Adder
// Target Devices: Basys3 FPGA
// Tool Versions: Vuvadi 2018.2
// Description: Half adder component for a 4 bit adder
// 
// Dependencies: 
// 
// Revision: 1.0 - Project Finished
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module halfadder(
    input a, b,
    output sum, cout
    );
    
    xor(sum,a,b);
    and(cout,a,b);
endmodule
