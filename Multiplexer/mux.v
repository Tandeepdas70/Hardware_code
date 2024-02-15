`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 23:39:31
// Design Name: 
// Module Name: mux
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



module mux(
  input wire [3:0] data_in,
  input wire [1:0] sel, 
  output wire data_out
);

  assign data_out = (sel == 2'b00) ? data_in[0] :
                   (sel == 2'b01) ? data_in[1] :
                   (sel == 2'b10) ? data_in[2] :
                                   data_in[3];
endmodule
