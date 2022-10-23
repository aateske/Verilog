`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2022 09:46:49 AM
// Design Name: 
// Module Name: Adder_Subtractor_Nbit
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


module Adder_Subtractor_Nbit
    #(parameter n = 4)
    (
    input [n-1:0] in_x, in_y,
    input in_add_n,
    output [n-1:0] out_s,
    output out_c,
    output out_overflow
    );
    //test
    wire [n-1:0] wire_xor_y;
    wire [n:0] wire_c;
    assign wire_c[0] = in_add_n;
    assign out_c = wire_c[n];
    
    generate
        genvar i;
        for(i = 0; i < n ; i=i+1)
        begin: bit
            assign wire_xor_y[i] = in_y[i] ^ in_add_n;

            Full_Adder FA(
                .in_x(in_x[i]),
                .in_y(wire_xor_y[i]),
                .in_c(wire_c[i]),
                .out_s(out_s[i]),
                .out_c(wire_c[i+1])
            );
       end
    endgenerate
    
    assign out_overflow =  wire_c[n] ^ wire_c[n-1];
    

endmodule
