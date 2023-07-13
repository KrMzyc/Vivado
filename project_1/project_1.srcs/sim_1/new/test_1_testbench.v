`timescale 1us / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/12 20:46:53
// Design Name: 
// Module Name: test_1_testbench
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


module test_1_testbench;
reg data_1, data_2; //定义输入寄存器
wire data_out_and, data_out_or,data_out_not,data_out_xor; //定义输出线型

test_1 test_1_dut( //设计模块端口例化
 .data_1(data_1),
 .data_2(data_2),
 .data_out_and(data_out_and),
 .data_out_or(data_out_or),
 .data_out_not(data_out_not),
 .data_out_xor(data_out_xor)
 );

 initial begin //描述数据流的变化

 #1000
 data_1 = 0;data_2 = 1;
 #1000
 data_1 = 1;data_2 = 0;
 #1000
 data_1 = 0;data_2 = 1;
 #1000
 data_1 = 1;data_2 = 1;
 #1000
 data_1 = 0;data_2 = 0;
 #1000
 $stop; //系统任务停止
 end

endmodule
