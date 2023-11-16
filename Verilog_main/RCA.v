`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2023 11:14:33
// Design Name: 
// Module Name: rcA
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


module rcA(
    input [7:0] r_A,
    input [7:0] r_B,
    input r_Cin,
    output [7:0] r_Sum,
    output r_Cout
    );
    wire [7:1] C;
    
    rca_fA f1(.f_A(r_A[0]), .f_B(r_B[0]), .f_Cin(r_Cin), .f_Sum(r_Sum[0]), .f_Cout(C[1]));
    rca_fA f2(.f_A(r_A[1]), .f_B(r_B[1]), .f_Cin(C[1]), .f_Sum(r_Sum[1]), .f_Cout(C[2]));
    rca_fA f3(.f_A(r_A[2]), .f_B(r_B[2]), .f_Cin(C[2]), .f_Sum(r_Sum[2]), .f_Cout(C[3]));
    rca_fA f4(.f_A(r_A[3]), .f_B(r_B[3]), .f_Cin(C[3]), .f_Sum(r_Sum[3]), .f_Cout(C[4]));
    rca_fA f5(.f_A(r_A[4]), .f_B(r_B[4]), .f_Cin(C[4]), .f_Sum(r_Sum[4]), .f_Cout(C[5]));
    rca_fA f6(.f_A(r_A[5]), .f_B(r_B[5]), .f_Cin(C[5]), .f_Sum(r_Sum[5]), .f_Cout(C[6]));
    rca_fA f7(.f_A(r_A[6]), .f_B(r_B[6]), .f_Cin(C[6]), .f_Sum(r_Sum[6]), .f_Cout(C[7]));
    rca_fA f8(.f_A(r_A[7]), .f_B(r_B[7]), .f_Cin(C[7]), .f_Sum(r_Sum[7]), .f_Cout(r_Cout));
    
endmodule
