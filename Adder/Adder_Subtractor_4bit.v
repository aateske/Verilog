`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2022 09:47:44 AM
// Design Name: 
// Module Name: Adder_Subtractor_4bit
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


module Adder_Subtractor_4bit(
    input [3:0] in_x, in_y,
    input in_add_n,
    output [3:0] out_s,
    output out_c
    );
    
    wire [3:0] wire_xor_y;
    
    assign wire_xor_y[0] = in_y[0] ^ in_add_n;
    assign wire_xor_y[1] = in_y[1] ^ in_add_n;
    assign wire_xor_y[2] = in_y[2] ^ in_add_n;
    assign wire_xor_y[3] = in_y[3] ^ in_add_n;
    
    Ripple_Carry_Adder_4bit A0 (
    .in_x(in_x),
    .in_y(wire_xor_y),
    .in_c(in_add_n),
    .out_s(out_s),
    .out_c(out_c)
    );

endmodule
