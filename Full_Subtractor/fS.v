`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2023 22:03:53
// Design Name: 
// Module Name: fS
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


module fS(
    input f_A,
    input f_B,
    input f_Bi,
    output f_Df,
    output f_Bo
    );
    
    wire T, T1, T2;
    hS h1(f_A, f_B, T, T1);
    hS h2(T, f_Bi, f_Df, T2);
    
    assign f_Bo = T1|T2;
endmodule
