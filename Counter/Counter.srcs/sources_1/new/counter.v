`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Elizabethtown College
// Engineer: Clay Buxton
// 
// Create Date: 03/11/2019 04:50:13 PM
// Design Name: Counter
// Module Name: counter
// Project Name: Counter
// Target Devices: Basys 3
// Tool Versions: Vivado 2018.3
// Description: Counts
// 
// Dependencies: None
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter(
    input Clock,
    output reg [3:0] Q
    );
    
    always @(posedge Clock)
    begin
        Q <= Q+1;
    end
    
endmodule
