`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/14 11:17:32
// Design Name: 
// Module Name: full_adder
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


module full_adder(
input i1,
input i2,
input i_c,      //输入进位
output o_c,     //输出进位
output o_sum
    );
assign o_sum = i1^i2^i_c;
assign o_c = ((i1^i2)&i_c | (i1&i2));

endmodule
