`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2023 12:20:36
// Design Name: 
// Module Name: t_hS
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


module t_hS();
reg t_A, t_B;
wire t_Df, t_Bo;
hS h(.A(t_A), .B(t_B), .Df(t_Df), .Bo(t_Bo));
initial begin
    t_A = 1'b0; t_B = 1'b0;
    #10
    t_A = 1'b0; t_B = 1'b1;
    #10
    t_A = 1'b1; t_B = 1'b0;
    #10
    t_A = 1'b1; t_B = 1'b1;
    #10
    $finish;
end
endmodule
