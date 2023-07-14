`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/14 15:56:59
// Design Name: 
// Module Name: full_subber
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


module full_subber(
input i1,
input i2,
input i_c,        //��λ��λ��λ
output o_c,       //��λ���λ��λ
output o_sub      //��
    );

assign o_sub = i1^i2^i_c;
assign o_c = (!i1&(i2^i_c))| (i2&i_c);


endmodule
