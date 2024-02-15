`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2023 10:25:44
// Design Name: 
// Module Name: rca_fA
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


module rca_fA(
    input f_A,
    input f_B,
    input f_Cin,
    output f_Sum,
    output f_Cout
    );
    
    wire T, T1_cout, T2_cout;
    rca_hA h1(.A(f_A), .B(f_B), .Sum(T), .Cout(T1_cout));
    rca_hA h2(.A(T), .B(f_Cin), .Sum(f_Sum), .Cout(T2_cout));
    
    assign f_Cout=T1_cout|T2_cout;
endmodule
