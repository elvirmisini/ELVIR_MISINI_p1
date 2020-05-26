`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2020 08:59:35 PM
// Design Name: 
// Module Name: mux4to1_TESTIM
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


module mux4to1_TESTIM();

reg [3:0] d;
reg [1:0] s;
reg enbl;
wire z1;
initial
$monitor ($time,"ns, select:s=%b, inputs:d=%b, output:z1=%b",
s, d, z1);
initial
begin
#0 s[0]=1'b0; s[1]=1'b0;
d[0]=1'b0; d[1]=1'b1; d[2]=1'b0; d[3]=1'b1;
enbl=1'b1; //d[0]=0; z1=0
#10 s[0]=1'b0; s[1]=1'b0;
d[0]=1'b1; d[1]=1'b1; d[2]=1'b0; d[3]=1'b1;
enbl=1'b1; //d[0]=1; z1=1
#10 s[0]=1'b1; s[1]=1'b0;
d[0]=1'b1; d[1]=1'b1; d[2]=1'b0; d[3]=1'b1;
enbl=1'b1; //d[1]=1; z1=1
#10 s[0]=1'b0; s[1]=1'b1;
d[0]=1'b1; d[1]=1'b1; d[2]=1'b0; d[3]=1'b1;
enbl=1'b1; //d[2]=0; z1=0
#10 s[0]=1'b1; s[1]=1'b0;
d[0]=1'b1; d[1]=1'b0; d[2]=1'b0; d[3]=1'b1;
enbl=1'b1; //d[1]=1; z1=0
#10 s[0]=1'b1; s[1]=1'b1;
d[0]=1'b1; d[1]=1'b1; d[2]=1'b0; d[3]=1'b1;
enbl=1'b1; //d[3]=1; z1=1
#10 s[0]=1'b1; s[1]=1'b1;
d[0]=1'b1; d[1]=1'b1; d[2]=1'b0; d[3]=1'b0;
enbl=1'b1; //d[3]=0; z1=0
#10 s[0]=1'b1; s[1]=1'b1;
d[0]=1'b1; d[1]=1'b1; d[2]=1'b0; d[3]=1'b0;
enbl=1'b0; //d[3]=0; z1=0
#10 $stop;
end
//instantiate the module into the test bench
mux4to1 EmriQeDoniTeJaVeniInstances (
.d(d),
.s(s),
.z1(z1),
.enbl(enbl));


endmodule
