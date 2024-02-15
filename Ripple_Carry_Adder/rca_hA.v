`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2023 10:11:34
// Design Name: 
// Module Name: rca_hA
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
module rca_hA(
    input A,
    input B,
    output Sum,
    output Cout
    );
    assign Sum=A^B;
    assign Cout=A&B;
    
endmodule
