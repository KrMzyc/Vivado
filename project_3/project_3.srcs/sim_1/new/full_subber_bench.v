`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/14 16:17:37
// Design Name: 
// Module Name: full_subber_bench
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


module full_subber_bench;

reg i1;
reg i2;
reg i_c;     //��λ��λ��λ
wire o_c;     //��λ���λ��λ
wire o_sub;

full_subber uut(i1,i2,i_c,o_c,o_sub);

initial
  begin
    #1000
    i1=0;i2=0;i_c=0;
    #1000
    i1=1;i2=0;i_c=0;
    #1000
    i1=0;i2=1;i_c=0;
    #1000
    i1=1;i2=1;i_c=0;
    #1000
    i1=0;i2=0;i_c=1;
    #1000
    i1=1;i2=0;i_c=1;
    #1000
    i1=0;i2=1;i_c=1;
    #1000
    i1=1;i2=1;i_c=1;
    #1000
    $stop;
  end

initial
  $monitor("i1=%0b,i2=%0b,i_c=%0b,o_c=%0b,o_sub=%0b",i1,i2,i_c,o_c,o_sub);

endmodule
