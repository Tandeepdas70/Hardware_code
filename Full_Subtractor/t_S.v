`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2023 22:12:55
// Design Name: 
// Module Name: t_S
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


module t_S();
reg t_A, t_B, t_Bi;
wire t_Df, t_Bo;
fS f(.f_A(t_A), .f_B(t_B), .f_Bi(t_Bi), .f_Df(t_Df), .f_Bo(t_Bo));

initial begin
    t_A = 1'b0; t_B = 1'b0; t_Bi = 1'b0;
    #10
    t_A = 1'b0; t_B = 1'b0; t_Bi = 1'b1;
    #10
    t_A = 1'b0; t_B = 1'b1; t_Bi = 1'b0;
    #10
    t_A = 1'b0; t_B = 1'b1; t_Bi = 1'b1;
    #10
    t_A = 1'b1; t_B = 1'b0; t_Bi = 1'b0;
    #10
    t_A = 1'b1; t_B = 1'b0; t_Bi = 1'b1;
    #10
    t_A = 1'b1; t_B = 1'b1; t_Bi = 1'b0;
    #10
    t_A = 1'b1; t_B = 1'b1; t_Bi = 1'b1;
    #10
    $finish;
end

endmodule
