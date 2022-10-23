`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2022 01:48:02 PM
// Design Name: 
// Module Name: Arithmetic_Operators
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


module Arithmetic_Operators
    #(parameter n =4)
    (
    input [n-1:0] in_x, in_y,
    output [n-1:0] out_s,
    output out_c, out_overflow
    );
    
    wire [n:0] wire_sum;
 
////ADDITION   
//    assign wire_sum = {1'b0, in_x} + {1'b0, in_y};
//    assign out_sum = wire_sum[n-1:0];
//    assign out_cout = wire_sum[n];

    assign {out_c, out_s} = in_x + in_y;
    assign out_overflow = (in_x[n-1] & in_y[n-1] & ~out_s) | (~in_x[n-1] & ~in_y[n-1] & out_s);
    
endmodule
