`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2023 23:37:29
// Design Name: 
// Module Name: rcs_fA
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


module rcs_fA(
    input f_A,
    input f_B,
    input f_Cin,
    output f_Sum,
    output f_Cout
    );
    wire T, T1_cout, T2_cout;
    rcs_hA h1(.A(f_A), .B(f_B), .Sum(T), .Cout(T1_cout));
    rcs_hA h2(.A(T), .B(f_Cin), .Sum(f_Sum), .Cout(T2_cout));
    
    assign f_Cout=T1_cout|T2_cout;
    
endmodule
