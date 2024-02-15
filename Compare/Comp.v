`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2023 23:37:16
// Design Name: 
// Module Name: Comp
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
module hA(input h_A, input h_B, output h_S, output h_Out);
    assign h_S = h_A^h_B;
    assign h_Out = h_A&h_B;
endmodule

module fA(input f_A, input f_B, input f_Cin, output f_S, output f_Out);
    wire [2:0] T;
    hA h1(f_A, f_B, T[0], T[1]);
    hA h2(T[0], f_Cin, f_S, T[2]);
    assign f_Out = T[1]^T[2];
endmodule

module Comp(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] D,
    output Out,
    output reg AgB, AlB, AeB
    );
    wire [2:0] C;
    wire chk;
    fA f1(A[0], ~B[0], Cin, D[0], C[0]);
    fA f2(A[1], ~B[1], C[0], D[1], C[1]);
    fA f3(A[2], ~B[2], C[1], D[2], C[2]);
    fA f4(A[3], ~B[3], C[2], D[3], Out);
    assign chk = Out^D[3];
    
    always@(*) begin
        if(D == 0) begin
            AgB = 1'b0;
            AlB = 1'b0;
            AeB = 1'b1;
        end
        else if((chk^D[3]) == 1) begin
            AgB = 1'b1;
            AlB = 1'b0;
            AeB = 1'b0;
        end
        else begin
            AgB = 1'b0;
            AlB = 1'b1;
            AeB = 1'b0;
        end
    end
endmodule
