`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2023 03:29:18
// Design Name: 
// Module Name: RC_AS
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


module RC_AS(
    input [7:0] A,
    input [7:0] B,
    input Cin,
    output [7:0] Sum,
    output Cout
    );
    wire [7:1] C;
    
    fA f1(A[0], B[0]^Cin, Cin, Sum[0], C[1]);
    fA f2(A[1], B[1]^Cin, C[1], Sum[1], C[2]);
    fA f3(A[2], B[2]^Cin, C[2], Sum[2], C[3]);
    fA f4(A[3], B[3]^Cin, C[3], Sum[3], C[4]);
    fA f5(A[4], B[4]^Cin, C[4], Sum[4], C[5]);
    fA f6(A[5], B[5]^Cin, C[5], Sum[5], C[6]);
    fA f7(A[6], B[6]^Cin, C[6], Sum[6], C[7]);
    fA f8(A[7], B[7]^Cin, C[7], Sum[7], Cout);
    
endmodule
