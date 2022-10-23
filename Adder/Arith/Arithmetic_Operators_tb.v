`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2022 01:55:23 PM
// Design Name: 
// Module Name: Arithmetic_Operators_tb
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


module Arithmetic_Operators_tb(
    );
//     1) Decalre local reg and wire identifiers
    parameter n = 4;
    reg [n-1:0] tb_x, tb_y;
    wire [n-1:0] tb_s;
    wire tb_c, tb_overflow;
//     2) Instatiat the module under test (unit under test UUT)
    Arithmetic_Operators #(.n(n)) uut (
    .in_x(tb_x),
    .in_y(tb_y),
    .out_s(tb_s),
    .out_c(tb_c),
    .out_overflow(tb_overflow)
    );
//     3) Specify a stopwatch to stop the simulation
    initial
    begin
        #40 $finish;
    end
//     4) Generate stimuli using initial and always
    initial
    begin
        tb_x = 4'd5;
        tb_y = 4'd6;
        
        #5
        tb_x = 4'd1;
        tb_y = 4'd3;
        
        #5;
    end
//     5) Display the output resonse (text, graph)
    initial
    begin
        $monitor("time = %3d: tb_x = %d \t tb_y = %d \t tb_s = %d \t tb_c = %1b \t tb_overflow = %1b", $time, tb_x, tb_y, tb_s, tb_c, tb_overflow);
    end
endmodule
