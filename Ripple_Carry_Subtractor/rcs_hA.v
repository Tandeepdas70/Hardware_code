`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2023 19:41:00
// Design Name: 
// Module Name: rcs_hA
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


module rcs_hA(
    input A,
    input B,
    output Sum,
    output Cout
    );
    assign Sum=A^B;
    assign Cout=A&B;
endmodule
