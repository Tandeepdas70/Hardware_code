`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2023 21:50:17
// Design Name: 
// Module Name: rsr
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


module rsr(
    input clk,
    input rst,
    input [3:0] d,
    output reg [3:0] q
    );
    always@(posedge clk) begin
        if(rst == 1) begin
            q <= 1'b0;
        end
        else begin
            q <= {1'b0, d[3:1]};
        end
    end
endmodule
