`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ZJU
// Engineer: 
// 
// Create Date:    19:44:48 11/12/2009 
// Design Name: 
// Module Name:    MipsPipelineCPU 
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
module MipsPipelineCPU(clk,reset,JumpFlag,Instruction_id,ALU_A,
					ALU_B,ALUResult,PC,MemDout_wb,Stall
						//,DataTest,ControlTest
							);
	input clk;
	input reset;
	output[2:0] JumpFlag;
	output [31:0] Instruction_id;
	output [31:0] ALU_A;
	output [31:0] ALU_B;
	output [31:0] ALUResult;
	output [31:0] PC;
	output [31:0] MemDout_wb;
	output Stall;
	//output[31:0] DataTest;
	//output    ControlTest;
 
	//IF  module
	wire[31:0] Instruction_id;
	wire PC_IFWrite,J,JR,Z,IF_flush;
	wire[31:0] JumpAddr,JrAddr,BranchAddr,NextPC_if,Instruction_if;
	assign JumpFlag={JR,J,Z};
	assign IF_flush=Z || J ||JR;
	
	IF IF(
	//input	
		.clk(clk),
		.reset(reset),
		.Z(Z),
		.J(J),
		.JR(JR),
		.PC_IFWrite(PC_IFWrite),
		.JumpAddr(JumpAddr),
		.JrAddr(JrAddr),
		.BranchAddr(BranchAddr),
		//output
		.Instruction_if(Instruction_if),
		.PC(PC),
		.NextPC_if(NextPC_if));
 
	//IF->ID Register
	wire[31:0] NextPC_id;
	dffre #(.WIDTH(64)) if_id(.clk(clk),.en(PC_IFWrite),.r(IF_flush),.d({NextPC_if,Instruction_if}),.q({NextPC_id,Instruction_id}));	 
	
	//ID Module	
	wire[4:0] RtAddr_id,RdAddr_id,RsAddr_id;
	wire RegWrite_wb,MemRead_ex,MemtoReg_id,RegWrite_id,MemWrite_id;
	wire MemRead_id,ALUSrcA_id,ALUSrcB_id,RegDst_id,stall;
	wire[4:0] RegWriteAddr_wb,RegWriteAddr_ex,ALUCode_id;
	wire[31:0] RegWriteData_wb,Imm_id,Sa_id,RsData_id,RtData_id;
	ID  ID(
		.clk(clk),
		.Instruction_id(Instruction_id),
		.NextPC_id(NextPC_id),
		.RegWrite_wb(RegWrite_wb),
		.RegWriteAddr_wb(RegWriteAddr_wb),
		.RegWriteData_wb(RegWriteData_wb),
		.MemRead_ex(MemRead_ex),
		.RegWriteAddr_ex(RegWriteAddr_ex),
		.MemtoReg_id(MemtoReg_id),
		.RegWrite_id(RegWrite_id),
		.MemWrite_id(MemWrite_id),
		.MemRead_id(MemRead_id),
		.ALUCode_id(ALUCode_id),
		.ALUSrcA_id(ALUSrcA_id),
		.ALUSrcB_id(ALUSrcB_id),
		.RegDst_id(RegDst_id),
		.Stall(Stall),
		.Z(Z),
		.J(J),
		.JR(JR),
		.PC_IFWrite(PC_IFWrite), 
		.BranchAddr(BranchAddr),
		.JumpAddr(JumpAddr),
		.JrAddr(JrAddr),
		.Imm_id(Imm_id),
		.Sa_id(Sa_id),
		.RsData_id(RsData_id),
		.RtData_id(RtData_id),
		.RtAddr_id(RtAddr_id),
		.RdAddr_id(RdAddr_id),
		.RsAddr_id(RsAddr_id));

	//ID->EX Register
	wire MemtoReg_ex,RegWrite_ex,MemWrite_ex,ALUSrcA_ex,ALUSrcB_ex,RegDst_ex;
	wire[31:0] Sa_ex,Imm_ex,RsData_ex,RtData_ex;
	wire[4:0] RsAddr_ex,RtAddr_ex,RdAddr_ex,ALUCode_ex;
	dffre #(.WIDTH(2)) WB_id_ex(.clk(clk),.en(1'b1),.r(Stall),.d({MemtoReg_id,RegWrite_id}),.q({MemtoReg_ex,RegWrite_ex}));
	dffre #(.WIDTH(2)) MM_id_ex(.clk(clk),.en(1'b1),.r(Stall),.d({MemWrite_id,MemRead_id}),.q({MemWrite_ex,MemRead_ex}));
	dffre #(.WIDTH(8)) EX_id_ex(.clk(clk),.en(1'b1),.r(Stall),.d({ALUCode_id,ALUSrcA_id,ALUSrcB_id,RegDst_id}),.q({ALUCode_ex,ALUSrcA_ex,ALUSrcB_ex,RegDst_ex}));
	dffre #(.WIDTH(128)) Data_id_ex(.clk(clk),.en(1'b1),.r(Stall),.d({Sa_id,Imm_id,RsData_id,RtData_id}),.q({Sa_ex,Imm_ex,RsData_ex,RtData_ex}));
	dffre #(.WIDTH(15)) Addr_id_ex(.clk(clk),.en(1'b1),.r(Stall),.d({RsAddr_id,RtAddr_id,RdAddr_id}),.q({RsAddr_ex,RtAddr_ex,RdAddr_ex}));

	// EX Module	 
	wire[31:0] ALUResult_mem,ALUResult_ex,MemWriteData_ex;
	wire[4:0] RegWriteAddr_mem;
	wire RegWrite_mem;
	EX EX(
		.RegDst_ex(RegDst_ex),
		.ALUCode_ex(ALUCode_ex),
		.ALUSrcA_ex(ALUSrcA_ex),
		.ALUSrcB_ex(ALUSrcB_ex),
		.Imm_ex(Imm_ex),
		.Sa_ex(Sa_ex),
		.RsAddr_ex(RsAddr_ex),
		.RtAddr_ex(RtAddr_ex),
		.RdAddr_ex(RdAddr_ex),
		.RsData_ex(RsData_ex),
		.RtData_ex(RtData_ex),
		.RegWriteData_wb(RegWriteData_wb),
		.ALUResult_mem(ALUResult_mem),
		.RegWriteAddr_wb(RegWriteAddr_wb),
		.RegWriteAddr_mem(RegWriteAddr_mem),
		.RegWrite_wb(RegWrite_wb),
		.RegWrite_mem(RegWrite_mem),
		.RegWriteAddr_ex(RegWriteAddr_ex),
		.ALUResult_ex(ALUResult_ex),
		.MemWriteData_ex(MemWriteData_ex),
		.ALU_A(ALU_A),
		.ALU_B(ALU_B));

	assign ALUResult=ALUResult_ex;

	//EX->MEM
	wire MemtoReg_mem,MemWrite_mem;
	wire[31:0] MemWriteData_mem;
	dffre #(.WIDTH(2)) WB_ex_mem(.clk(clk),.en(1'b1),.r(1'b0),.d({MemtoReg_ex,RegWrite_ex}),.q({MemtoReg_mem,RegWrite_mem}));
	dffre #(.WIDTH(1)) MM_ex_mem(.clk(clk),.en(1'b1),.r(1'b0),.d(MemWrite_ex),.q(MemWrite_mem));
	dffre #(.WIDTH(69)) Data_ex_mem(.clk(clk),.en(1'b1),.r(1'b0),.d({ALUResult_ex,MemWriteData_ex,RegWriteAddr_ex}),.q({ALUResult_mem,MemWriteData_mem,RegWriteAddr_mem}));

	//MEM Module
	DataRAM DataRAM(
		.addr(ALUResult_mem[7:2]),
		.clk(clk),
		.din(MemWriteData_mem),
		.dout(MemDout_wb),
		.we(MemWrite_mem));

	//MEM->WB
	wire MemToReg_wb;
	wire[31:0] ALUResult_wb;
	dffre #(.WIDTH(7)) MM_mem_wb(.clk(clk),.en(1'b1),.r(1'b0),.d({MemtoReg_mem,RegWrite_mem,RegWriteAddr_mem}),.q({MemToReg_wb,RegWrite_wb,RegWriteAddr_wb}));
	dffre #(.WIDTH(32)) Data_mem_wb(.clk(clk),.en(1'b1),.r(1'b0),.d(ALUResult_mem),.q(ALUResult_wb));

	//WB
	assign RegWriteData_wb=MemToReg_wb?MemDout_wb:ALUResult_wb;


endmodule
