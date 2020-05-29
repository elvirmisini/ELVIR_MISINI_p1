`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2020 02:31:32 PM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();

reg a, b, cin;
wire sum, cout;

initial
$monitor("a=%b, b=%b, cin=%b, sum=%b, cout=%b", a, b, cin, sum, cout);

initial
begin 
#0  a=1'b0; b=1'b0; cin=1'b0;
#10 a=1'b0; b=1'b1; cin=1'b0;
#10 a=1'b1; b=1'b0; cin=1'b0;
#10 a=1'b1; b=1'b1; cin=1'b0;
#10 $stop;
end

full_adder FA(a, b, cin, sum, cout);

endmodule
