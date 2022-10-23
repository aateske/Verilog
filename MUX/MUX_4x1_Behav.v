`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2022 07:51:33 PM
// Design Name: 
// Module Name: MUX_4x1_Behav
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


module MUX_4x1_Behav(
    input [3:0] in_x,
    input [1:0] in_s,
    output out_f
    );
//    always @(in_x, in_s)
//    begin
//        case(in_s)
//            2'b00: out_f = in_x[0];
//            2'b01: out_f = in_x[1];
//            2'b10: out_f = in_x[2];
//            2'b11: out_f = in_x[3];
//        endcase
//    end
    /*
    Module being used:
        MUX_2X1_Behavioral(input in_x1, in_x2, in_s,output reg out_f)
    */
    
    wire wire_M1, wire_M2;
    
    MUX_2X1_Behavioral M0 (
        .in_x1(in_x[0]),
        .in_x2(in_x[1]),
        .in_s(in_s[0]),
        .out_f(wire_M1)
    );
    MUX_2X1_Behavioral M1 (
        .in_x1(in_x[2]),
        .in_x2(in_x[3]),
        .in_s(in_s[0]),
        .out_f(wire_M2)
    );
    MUX_2X1_Behavioral M2 (
        .in_x1(wire_M1),
        .in_x2(wire_M2),
        .in_s(in_s[1]),
        .out_f(out_f)
    );
endmodule
