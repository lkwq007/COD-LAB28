`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:23:21 11/12/2009 
// Design Name: 
// Module Name:    IF 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module IF(clk,reset,Z,J,JR,PC_IFWrite,JumpAddr,
           JrAddr,BranchAddr,Instruction_if,PC,NextPC_if);
    input clk;
    input reset;
    input Z;
    input J;
    input JR;
    input PC_IFWrite;
    input [31:0] JumpAddr;
    input [31:0] JrAddr;
    input [31:0] BranchAddr;
    output [31:0] Instruction_if;
    output [31:0] PC,NextPC_if;
    reg PC;
// MUX for PC
    reg[31:0] PC_in;
    always @(*) begin
        case({JR,J,Z})
        1:PC_in<=BranchAddr;
        2:PC_in<=JumpAddr;
        4:PC_in<=JrAddr;
        default:PC_in<=NextPC_if;
    end

	
//PC REG
    always @(posedge clk) begin
        if(PC_IFWrite) begin
            PC=PC_in;
        end
    end
     
//Adder for NextPC
    adder_32bits pcAdd4(.a(pc),.b({29'b0,3'b100}),.ci(1'b0),.s(NextPC_if),.co());
  
//ROM
InstructionROM  InstructionROM(
	.addr(PC[7:2]),
	.dout(Instruction_if));
	
endmodule
