`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2022 09:49:34 PM
// Design Name: 
// Module Name: Ripple_Carry_Adder_Nbit
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
// To implement:
//Ripple_Carry_Adder_Nbit (.n(32)) adder_32(
//.in_x(),
//.in_y(),
//.in_c(),
//.out_s(),
//.out_c()
//);
//////////////////////////////////////////////////////////////////////////////////


module Ripple_Carry_Adder_Nbit
    #(parameter n = 4)
    (
    input [n-1:0] in_x, in_y,
    input in_c,
    output [n-1:0] out_s,
    output out_c
    );
    
    wire [n:0] wire_c;
    assign wire_c[0] = in_c;
    assign out_c = wire_c[n];
    
    generate
        genvar i;
        for (i = 0; i < n; i=i+1)
        begin: stage
            Full_Adder FA(
                .in_x(in_x[i]),
                .in_y(in_y[i]),
                .in_c(wire_c[i]),
                .out_s(out_s[i]),
                .out_c(wire_c[i+1])
            );
        end
    endgenerate
endmodule
