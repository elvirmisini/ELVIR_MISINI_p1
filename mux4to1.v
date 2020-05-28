`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2020 02:00:05 PM
// Design Name: 
// Module Name: mux_4to1
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


module mux_4to1(output out, input D0, D1, D2, S0, S1, S2);
assign S1bar=~S1;
assign S0bar=~S0;
assign S2bar=~S2;
assign out = (D0 & S2bar & S1bar & S0bar) | (D1 & S2bar & S1bar & S0) | (D2 & S2bar & S1 & S0bar) ;
endmodule
