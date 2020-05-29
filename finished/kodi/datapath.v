`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 05/27/2020 09:09:07 PM
// Design Name:  
// Module Name: Datapath
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
 
 
module Datapath( input clk, input pcFill, input RegDest, input ALUSrc, MemToReg, input RegWrite, MemRead, input MemWrite, ALUOp, output opcode);
// i ka output hyrjet e control unit ndersa output e ka veq pjesen ne drejtim te kontorll unit// tek projekti i dizajnun
// input pc se na duhet ni vlere fillestare prej tciles me startu
// duhet mi deklaru kto si wire reg
wire [15:0] instruksioni;
wire [1:0] opcode;
wire [15:0] WD;
wire RFWe;
wire [15:0] RD1, RD2;
wire [2:0] RS;
wire [2:0] RT;
wire [4:0] funct;
wire [7:0] immediate;
wire [15:0] alu2;
wire [15:0] imm_long;
 
initial begin
    assign pc  = 16'd0;
// vler fillestare
end
 
always @(posedge clk)
begin
    assign pc = pcFill;
end
 
InstMemory DPIM (clk, pc, instruktioni);// kto i kem te instraction memory
    // instruktioni vjen 16 tash na e ndajm opocodin
 assign opocode = instruksioni[15:14];
 assign RS = instruksioni[13:11];// REGISTER SOURCE
 assign RT = instruksioni[10:8];
 assign RD = instruksioni[7:5];
 assign funct = instruksioni[4:0];
 assign immediate = instruksioni[7:0];
 
always @(opcode)
begin
    if(opcode == 2'd0)
    //formati R
    s = 0;
    else
    //formati I
    s = 1;
end
 
mux_2to1 M21HyrjeRF(s, RD, RT, z );//D0 RT DHE D1 E SHTIM NE D1
RegisterFile RF(RS, RT, RD, RFWe, clk, RD1, RD2);
 
assign imm_long = {{8{'b{immediate[7]}}, immediate[7:0]}; //shifti
assign alu2 = s ? immediate : RD2;
alu_32bit aluRF(
RD1, //A
    ALU2,
    input cin,
    input bnegate,
    input less,
    input [1:0] op,
    output result,
    output cout,
    output zero,
    output overflow
    );
endmodule