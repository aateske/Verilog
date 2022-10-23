`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2022 07:22:41 PM
// Design Name: 
// Module Name: MUX_2X1_Behavioral
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


module MUX_2X1_Behavioral(
    input in_x1, in_x2, in_s,
    output reg out_f
    );
//    always @(in_x1, in_x2, in_s)
//    begin
//        if (in_s)
//        begin
//            out_f = in_x2;
//        end
//        else
//        begin
//            out_f = in_x1;
//        end  
//    end
    always @(in_x1, in_x2, in_s)
    begin
        case(in_s)
            0: out_f = in_x1;
            1: out_f = in_x2;
        endcase
    end
    

endmodule
