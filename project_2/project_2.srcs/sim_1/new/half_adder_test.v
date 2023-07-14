`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/14 11:08:05
// Design Name: 
// Module Name: half_adder_test
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


module half_adder_test;

reg i1;
reg i2;
wire o_c;
wire o_sum;

half_adder uut(i1,i2,o_c,o_sum);

initial
    
    begin
        i1=0;i2=0;
        #100
        i1=1;i2=0;
        #100
        i1=0;i2=1;
        #100
        i1=1;i2=1;
        #100
        $stop;
        
    end
 
 initial
     $monitor("i1=%0b,i2=%0b,o_c=%0b,o_sum=%0b",i1,i2,o_c,o_sum);
    
endmodule
