`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/14 15:49:37
// Design Name: 
// Module Name: half_subber_bench
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


module half_subber_bench;

reg i1;
reg i2;
wire o_c;     //½èÎ»
wire o_sub;

half_subber uut(i1,i2,o_c,o_sub);

initial
  begin
    #1000
    i1=0;i2=0;
    #1000
    i1=1;i2=0;
    #1000
    i1=0;i2=1;
    #1000
    i1=1;i2=1;
    #1000
    $stop;
  end

initial
  $monitor("i1=%0b,i2=%0b,o_c=%0b,o_sub=%0b",i1,i2,o_c,o_sub);

endmodule
