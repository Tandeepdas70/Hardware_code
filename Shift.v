`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2023 19:15:48
// Design Name: 
// Module Name: Shift
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


module Shift(
    input d, clk, en, dir, rstn,
    output reg [7:0] out
    );
    
    always@(posedge clk)
        if(!rstn)
            out <= 0;
        else begin
            if (en)
                case (dir)
                    0: out <= {out[6:0], d};
                    1: out <= {d, out[7:1]};
                endcase
            else
               out <= out;
    end
endmodule
