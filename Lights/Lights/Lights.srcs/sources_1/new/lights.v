`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2019 04:02:23 PM
// Design Name: 
// Module Name: lights
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


module lights(
    input [2:0] button,
    output reg red,
    output reg yellow,
    output reg green
    );
    
    always @(button[0] or button[1] or button[2])begin
        if(button[0] == 1)
            red = ~red;
            
        if(button[1] == 1)
            yellow = ~yellow;
            
        if(button[2] == 1)
            green = ~green;
    end    
endmodule
