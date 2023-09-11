`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2023 12:40:05
// Design Name: 
// Module Name: t_rcA
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


module t_rcA();
reg [7:0]t_A; 
reg [7:0]t_B;
reg t_Cin;
wire [7:0]t_Sum;
wire t_Cout;
rcA r1(.r_A(t_A), .r_B(t_B), .r_Cin(t_Cin), .r_Sum(t_Sum), .r_Cout(t_Cout));
initial begin
    t_A=8'b00000011; t_B=8'b00000001; t_Cin=1'b0;
    #10
    $stop;
end
endmodule
