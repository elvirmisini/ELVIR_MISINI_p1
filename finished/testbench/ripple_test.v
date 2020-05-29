`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2020 02:46:45 PM
// Design Name: 
// Module Name: ripple_test
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


module ripple_test();
reg [3:0] a, b; //inputs are reg for test bench
reg cin;
wire [3:0] sum; //outputs are wire for test bench
wire cout;
//display variables
initial
$monitor ("a = %b, b = %b, cin = %b, cout = %b, sum = %b",
a, b, cin, cout, sum);
initial //apply input vectors
begin
#0 a = 4'b0000; b = 4'b0001; cin = 1'b0;
#10 a = 4'b0010; b = 4'b0001; cin = 1'b1;
#10 a = 4'b0011; b = 4'b0101; cin = 1'b1;
#10 a = 4'b1010; b = 4'b1001; cin = 1'b0;
#10 a = 4'b0111; b = 4'b0111; cin = 1'b1;
#10 a = 4'b1010; b = 4'b0111; cin = 1'b0;
#10 a = 4'b1110; b = 4'b0111; cin = 1'b0;
#10 a = 4'b1100; b = 4'b1100; cin = 1'b1;
#10 a = 4'b1111; b = 4'b0110; cin = 1'b1;
#10 a = 4'b1011; b = 4'b1000; cin = 1'b0;
#10 a = 4'b1111; b = 4'b0000; cin = 1'b1;
#10 a = 4'b1101; b = 4'b1100; cin = 1'b0;
#10 a = 4'b1000; b = 4'b0111; cin = 1'b1;
#10 a = 4'b0001; b = 4'b1110; cin = 1'b0;
#10 a = 4'b1111; b = 4'b1111; cin = 1'b1;
#10 $stop;
end

adder4_ripple_carry aaa (a, b, cin, sum, cout);
endmodule
