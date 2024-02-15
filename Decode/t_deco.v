`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 23:13:32
// Design Name: 
// Module Name: t_deco
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

module t_deco();
reg [1:0] t_in;
wire [3:0] t_out;

deco d (.in(t_in), .out(t_out) );

initial begin
    t_in = 2'b00;
    #10;
    t_in = 2'b01;
    #10;
    t_in = 2'b10;
    #10; 
    t_in = 2'b11;
    #10;
end
endmodule

