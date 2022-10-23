`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2022 02:39:46 PM
// Design Name: 
// Module Name: mux_4X1_nbit
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


module mux_4X1_nbit
    #(parameter n = 4)(
    input [n-1:0] w0_in, w1_in, w2_in, w3_in,
    input [1:0] s_in,
    output reg [n-1:0] f_out
    );
//    f = A?B:C
//    assign f_out = s_in[0] ? (s_in[1] ? w3_in : w1_in) : (s_in[1] ? w2_in : w0_in );

    always @(w0_in, w1_in, w2_in, w3_in, s_in)
    begin
        case(s_in)
            2'b00: f_out = w0_in;
            2'b01: f_out = w1_in;
            2'b10: f_out = w2_in;
            2'b11: f_out = w3_in;
            default : f_out = 'bx;
        endcase
//        //if else
//        if (s_in == 2'b00)
//        begin
//            f_out = w0_in;
//        end
//        else if (s_in == 2'b01)
//        begin
//            f_out = w1_in;
//        end
//        else if (s_in == 2'b10)
//        begin
//            f_out = w2_in;
//        end
//        else if (s_in == 2'b11)
//        begin
//            f_out = w3_in;
//        end 
//        else
//            f_out = 'bx;
    end
    
endmodule
