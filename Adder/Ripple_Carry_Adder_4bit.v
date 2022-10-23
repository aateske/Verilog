`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2022 09:19:45 PM
// Design Name: 
// Module Name: Ripple_Carry_Adder_4bit
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


module Ripple_Carry_Adder_4bit(
    input [3:0] in_x, in_y,
    input in_c,
    output [3:0] out_s,
    output out_c
    );
    
    wire [2:0] wire_c;
    //Using Module
    Full_Adder A0(
        .in_x(in_x[0]),
        .in_y(in_y[0]),
        .in_c(in_c),
        .out_s(out_s[0]),
        .out_c(wire_c[0])
    );
    
    Full_Adder A1(
        .in_x(in_x[1]),
        .in_y(in_y[1]),
        .in_c(wire_c[0]),
        .out_s(out_s[1]),
        .out_c(wire_c[1])
    );
    
    Full_Adder A2(
        .in_x(in_x[2]),
        .in_y(in_y[2]),
        .in_c(wire_c[1]),
        .out_s(out_s[2]),
        .out_c(wire_c[2])
    );
    
    Full_Adder A3(
        .in_x(in_x[3]),
        .in_y(in_y[3]),
        .in_c(wire_c[2]),
        .out_s(out_s[3]),
        .out_c(out_c)
    );
    

    
endmodule
