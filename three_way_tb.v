`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2022 11:09:14
// Design Name: 
// Module Name: three_way_tb
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


module three_way_tb();
reg x1,x2,x3;
wire f;
Three_way dut(.f(f),.x1(x1),.x2(x2),.x3(x3));
initial begin
x1=1'b0;x2=1'b0;x3=1'b0;
#2
x1=1'b0;x2=1'b0;x3=1'b1;
#2
x1=1'b0;x2=1'b1;x3=1'b0;
#2
x1=1'b0;x2=1'b1;x3=1'b1;
#2
x1=1'b1;x2=1'b0;x3=1'b0;
#2
x1=1'b1;x2=1'b0;x3=1'b1;
#2
x1=1'b1;x2=1'b1;x3=1'b0;
#2
x1=1'b1;x2=1'b1;x3=1'b1;
#2
$stop;
end
endmodule
