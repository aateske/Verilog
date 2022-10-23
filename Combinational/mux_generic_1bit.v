`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2022 03:10:04 PM
// Design Name: 
// Module Name: mux_generic_1bit
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


module mux_generic_1bit
    #(parameter inputs = 4)(
        input [inputs-1:0] w_in,
        input [$clog2(inputs)-1:0] s_in,
        output reg f_out
    );
    
    integer i;
    
    always @(w_in, s_in)
    begin
        f_out = 'bx;
        for(i = 0; i < inputs; i = i + 1)
            if(i == s_in)
                f_out = w_in[i];
    end
    
endmodule
