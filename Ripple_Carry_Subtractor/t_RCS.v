`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2023 03:45:04
// Design Name: 
// Module Name: t_RCS
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


module t_RCS();
reg [7:0] t_A; 
reg [7:0] t_B;
reg t_Bin;
wire [7:0] t_Diff;
wire t_Bout;
RCS rs(.rs_A(t_A), .rs_B(t_B), .rs_Bin(t_Bin), .rs_Diff(t_Diff), .rs_Bout(t_Bout));
initial begin
    t_A=8'b00000010; t_B=8'b00000001; t_Bin=1'b1;
    #10
    t_A=8'b00000111; t_B=8'b00000100; t_Bin=1'b1;
    #10
    $stop;
end
endmodule
