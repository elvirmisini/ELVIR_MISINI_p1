

module array_mul3_bip (a, b, prod);
//define inputs and output
  input [15:0] a, b;//inputi 16 bit
  output [31:0] prod; //outputi 32 bit

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
//instantiate the logic for prod[3]
and (net10, a[2], b[1]);
and (net11, a[1], b[2]);
full_adder inst4 (net10, net11, net7, net12, net13);
full_adder inst5 (net12, 1'b0, net9, prod[3], net14);
//instantiate the logic for prod[4] and prod [5]
and (net15, a[2], b[2]);
full_adder inst6 (net15, net14, net13, prod[4], prod[5]);
endmodule
