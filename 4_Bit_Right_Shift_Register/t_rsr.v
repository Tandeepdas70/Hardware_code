`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2023 22:04:29
// Design Name: 
// Module Name: t_rsr
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


module t_rsr();
reg t_clk;
reg t_rst;
reg [3:0] t_d;
wire [3:0] t_q;
rsr d1(.clk(t_clk), .rst(t_rst), .d(t_d), .q(t_q));

always #5 t_clk = ~t_clk;

initial begin
    t_clk = 1;
    t_rst = 1;
    #20
    t_rst = 0;
    t_d = 4'b0011;
    #20
    t_rst = 1;
    t_d = 4'b1010;
    #20
    $finish;
end
endmodule
