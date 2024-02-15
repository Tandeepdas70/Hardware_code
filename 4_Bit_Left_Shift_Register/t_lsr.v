`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2023 22:52:21
// Design Name: 
// Module Name: t_lsr
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


module t_lsr();
reg t_clk;
reg t_rst;
reg t_sin;
reg [3:0] t_d;
wire [3:0] t_q;
lsr d1(.clk(t_clk), .rst(t_rst), .sin(t_sin), .d(t_d), .q(t_q));

always #5 t_clk = ~t_clk;
initial begin
    t_clk = 1;
    t_rst = 1;
    #10
    t_rst = 0;
    t_sin = 1;
    t_d = 4'b0000;
    #10
    t_rst = 0;
    t_sin = 0;
    t_d = 4'b1001;
    #10
    $finish;
  end 
endmodule
