`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2020 08:57:55 PM
// Design Name: 
// Module Name: mux4to1
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


module mux4to1(
    input [3:0] d,
    input [1:0] s,
    input [0:0] enbl,
    output [0:0] z1
    );
    
    not inst1 (net1, s[0]),
inst2 (net2, s[1]);
and inst3 (net3, d[0], net1, net2, enbl),
inst4 (net4, d[1], s[0], net2, enbl),
inst5 (net5, d[2], net1, s[1], enbl),
inst6 (net6, d[3], s[0], s[1], enbl);
or inst7 (z1, net3, net4, net5, net6);

    
endmodule
