`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2023 04:06:12
// Design Name: 
// Module Name: t_RC_AS
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


module t_RC_AS();
reg [7:0] t_A;
reg [7:0] t_B;
reg t_Cin;
wire [7:0] t_Sum;
wire t_Cout;
RC_AS ras(.A(t_A), .B(t_B), .Cin(t_Cin), .Sum(t_Sum), .Cout(t_Cout));
initial begin
    t_A=8'b00000011; t_B=8'b00000001; t_Cin=1'b0;
    #10
    t_A=8'b00000011; t_B=8'b00000001; t_Cin=1'b1;
    #10
    $stop;
end
endmodule
