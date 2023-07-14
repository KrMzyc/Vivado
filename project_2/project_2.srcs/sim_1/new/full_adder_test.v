`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/14 11:21:32
// Design Name: 
// Module Name: full_adder_test
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


module full_adder_test;
reg i1;
reg i2;
reg i_c;
wire o_c;
wire o_sum;

full_adder uut(i1,i2,i_c,o_c,o_sum);

initial
  begin
    i1=0;i2=0;i_c=0;
    #100
    i1=1;i2=0;i_c=0;
    #100
    i1=0;i2=1;i_c=0;
    #100
    i1=1;i2=1;i_c=0;
    #100
    i1=0;i2=0;i_c=1;
    #100
    i1=1;i2=0;i_c=1;
    #100
    i1=0;i2=1;i_c=1;
    #100
    i1=1;i2=1;i_c=1;
    #100
    $stop;
  end

initial
  $monitor("i1=%0b,i2=%0b,i_c=%0b,o_c=%0b,o_sum=%0b",i1,i2,i_c,o_c,o_sum); 

endmodule
