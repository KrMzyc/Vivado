`timescale 1us / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/12 20:40:53
// Design Name: 
// Module Name: test_1
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


module test_1(data_1,
data_2,
data_out_and,
data_out_or,
data_out_not,
data_out_xor);

input data_1,data_2;
output reg data_out_and,data_out_or,data_out_not,data_out_xor;

always @ (*)
begin
data_out_and = (data_1 && data_2);
data_out_or = (data_1 || data_2);
data_out_not= !data_1;
data_out_xor = (data_1 ^ data_2);
end
endmodule
