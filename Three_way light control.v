`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2022 10:59:14
// Design Name: 
// Module Name: Three_way light control
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
module Three_way (f,x1,x2,x3 );
output f;
input x1,x2,x3;
wire w1,w2,w3,w4,w5,w6,w7;
not(w1,x1);
not(w2,x2);
not(w3,x3);
and(w4,w1,w2,x3);
and(w5,w1,x2,w3);
and(w6,x1,w2,w3);
and(w7,x1,x2,x3);
or(f,w4,w5,w6,w7);
endmodule
