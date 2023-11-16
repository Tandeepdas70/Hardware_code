`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2023 07:18:27
// Design Name: 
// Module Name: RCS
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


module RCS(
    input [7:0] rs_A,
    input [7:0] rs_B,
    input rs_Bin,
    output [7:0] rs_Diff,
    output rs_Bout
    );
    wire [7:1] B;
    
    rcs_fA f1(.f_A(rs_A[0]), .f_B(~rs_B[0]), .f_Cin(rs_Bin), .f_Sum(rs_Diff[0]), .f_Cout(B[1]));
    rcs_fA f2(.f_A(rs_A[1]), .f_B(~rs_B[1]), .f_Cin(B[1]), .f_Sum(rs_Diff[1]), .f_Cout(B[2]));
    rcs_fA f3(.f_A(rs_A[2]), .f_B(~rs_B[2]), .f_Cin(B[2]), .f_Sum(rs_Diff[2]), .f_Cout(B[3]));
    rcs_fA f4(.f_A(rs_A[3]), .f_B(~rs_B[3]), .f_Cin(B[3]), .f_Sum(rs_Diff[3]), .f_Cout(B[4]));
    rcs_fA f5(.f_A(rs_A[4]), .f_B(~rs_B[4]), .f_Cin(B[4]), .f_Sum(rs_Diff[4]), .f_Cout(B[5]));
    rcs_fA f6(.f_A(rs_A[5]), .f_B(~rs_B[5]), .f_Cin(B[5]), .f_Sum(rs_Diff[5]), .f_Cout(B[6]));
    rcs_fA f7(.f_A(rs_A[6]), .f_B(~rs_B[6]), .f_Cin(B[6]), .f_Sum(rs_Diff[6]), .f_Cout(B[7]));
    rcs_fA f8(.f_A(rs_A[7]), .f_B(~rs_B[7]), .f_Cin(B[7]), .f_Sum(rs_Diff[7]), .f_Cout(rs_Bout));
    
endmodule
