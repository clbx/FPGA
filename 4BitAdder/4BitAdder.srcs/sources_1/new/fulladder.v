`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2019 02:35:22 PM
// Design Name: 
// Module Name: fulladder
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


module fulladder(
    input a,b,cin,
    output sum,cout
    );
    
    wire sum2sum, cout0, cout1;
    
    halfadder(a,b,sum2sum,cout0);
    halfadder(sum2sum,cin,sum,cout1);
    or(cout,cout0,cout1);
    
endmodule
