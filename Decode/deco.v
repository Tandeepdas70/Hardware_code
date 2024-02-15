`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 23:04:06
// Design Name: 
// Module Name: deco
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


module deco(
    input  [1:0] in,
    output [3:0] out
    );
    
    assign out[0] = ~in[0] & ~in[1];
    assign out[1] = ~in[0] & in[1];
    assign out[2] = in[0] & ~in[1];
    assign out[3] = in[0] & in[1];
endmodule
