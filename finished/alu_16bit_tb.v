`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2020 02:14:01 AM
// Design Name: 
// Module Name: alu_16bit_tb
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


module alu_16bit_tb();
    
reg[15:0] a, b;
reg cin, ainvert, bnegate, less;
reg[2:0] op;

wire[15:0] result;
wire cout;
wire overflow;

initial 
$monitor ("a = %d, b = %d, cin = %b, cout = %b, op2 = %b ,op1 = %b, op0 = %b, ainvert = %b, bnegate = %b, less = %b, result=%d",
a, b, cin, cout,op[2], op[1], op[0], ainvert, bnegate, less, result);


initial
begin

//AND
#0 a=0; b=0; cin=0; ainvert=0; bnegate=0; less=0;  op[2]=0; op[1]=0; op[0]=0; //r=0 cout=0
#10 a=1; b=0; cin=0; ainvert=0; bnegate=0; less=0; op[2]=0; op[1]=0; op[0]=0;//r=0 cout=0
#10 a=1; b=1; cin=0; ainvert=0; bnegate=0; less=0; op[2]=0; op[1]=0; op[0]=0;//r=1 cout=0
//OR
#10 a=0; b=0; cin=0; ainvert=0; bnegate=0; less=0; op[2]=2; op[1]=1; op[0]=0;//r=0 cout=0
#10 a=1; b=0; cin=0; ainvert=0; bnegate=0; less=0; op[2]=0; op[1]=1; op[0]=0;//r=1 cout=0
#10 a=1; b=1; cin=0; ainvert=0; bnegate=0; less=0; op[2]=0; op[1]=1; op[0]=0;//r=1 cout=0

//ADD
#10 a=1; b=0; cin=0; ainvert=0; bnegate=0; less=0; op[2]=1; op[1]=0; op[0]=0;//r=0 cout=0
#10 a=0; b=1; cin=0; ainvert=0; bnegate=0; less=0; op[2]=1; op[1]=0; op[0]=0;//r=0 cout=0

//SUB
#10 a=1; b=0; cin=0; ainvert=0; bnegate=1; less=0; op[2]=0; op[1]=0; op[0]=1;//r=1 cout=0
#10 a=1; b=0; cin=0; ainvert=0; bnegate=1; less=0; op[2]=0; op[1]=0; op[0]=1;//r=0 cout=0
//NOR
//not (a OR b) 
#10 a=16'd2; b=16'd1; cin=0; ainvert=1; bnegate=1; less=0; op[2]=0; op[1]=0; op[0]=0;//r=0 cout=0
//XOR
#10 a=0; b=0; cin=0; ainvert=0; bnegate=0; less=0; op[2]=1; op[1]=1; op[0]=0;//r=1 cout=0
#10 a=1; b=0; cin=0; ainvert=0; bnegate=0; less=0; op[2]=1; op[1]=1; op[0]=0;//r=1 cout=0
#10 a=1; b=1; cin=0; ainvert=0; bnegate=0; less=0; op[2]=1; op[1]=1; op[0]=0;//r=1 cout=0


#10 $stop;
end

alu_16bit a16(a, b, cin, ainvert, bnegate, less, op, result, cout,overflow);
endmodule