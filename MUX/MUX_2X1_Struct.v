`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2022 07:49:19 PM
// Design Name: 
// Module Name: MUX_2X1_Struct
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


module MUX_2X1_Struct(
    input in_x1, in_x2, in_s,
    output out_f
    );
    
    /*
    not(not_s);
    and(wire1,in_x1, not_s);
    and(wire2,in_x2,in_s);
    or(wire1,wire2);
    */
    
    assign out_f = in_x1 & ~in_s | in_x2 & in_s;
endmodule
