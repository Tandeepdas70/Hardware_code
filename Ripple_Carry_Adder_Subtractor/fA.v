`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2023 03:19:03
// Design Name: 
// Module Name: fA
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


module fA(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );
    wire T, T1, T2;
    hA h1(A, B, T, T1);
    hA h2(T, Cin, Sum, T2);
    
    assign Cout = T1 | T2;
endmodule
