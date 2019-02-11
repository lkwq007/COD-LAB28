`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ZJU
// Engineer: Lnyan
// 
// Create Date:	20:30:20 11/12/2009 
// Design Name: 
// Module Name:	EX 
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
module EX(RegDst_ex,ALUCode_ex,ALUSrcA_ex,ALUSrcB_ex,Imm_ex,Sa_ex,RsAddr_ex,RtAddr_ex,RdAddr_ex,
		  RsData_ex,RtData_ex,RegWriteData_wb,ALUResult_mem,RegWriteAddr_wb,RegWriteAddr_mem,
			 RegWrite_wb,RegWrite_mem,RegWriteAddr_ex,ALUResult_ex,MemWriteData_ex,ALU_A,ALU_B);
	input RegDst_ex;
	input [4:0] ALUCode_ex;
	input ALUSrcA_ex;
	input ALUSrcB_ex;
	input [31:0] Imm_ex;
	input [31:0] Sa_ex;
	input [4:0] RsAddr_ex;
	input [4:0] RtAddr_ex;
	input [4:0] RdAddr_ex;
	input [31:0] RsData_ex;
	input [31:0] RtData_ex;
	input [31:0] RegWriteData_wb;
	input [31:0] ALUResult_mem;
	input [4:0] RegWriteAddr_wb;
	input [4:0] RegWriteAddr_mem;
	input RegWrite_wb;
	input RegWrite_mem;
	output [4:0] RegWriteAddr_ex;
	output [31:0] ALUResult_ex;
	output [31:0] MemWriteData_ex;
	output [31:0] ALU_A;
	output [31:0] ALU_B;

	//forwarding
	wire[1:0] ForwardA,ForwardB;
	assign ForwardA[0]=RegWrite_wb&&(RegWriteAddr_wb!=0)&&(RegWriteAddr_mem!=RsAddr_ex)&&(RegWriteAddr_wb==RsAddr_ex);
	assign ForwardA[1]=RegWrite_mem&&(RegWriteAddr_mem!=0)&&(RegWriteAddr_mem==RsAddr_ex);
	assign ForwardB[0]=RegWrite_wb&&(RegWriteAddr_wb!=0)&&(RegWriteAddr_mem!=RtAddr_ex)&&(RegWriteAddr_wb==RtAddr_ex);
	assign ForwardB[1]=RegWrite_mem&&(RegWriteAddr_mem!=0)&&(RegWriteAddr_mem==RtAddr_ex);

	//MUX for A
	reg[31:0] A_temp,B_temp;
	always @(*) begin
		case(ForwardA)
		1:A_temp<=RegWriteData_wb;
		2:A_temp<=ALUResult_mem;
		default:A_temp<=RsData_ex;
		endcase
	end

	//MUX for B
	always @(*) begin
		case(ForwardB)
		1:B_temp<=RegWriteData_wb;
		2:B_temp<=ALUResult_mem;
		default:B_temp<=RtData_ex;
		endcase
	end

	//MUX for ALU_A
	assign ALU_A=ALUSrcA_ex==0?A_temp:Sa_ex;

	//MUX for ALU_B
	assign ALU_B=ALUSrcB_ex==0?B_temp:Imm_ex;
	assign MemWriteData_ex=B_temp;

	//ALU inst
	ALU  ALU (
		// Outputs
		.Result(ALUResult_ex),
		.overflow(),
		// Inputs
		.ALUCode(ALUCode_ex),
		.A(ALU_A),
		.B(ALU_B)
	);

	//MUX for RegWriteAddr_ex
	assign RegWriteAddr_ex=RegDst_ex==0?RtAddr_ex:RdAddr_ex;

endmodule
