`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Elizabethtown College
// Engineer: Clay Buxton
// 
// Create Date: 04/01/2019 04:50:57 PM
// Design Name: Control Testbench
// Module Name: ctrl_testbench
// Project Name: alu
// Target Devices: Basys 3 
// Tool Versions: Vivado 2018.3
// Description: Test bench for the ALU
// 
// Dependencies: ctrl.v
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ctrl_testbench();


    reg[5:0] A;
    reg[5:0] B;
    reg[3:0] C;
    wire[6:0] led;
    reg clk;
    
    initial begin
        clk = 0;
        forever #5 clk=~clk;
    end
    
    ctrl dut (
        .clk(clk),
        .A(A),
        .B(B),
        .C(C),
        .led(led)
    );
    
    initial begin
        A = 6'b000001;
        B = 6'b000001;
        C = 4'b0000;
        #100;
        A = 6'b000000;
        B = 6'b000000;
        C = 4'b0000;
        #100;
        A = 6'b000010;
        B = 6'b000010;
        C = 4'b0001;
    end
endmodule
