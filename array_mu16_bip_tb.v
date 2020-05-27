module array_mu16_bip_tb;
//inputs are reg for test bench
//outputs are wire for test bench
  reg [15:0] a, b;
  wire [31:0] prod;

//apply stimulus and display variables
initial
begin: apply_stimulus
  reg [32:0] invect;
for (invect = 0; invect < 64; invect = invect + 1)
begin
  {a, b} = invect [32:0];
#10 $display ("a = %d, b = %d, prod = %d", a, b,
prod);
end
end
//instantiate the module into the test bench
array_mul3_bip inst1 (a, b, prod);
endmodule
