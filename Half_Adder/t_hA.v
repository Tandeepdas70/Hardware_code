`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2023 00:10:56
// Design Name: 
// Module Name: t_hA
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


module t_hA();
reg t_A, t_B;
wire t_Sum, t_Cout;

hA dut(.A(t_A), .B(t_B), .Sum(t_Sum), .Cout(t_Cout));
initial begin
    t_A=0; t_B=0;
    #10
    t_A=0; t_B=1;
    #10
    t_A=1; t_B=0;
    #10
    t_A=1; t_B=1;
    #10
    $stop;
end    
endmodule
