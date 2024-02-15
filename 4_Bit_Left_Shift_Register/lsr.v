`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2023 22:48:27
// Design Name: 
// Module Name: lsr
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


module lsr(
    input clk,
    input rst,
    input sin,
    input [3:0] d,
    output reg [3:0] q
    );
    always@(posedge clk) begin
        if(rst == 1) begin
            q <= 1'b0;
        end
        else begin
            q <= {d[2:0],sin};
        end
    end
endmodule
