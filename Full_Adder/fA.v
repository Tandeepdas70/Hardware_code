`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2023 15:47:32
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
    
    wire T1, T2, T3;
    hA h1(.A(A), .B(B), .Sum(T1), .Cout(T2));
    hA h2(.A(T1), .B(Cin), .Sum(Sum), .Cout(T3));
    assign Cout=T2|T3;
endmodule
