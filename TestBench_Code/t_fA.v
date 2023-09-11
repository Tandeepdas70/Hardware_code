`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2023 16:02:11
// Design Name: 
// Module Name: t_fA
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


module t_fA();
reg t_A, t_B, t_Cin;
wire t_Sum, t_Cout;
fA fa(.A(t_A), .B(t_B), .Cin(t_Cin), .Sum(t_Sum), .Cout(t_Cout));
initial begin
//    $monitor("At time %0t: t_A=%b t_B=%b, t_Cin=%b, t_Sum=%b, t_Cout=%b", $time, t_A, t_B, T_Cin, t_Sum, t_Cout);
    t_A=1'b0; t_B=1'b0; t_Cin=1'b0;
    #10
    t_A=1'b0; t_B=1'b0; t_Cin=1'b1;
    #10
    t_A=1'b0; t_B=1'b1; t_Cin=1'b0;
    #10
    t_A=1'b0; t_B=1'b1; t_Cin=1'b1;
    #10
    t_A=1'b1; t_B=1'b0; t_Cin=1'b0;
    #10
    t_A=1'b1; t_B=1'b0; t_Cin=1'b1;
    #10
    t_A=1'b1; t_B=1'b1; t_Cin=1'b0;
    #10
    t_A=1'b1; t_B=1'b1; t_Cin=1'b1;
    #10
    $stop;
end  
endmodule
