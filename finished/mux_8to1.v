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

module mux_4to1(S0, S1, S2, D0, D1, D2,D3,D4,D5,D6,D7, out);
input wire D0, D1, D2,D3,D4,D5,D6,D7 S0, S1, S2;
output reg out;
always@(*)
begin
case(S0 & S1 & S2)
3'b000: out=D0;
3'b010: out=D1;
3'b011: out=D2;
3'b100: out=D3;
3'b101: out=D4;
3'b001: out=D5;
3'b110: out=D6;
3'b111: out=D7;

default: out=1'b0;
endcase
end
endmodule