`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2022 03:23:42 PM
// Design Name: 
// Module Name: mux_generic_ibit_tb
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


module mux_generic_ibit_tb(
//     1) Decalre local reg and wire identifiers
//     2) Instatiat the module under test (unit under test UUT)
//     3) Specify a stopwatch to stop the simulation
//     4) Generate stimuli using initial and always
//     5) Display the output resonse (text, graph)
    );
//     1) Decalre local reg and wire identifiers
    parameter n = 4;
    reg [n-1:0] w_tb;
    reg [$clog2(n)-1:0] s_tb;
    wire f_tb;
//     2) Instatiat the module under test (unit under test UUT)
    mux_generic_1bit #(.inputs(n)) uut (
        .w_in(w_tb),
        .s_in(s_tb),
        .f_out(f_tb)
    );
//     3) Specify a stopwatch to stop the simulation
    initial
    begin
        #65 $finish;
    end
//     4) Generate stimuli using initial and always
    initial
    begin
        w_tb = 4'b0000;
        s_tb = 2'b00;
        
        #5
        w_tb = 4'b0001;
        s_tb = 2'b00;
        
        #5
        w_tb = 4'b1110;
        s_tb = 2'b00;
        
        #5
        w_tb = 4'b0000;
        s_tb = 2'b01;
        
        #5
        w_tb = 4'b0010;
        s_tb = 2'b01;
        
        #5
        w_tb = 4'b1101;
        s_tb = 2'b01;
        
        #5
        w_tb = 4'b0000;
        s_tb = 2'b10;
        
        #5
        w_tb = 4'b0100;
        s_tb = 2'b10;
        
        #5
        w_tb = 4'b1011;
        s_tb = 2'b10;
        
        #5
        w_tb = 4'b0000;
        s_tb = 2'b11;
        
        #5
        w_tb = 4'b1000;
        s_tb = 2'b11;
        
        #5
        w_tb = 4'b0111;
        s_tb = 2'b11;
        
        #5;
        
    end
//     5) Display the output resonse (text, graph)
    initial
    begin
        $monitor("time = %4d: w_tb = %4b \t s_tb = %2b \t f_tb = %1b", $time, w_tb, s_tb, f_tb);
    end
endmodule
