`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2022 08:41:40 PM
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(
    input in_x, in_y, in_c,
    output out_s, out_c
    );
//    //Structural
//    assign out_s = in_x ^ in_y ^ in_c;
//    assign out_c = (in_x & in_y) | in_c & (in_x ^ in_y);

    //Model with half adder    
    wire wire_s0, wire_c0, wire_c1;

    Half_Adder A0 (
        .x(in_x),
        .y(in_y),
        .c(wire_c0),
        .s(wire_s0)
    );
    
    Half_Adder A1 (
        .x(in_c),
        .y(wire_s0),
        .c(wire_c1),
        .s(out_s)
    );
    
    assign out_c = wire_c0 | wire_c1;
    
endmodule
