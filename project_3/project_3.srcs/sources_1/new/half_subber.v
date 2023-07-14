`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/14 15:38:45
// Design Name: 
// Module Name: half_subber
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


module half_subber(
input i1,
input i2,
output o_c,
output o_sub
    );
//’‚¿Ô”√ i1-i2
assign o_c = (!i1)&i2;
assign o_sub = i1^i2;
endmodule
