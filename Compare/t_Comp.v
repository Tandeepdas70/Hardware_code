`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2023 00:12:03
// Design Name: 
// Module Name: t_Comp
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


module t_Comp();
    reg [3:0] t_A;
    reg [3:0] t_B;
    reg t_Cin;
    wire [3:0] t_D;
    wire t_Out;
    wire t_AgB, t_AlB, t_AeB;
    Comp c(.A(t_A), .B(t_B), .Cin(t_Cin), .D(t_D), .Out(t_Out), .AgB(t_AgB), .AlB(t_AlB), .AeB(t_AeB));
    
    initial begin
        #10
        t_A = 4'b0101;
        t_B = 4'b1001;
        t_Cin = 1'b1;
        #10
        t_A = 4'b1111;
        t_B = 4'b1001;
        t_Cin = 1'b1;
        #10
        t_A = 4'b0110;
        t_B = 4'b0110;
        t_Cin = 1'b1;
        #10
        $finish;
    end
    
endmodule
