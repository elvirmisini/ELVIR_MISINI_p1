`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2020 02:38:44 PM
// Design Name: 
// Module Name: slm_1
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


module array_mul16_bip (a, b, prod);
//define inputs and output
input [7:0] a, b;
output [15:0] prod; 
wire net1, net2, net3, net4, net5, net6, net7, net8, net9,
net10, net11, net12, net13, net14, net15;
//instantiate the logic for prod[0]
and (prod[0], a[0], b[0]);
//instantiate the logic for prod[1]
and (net1, a[1], b[0]);
and (net2, a[0], b[1]);
full_adder inst1 (net1, net2, 1'b0, prod[1], net3);


//a, b, cin, sum, cout
//instantiate the logic for prod[2]
and (net4, a[2], b[0]);
and (net5, a[1], b[1]);
full_adder inst2 (net4, net5, 1'b0, net6, net7);
and (net8, a[0], b[2]);
full_adder inst3 (net6, net8, net3, prod[2], net9);

and (net10, a[3], b[0]);
and (net11, a[2], b[1]);
full_adder inst4 (net10, net11, 1'b0, net12, net13);
and (net14, a[1], b[2]);
full_adder inst5 (net12, net14, 1'b0, net15, net16);
and (net17, a[0], b[3]);
full_adder inst6 (net15, net17, net9, prod[3], net18);
//////////////////////////

and (net19, a[4], b[0]);
and (net20, a[3], b[1]);
full_adder inst7 (net19, net20, 1'b0, net21, net22);
and (net23, a[2], b[2]);
full_adder inst8 (net21, net23, 1'b0, net24, net25);
and (net26, a[1], b[3]);
full_adder inst9 (net25, net26, 1'b0, net27, net28);
and (net29, a[0], b[4]);
full_adder inst10 (net27, net29, net18, prod[4], net30);
//////////////////////////
and (net31, a[5], b[0]);
and (net32, a[4], b[1]);
full_adder inst11 (net31, net32, 1'b0, net33, net34);
and (net35, a[3], b[2]);
full_adder inst12 (net33, net35, 1'b0, net36, net37);
and (net38, a[2], b[3]);
full_adder inst13 (net36, net38, 1'b0, net39, net40);
and (net41, a[1], b[4]);
full_adder inst14 (net39, net41, 1'b0, net42, net43);
and (net44, a[0], b[5]);
full_adder inst15 (net42, net44, net30, prod[5], net45);

and (net46, a[6], b[0]);
and (net47, a[5], b[1]);
full_adder inst16 (net46, net47, 1'b0, net48, net49);
and (net50, a[4], b[2]);
full_adder inst17 (net48, net50, 1'b0, net51, net52);
and (net53, a[3], b[3]);
full_adder inst18 (net51, net53, 1'b0, net54, net55);
and (net56, a[2], b[4]);
full_adder inst19 (net54, net56, 1'b0, net57, net58);
and (net59, a[1], b[5]);
full_adder inst20 (net57, net59, 1'b0, net60, net61);
and (net62, a[0], b[6]);
full_adder inst21 (net60, net62, net45, prod[6], net63);


and (net64, a[7], b[0]);
and (net65, a[6], b[1]);
full_adder inst22 (net64, net65, 1'b0, net66, net67);
and (net68, a[5], b[2]);
full_adder inst23 (net66, net68, 1'b0, net69, net70);
and (net71, a[4], b[3]);
full_adder inst24 (net69, net71, 1'b0, net72, net73);
and (net74, a[3], b[4]);
full_adder inst25 (net72, net74, 1'b0, net75, net76);
and (net77, a[2], b[5]);
full_adder inst26 (net75, net77, 1'b0, net78, net79);
and (net80, a[1], b[6]);
full_adder inst27 (net78, net80, 1'b0, net81, net82);
and (net83, a[0], b[7]);
full_adder inst28 (net81, net83, net63, prod[7], net84);
///////////////////////
//////////////////////
and (net4, a[7], b[1]);
and (net5, a[6], b[2]);
full_adder inst29 (net4, net5, 1'b0, net6, net7);
and (net8, a[5], b[3]);
full_adder inst30 (net4, net5, 1'b0, net6, net7);
and (net8, a[4], b[4]);
full_adder inst31 (net4, net5, 1'b0, net6, net7);
and (net8, a[3], b[5]);
full_adder inst32 (net4, net5, 1'b0, net6, net7);
and (net8, a[2], b[6]);
full_adder inst33 (net4, net5, 1'b0, net6, net7);
and (net8, a[1], b[7]);
full_adder inst34 (net6, net8, net84, net6, net9);
full_adder inst35 (net4,1'b0, net5,prod[8], net7);

and (net4, a[7], b[2]);
and (net5, a[6], b[3]);
full_adder inst36 (net4, net5, 1'b0, net6, net7);
and (net8, a[5], b[4]);
full_adder inst37 (net4, net5, 1'b0, net6, net7);
and (net8, a[4], b[5]);
full_adder inst38 (net4, net5, 1'b0, net6, net7);
and (net8, a[3], b[6]);
full_adder inst39 (net4, net5, 1'b0, net6, net7);
and (net8, a[2], b[7]);
full_adder inst40 (net6, net8, net3, prod[9], net9);
full_adder inst41 (net4, net5, 1'b0, net6, net7);

and (net4, a[7], b[3]);
and (net5, a[6], b[4]);
full_adder inst42 (net4, net5, 1'b0, net6, net7);
and (net8, a[5], b[5]);
full_adder inst43 (net4, net5, 1'b0, net6, net7);
and (net8, a[4], b[6]);
full_adder inst44 (net4, net5, 1'b0, net6, net7);
and (net8, a[3], b[7]);
full_adder inst45 (net6, net8, net3, prod[10], net9);
full_adder inst46 (net4, net5, 1'b0, net6, net7);

and (net4, a[7], b[4]);
and (net5, a[6], b[5]);
full_adder inst47 (net4, net5, 1'b0, net6, net7);
and (net8, a[5], b[6]);
full_adder inst48 (net4, net5, 1'b0, net6, net7);
and (net8, a[4], b[7]);
full_adder inst49 (net6, net8, net3, prod[11], net9);
full_adder inst50 (net4, net5, 1'b0, net6, net7);

and (net4, a[7], b[5]);
and (net5, a[6], b[6]);
full_adder inst51 (net4, net5, 1'b0, net6, net7);
and (net8, a[5], b[7]);
full_adder inst52 (net6, net8, net3, prod[12], net9);
full_adder inst53 (net4, net5, 1'b0, net6, net7);

and (net4, a[7], b[6]);
and (net5, a[6], b[7]);
//full_adder inst3 (net6, net8, net3, prod[2], net9);
//full_adder inst2 (net4, net5, 1'b0, net6, net7);
//instantiate the logic for prod[3]
//and (net10, a[2], b[1]);
//and (net11, a[1], b[2]);
full_adder inst54 (net10, net11, net7, net12, net13);
full_adder inst55 (net12, 1'b0, net9, prod[13], net14);
//instantiate the logic for prod[4] and prod [5]


and (net15, a[7], b[7]);
full_adder inst56 (net15, net14, net13, prod[14], prod[15]);
endmodule
