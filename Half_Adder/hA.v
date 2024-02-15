`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2023 00:08:20
// Design Name: 
// Module Name: hA
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


module hA(
    input A,
    input B,
    output Sum,
    output Cout
    );
    
    assign Sum=A^B;
    assign Cout=A&B;
endmodule
