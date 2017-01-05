////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: J.36
//  \   \         Application: netgen
//  /   /         Filename: MipsPipelineCPU_synthesis.v
// /___/   /\     Timestamp: Wed Jan 04 20:35:50 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim MipsPipelineCPU.ngc MipsPipelineCPU_synthesis.v 
// Device	: xc2vp30-7-ff896
// Input file	: MipsPipelineCPU.ngc
// Output file	: C:\cod\COD-LAB28\ISE\netgen\synthesis\MipsPipelineCPU_synthesis.v
// # of Modules	: 1
// Design Name	: MipsPipelineCPU
// Xilinx        : C:\Xilinx92i
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23
//     Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module MipsPipelineCPU (
  clk, reset, Stall, JumpFlag, PC, Instruction_id, MemDout_wb, ALU_A, ALU_B, ALUResult
);
  input clk;
  input reset;
  output Stall;
  output [2 : 0] JumpFlag;
  output [31 : 0] PC;
  output [31 : 0] Instruction_id;
  output [31 : 0] MemDout_wb;
  output [31 : 0] ALU_A;
  output [31 : 0] ALU_B;
  output [31 : 0] ALUResult;
  wire clk_BUFGP_0;
  wire reset_IBUF_1;
  wire Stall_OBUF_2;
  wire _or0001;
  wire JR;
  wire RegWrite_id;
  wire J;
  wire Z;
  wire MemRead_id;
  wire PC_IFWrite;
  wire MemWrite_id;
  wire ALUSrcA_id;
  wire _or0000;
  wire \if_id/q[31] ;
  wire \if_id/q[29] ;
  wire \if_id/q[28] ;
  wire \if_id/q[27] ;
  wire \if_id/q[26] ;
  wire \if_id/q[24] ;
  wire \if_id/q[22] ;
  wire \if_id/q[21] ;
  wire Instruction_id_20_OBUF_3;
  wire \if_id/q[19] ;
  wire \if_id/q[18] ;
  wire \if_id/q[17] ;
  wire \if_id/q[16] ;
  wire MemDout_wb_31_OBUF_4;
  wire MemDout_wb_30_OBUF_5;
  wire MemDout_wb_29_OBUF_6;
  wire MemDout_wb_28_OBUF_7;
  wire MemDout_wb_27_OBUF_8;
  wire MemDout_wb_26_OBUF_9;
  wire MemDout_wb_25_OBUF_10;
  wire MemDout_wb_24_OBUF_11;
  wire MemDout_wb_23_OBUF_12;
  wire MemDout_wb_22_OBUF_13;
  wire MemDout_wb_21_OBUF_14;
  wire MemDout_wb_20_OBUF_15;
  wire MemDout_wb_19_OBUF_16;
  wire MemDout_wb_18_OBUF_17;
  wire MemDout_wb_17_OBUF_18;
  wire MemDout_wb_16_OBUF_19;
  wire MemDout_wb_15_OBUF_20;
  wire MemDout_wb_14_OBUF_21;
  wire MemDout_wb_13_OBUF_22;
  wire MemDout_wb_12_OBUF_23;
  wire MemDout_wb_11_OBUF_24;
  wire MemDout_wb_10_OBUF_25;
  wire MemDout_wb_9_OBUF_26;
  wire MemDout_wb_8_OBUF_27;
  wire MemDout_wb_7_OBUF_28;
  wire MemDout_wb_6_OBUF_29;
  wire MemDout_wb_5_OBUF_30;
  wire MemDout_wb_4_OBUF_31;
  wire MemDout_wb_3_OBUF_32;
  wire MemDout_wb_2_OBUF_33;
  wire MemDout_wb_1_OBUF_34;
  wire MemDout_wb_0_OBUF_35;
  wire ALU_A_31_OBUF_36;
  wire ALU_A_30_OBUF_37;
  wire ALU_A_29_OBUF_38;
  wire ALU_A_28_OBUF_39;
  wire ALU_A_27_OBUF_40;
  wire ALU_A_26_OBUF_41;
  wire ALU_A_25_OBUF_42;
  wire ALU_A_24_OBUF_43;
  wire ALU_A_23_OBUF_44;
  wire ALU_A_22_OBUF_45;
  wire ALU_A_21_OBUF_46;
  wire ALU_A_20_OBUF_47;
  wire ALU_A_19_OBUF_48;
  wire ALU_A_18_OBUF_49;
  wire ALU_A_17_OBUF_50;
  wire ALU_A_16_OBUF_51;
  wire ALU_A_15_OBUF_52;
  wire ALU_A_14_OBUF_53;
  wire ALU_A_13_OBUF_54;
  wire ALU_A_12_OBUF_55;
  wire ALU_A_11_OBUF_56;
  wire ALU_A_10_OBUF_57;
  wire ALU_A_9_OBUF_58;
  wire ALU_A_8_OBUF_59;
  wire ALU_A_7_OBUF_60;
  wire ALU_A_6_OBUF_61;
  wire ALU_A_5_OBUF_62;
  wire ALU_A_4_OBUF_63;
  wire ALU_A_3_OBUF_64;
  wire ALU_A_2_OBUF_65;
  wire ALU_A_1_OBUF_66;
  wire ALU_A_0_OBUF_67;
  wire ALU_B_31_OBUF_68;
  wire ALU_B_30_OBUF_69;
  wire ALU_B_29_OBUF_70;
  wire ALU_B_28_OBUF_71;
  wire ALU_B_27_OBUF_72;
  wire ALU_B_26_OBUF_73;
  wire ALU_B_25_OBUF_74;
  wire ALU_B_24_OBUF_75;
  wire ALU_B_23_OBUF_76;
  wire ALU_B_22_OBUF_77;
  wire ALU_B_21_OBUF_78;
  wire ALU_B_20_OBUF_79;
  wire ALU_B_19_OBUF_80;
  wire ALU_B_18_OBUF_81;
  wire ALU_B_17_OBUF_82;
  wire ALU_B_16_OBUF_83;
  wire ALU_B_15_OBUF_84;
  wire ALU_B_14_OBUF_85;
  wire ALU_B_13_OBUF_86;
  wire ALU_B_12_OBUF_87;
  wire ALU_B_11_OBUF_88;
  wire ALU_B_10_OBUF_89;
  wire ALU_B_9_OBUF_90;
  wire ALU_B_8_OBUF_91;
  wire ALU_B_7_OBUF_92;
  wire ALU_B_6_OBUF_93;
  wire ALU_B_5_OBUF_94;
  wire ALU_B_4_OBUF_95;
  wire ALU_B_3_OBUF_96;
  wire ALU_B_2_OBUF_97;
  wire ALU_B_1_OBUF_98;
  wire ALU_B_0_OBUF_99;
  wire ALUResult_31_OBUF_100;
  wire ALUResult_30_OBUF_101;
  wire ALUResult_29_OBUF_102;
  wire ALUResult_28_OBUF_103;
  wire ALUResult_27_OBUF_104;
  wire ALUResult_26_OBUF_105;
  wire ALUResult_25_OBUF_106;
  wire ALUResult_24_OBUF_107;
  wire ALUResult_23_OBUF_108;
  wire ALUResult_22_OBUF_109;
  wire ALUResult_21_OBUF_110;
  wire ALUResult_20_OBUF_111;
  wire ALUResult_19_OBUF_112;
  wire ALUResult_18_OBUF_113;
  wire ALUResult_17_OBUF_114;
  wire ALUResult_16_OBUF_115;
  wire ALUResult_15_OBUF_116;
  wire ALUResult_14_OBUF_117;
  wire ALUResult_13_OBUF_118;
  wire ALUResult_12_OBUF_119;
  wire ALUResult_11_OBUF_120;
  wire ALUResult_10_OBUF_121;
  wire ALUResult_9_OBUF_122;
  wire ALUResult_8_OBUF_123;
  wire ALUResult_7_OBUF_124;
  wire ALUResult_6_OBUF_125;
  wire ALUResult_5_OBUF_126;
  wire ALUResult_4_OBUF_127;
  wire ALUResult_3_OBUF_128;
  wire ALUResult_2_OBUF_129;
  wire ALUResult_1_OBUF_130;
  wire ALUResult_0_OBUF_131;
  wire \if_id/q[59] ;
  wire \if_id/q[58] ;
  wire \if_id/q[57] ;
  wire \if_id/q[56] ;
  wire \if_id/q[55] ;
  wire \if_id/q[54] ;
  wire \if_id/q[53] ;
  wire \if_id/q[52] ;
  wire \if_id/q[51] ;
  wire \if_id/q[50] ;
  wire \if_id/q[49] ;
  wire \if_id/q[48] ;
  wire \if_id/q[47] ;
  wire \if_id/q[46] ;
  wire \if_id/q[45] ;
  wire \if_id/q[44] ;
  wire \if_id/q[43] ;
  wire \if_id/q[42] ;
  wire \if_id/q[41] ;
  wire \if_id/q[40] ;
  wire \if_id/q[39] ;
  wire \if_id/q[38] ;
  wire \if_id/q[37] ;
  wire \if_id/q[36] ;
  wire \if_id/q[35] ;
  wire \if_id/q[34] ;
  wire \Data_id_ex/q[31] ;
  wire \Data_id_ex/q[30] ;
  wire \Data_id_ex/q[29] ;
  wire \Data_id_ex/q[28] ;
  wire \Data_id_ex/q[27] ;
  wire \Data_id_ex/q[26] ;
  wire \Data_id_ex/q[25] ;
  wire \Data_id_ex/q[24] ;
  wire \Data_id_ex/q[23] ;
  wire \Data_id_ex/q[22] ;
  wire \Data_id_ex/q[21] ;
  wire \Data_id_ex/q[20] ;
  wire \Data_id_ex/q[19] ;
  wire \Data_id_ex/q[18] ;
  wire \Data_id_ex/q[17] ;
  wire \Data_id_ex/q[16] ;
  wire \Data_id_ex/q[15] ;
  wire \Data_id_ex/q[14] ;
  wire \Data_id_ex/q[13] ;
  wire \Data_id_ex/q[12] ;
  wire \Data_id_ex/q[11] ;
  wire \Data_id_ex/q[10] ;
  wire \Data_id_ex/q[9] ;
  wire \Data_id_ex/q[8] ;
  wire \Data_id_ex/q[7] ;
  wire \Data_id_ex/q[6] ;
  wire \Data_id_ex/q[5] ;
  wire \Data_id_ex/q[4] ;
  wire \Data_id_ex/q[3] ;
  wire \Data_id_ex/q[2] ;
  wire \Data_id_ex/q[1] ;
  wire \Data_id_ex/q[0] ;
  wire \Data_id_ex/q[63] ;
  wire \Data_id_ex/q[62] ;
  wire \Data_id_ex/q[61] ;
  wire \Data_id_ex/q[60] ;
  wire \Data_id_ex/q[59] ;
  wire \Data_id_ex/q[58] ;
  wire \Data_id_ex/q[57] ;
  wire \Data_id_ex/q[56] ;
  wire \Data_id_ex/q[55] ;
  wire \Data_id_ex/q[54] ;
  wire \Data_id_ex/q[53] ;
  wire \Data_id_ex/q[52] ;
  wire \Data_id_ex/q[51] ;
  wire \Data_id_ex/q[50] ;
  wire \Data_id_ex/q[49] ;
  wire \Data_id_ex/q[48] ;
  wire \Data_id_ex/q[47] ;
  wire \Data_id_ex/q[46] ;
  wire \Data_id_ex/q[45] ;
  wire \Data_id_ex/q[44] ;
  wire \Data_id_ex/q[43] ;
  wire \Data_id_ex/q[42] ;
  wire \Data_id_ex/q[41] ;
  wire \Data_id_ex/q[40] ;
  wire \Data_id_ex/q[39] ;
  wire \Data_id_ex/q[38] ;
  wire \Data_id_ex/q[37] ;
  wire \Data_id_ex/q[36] ;
  wire \Data_id_ex/q[35] ;
  wire \Data_id_ex/q[34] ;
  wire \Data_id_ex/q[33] ;
  wire \Data_id_ex/q[32] ;
  wire \Data_id_ex/q[97] ;
  wire \Data_id_ex/q[96] ;
  wire \Data_id_ex/q[67] ;
  wire \Data_id_ex/q[66] ;
  wire \Data_id_ex/q[65] ;
  wire \Data_id_ex/q[64] ;
  wire \Addr_id_ex/q[3] ;
  wire \Addr_id_ex/q[4] ;
  wire \Addr_id_ex/q[1] ;
  wire \Addr_id_ex/q[0] ;
  wire \Addr_id_ex/q[8] ;
  wire \Addr_id_ex/q[7] ;
  wire \Addr_id_ex/q[6] ;
  wire \Addr_id_ex/q[5] ;
  wire \Addr_id_ex/q[13] ;
  wire \Addr_id_ex/q[11] ;
  wire \Addr_id_ex/q[10] ;
  wire \Instruction_if[31] ;
  wire \Instruction_if[29] ;
  wire \Instruction_if[28] ;
  wire \Instruction_if[27] ;
  wire \Instruction_if[26] ;
  wire \Instruction_if[24] ;
  wire \Instruction_if[22] ;
  wire \Instruction_if[21] ;
  wire \Instruction_if[19] ;
  wire \Instruction_if[18] ;
  wire \Instruction_if[17] ;
  wire \Instruction_if[16] ;
  wire \Instruction_if[14] ;
  wire \Instruction_if[12] ;
  wire \Instruction_if[11] ;
  wire \Instruction_if[10] ;
  wire \Instruction_if[7] ;
  wire \Instruction_if[6] ;
  wire \Instruction_if[3] ;
  wire \Instruction_if[2] ;
  wire \Instruction_if[1] ;
  wire \Instruction_if[0] ;
  wire \if_id/q[14] ;
  wire \if_id/q[12] ;
  wire \if_id/q[11] ;
  wire \if_id/q[7] ;
  wire \if_id/q[6] ;
  wire \if_id/q[3] ;
  wire \if_id/q[2] ;
  wire \if_id/q[1] ;
  wire \if_id/q[0] ;
  wire \if_id/q[63] ;
  wire \if_id/q[62] ;
  wire \if_id/q[61] ;
  wire \if_id/q[60] ;
  wire \if_id/q[33] ;
  wire \if_id/q[32] ;
  wire N0;
  wire \IF/pcAdd4/co_0 ;
  wire \IF/pcAdd4/co_1 ;
  wire \IF/pcAdd4/co_2 ;
  wire \IF/pcAdd4/co_3 ;
  wire \IF/pcAdd4/co_4 ;
  wire \IF/pcAdd4/N21 ;
  wire \IF/pcAdd4/N22 ;
  wire \IF/pcAdd4/N23 ;
  wire \IF/N16 ;
  wire \IF/N4 ;
  wire \IF/N3 ;
  wire \IF/N2 ;
  wire \IF/InstructionROM/dout_and0000 ;
  wire \IF/InstructionROM/Mrom_dout_mux000011 ;
  wire \IF/InstructionROM/Mrom_dout_mux000027 ;
  wire \IF/PC_in_or0000 ;
  wire \IF/PC_in_cmp_eq0002 ;
  wire \ID/addOffset/co_0 ;
  wire \ID/addOffset/co_1 ;
  wire \ID/addOffset/co_2 ;
  wire \ID/addOffset/co_3 ;
  wire \ID/addOffset/co_4 ;
  wire \ID/addOffset/co_5 ;
  wire \ID/addOffset/co_6 ;
  wire \ID/addOffset/N21 ;
  wire \ID/addOffset/N22 ;
  wire \ID/addOffset/N28 ;
  wire \ID/addOffset/N30 ;
  wire \ID/addOffset/N31 ;
  wire \ID/addOffset/N32 ;
  wire \ID/addOffset/N33 ;
  wire \ID/addOffset/N34 ;
  wire \ID/MultiRegisters/RtData_cmp_eq0000 ;
  wire \ID/MultiRegisters/RsData_cmp_eq0000 ;
  wire \ID/N32 ;
  wire \ID/N31 ;
  wire \ID/N30 ;
  wire \ID/N13 ;
  wire \ID/N11 ;
  wire \ID/Decode/I_type ;
  wire \ID/Decode/R_type1 ;
  wire \ID/RtSel ;
  wire \ID/RsSel ;
  wire \ID/Z_xor0026 ;
  wire \ID/Z_xor0030 ;
  wire \ID/Z_xor0018 ;
  wire \ID/Z_xor0022 ;
  wire \ID/Z_xor0015 ;
  wire \ID/Z_xor0014 ;
  wire \ID/Z_xor0007 ;
  wire \ID/Z_xor0006 ;
  wire \ID/Z_xor0011 ;
  wire \ID/Z_xor0010 ;
  wire \ID/Z_xor0003 ;
  wire \ID/Z_xor0000 ;
  wire \EX/ALU/result_final_cmp_eq0000 ;
  wire \EX/ALU/result_final_cmp_eq0001 ;
  wire \EX/ALU/result_final_cmp_eq0002 ;
  wire \EX/ALU/result_final_cmp_eq0003 ;
  wire \EX/ALU/result_final_cmp_eq0004 ;
  wire \EX/ALU/result_final_cmp_eq0007 ;
  wire \EX/ALU/result_final_or0002 ;
  wire \EX/ALU/overflow_xor0000 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[47] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[46] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[45] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[44] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[43] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[42] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[41] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[40] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[39] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[38] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[37] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[36] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[23] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[21] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[20] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[19] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[18] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[17] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[16] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[15] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[14] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[13] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[12] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[11] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[10] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[9] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[8] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[7] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[6] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[5] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[4] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[3] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[2] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[1] ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh[0] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[59] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[58] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[57] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[56] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[55] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[54] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[53] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[52] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[51] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[50] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[49] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[48] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[31] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[30] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[29] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[28] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[27] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[26] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[25] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[24] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[23] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[22] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[21] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[20] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[19] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[18] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[17] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[16] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[15] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[14] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[11] ;
  wire \EX/ALU/Mshift_result_final_shift0004_Sh[10] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[62] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[61] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[60] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[59] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[58] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[57] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[56] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[55] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[54] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[52] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[49] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[48] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[47] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[46] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[44] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[43] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[42] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[41] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[40] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[29] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[28] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[27] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[26] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[25] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[24] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[21] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[20] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[19] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[18] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[17] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[16] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[15] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[14] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[13] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[12] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[11] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[10] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[9] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[8] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[7] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[6] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[5] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[4] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[3] ;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh[2] ;
  wire \EX/ALU/N0 ;
  wire \EX/ALU/N1 ;
  wire \EX/ALU/N4 ;
  wire \EX/ALU/N5 ;
  wire \EX/ALU/N14 ;
  wire \EX/ALU/N15 ;
  wire \EX/ALU/N20 ;
  wire \EX/ALU/N211 ;
  wire \EX/ALU/N22 ;
  wire \EX/ALU/N23 ;
  wire \EX/ALU/N26 ;
  wire \EX/ALU/N311 ;
  wire \EX/ALU/N32 ;
  wire \EX/ALU/N37 ;
  wire \EX/ALU/N58 ;
  wire \EX/ALU/N59 ;
  wire \EX/ALU/N64 ;
  wire \EX/ALU/N65 ;
  wire \EX/ALU/N66 ;
  wire \EX/ALU/N68 ;
  wire \EX/ALU/N70 ;
  wire \EX/ALU/N72 ;
  wire \EX/ALU/N73 ;
  wire \EX/ALU/N74 ;
  wire \EX/ALU/N75 ;
  wire \EX/ALU/N78 ;
  wire \EX/ALU/N79 ;
  wire \EX/ALU/N80 ;
  wire \EX/ALU/N82 ;
  wire \EX/ALU/N83 ;
  wire \EX/ALU/N88 ;
  wire \EX/ALU/N90 ;
  wire \EX/ALU/N93 ;
  wire \EX/ALU/N94 ;
  wire \EX/ALU/N95 ;
  wire \EX/ALU/N140 ;
  wire \EX/ALU/N144 ;
  wire \EX/ALU/N145 ;
  wire \EX/ALU/N147 ;
  wire \EX/ALU/N148 ;
  wire \EX/ALU/adder/co_6 ;
  wire \EX/ALU/adder/co_5 ;
  wire \EX/ALU/adder/co_4 ;
  wire \EX/ALU/adder/co_3 ;
  wire \EX/ALU/adder/co_2 ;
  wire \EX/ALU/adder/co_1 ;
  wire \EX/ALU/adder/co_0 ;
  wire \EX/ForwardB_0_cmp_ne0000 ;
  wire \EX/ForwardA_0_cmp_ne0001 ;
  wire \EX/ForwardA_0_and0000 ;
  wire N01;
  wire N1;
  wire N2;
  wire N3;
  wire N4;
  wire N5;
  wire N6;
  wire N36;
  wire N39;
  wire N48;
  wire N49;
  wire \ID/Decode/R_type1_map2 ;
  wire \ID/Decode/R_type1_map6 ;
  wire \ID/Decode/R_type1_map12 ;
  wire \ID/Decode/R_type2_map2 ;
  wire \ID/Decode/R_type2_map5 ;
  wire \if_id/q[15] ;
  wire \ID/Decode/R_type2_map14 ;
  wire \ID/Decode/R_type2_map19 ;
  wire N184;
  wire \ID/Stall_map10 ;
  wire \ID/Stall_map15 ;
  wire \ID/Stall_map23 ;
  wire \ID/Stall_map35 ;
  wire \ID/Stall_map44 ;
  wire \ID/Stall_map45 ;
  wire \ID/Decode/ALUtemp<4>_map6 ;
  wire \ID/Decode/ALUtemp<4>_map10 ;
  wire \ID/Decode/ALUtemp<4>_map18 ;
  wire \ID/Decode/ALUtemp<1>_map0 ;
  wire \ID/Decode/ALUtemp<1>_map3 ;
  wire \ID/Decode/ALUtemp<1>_map16 ;
  wire \ID/Decode/ALUtemp<1>_map22 ;
  wire \ID/Decode/ALUtemp<1>_map23 ;
  wire \ID/Decode/ALUtemp<1>_map25 ;
  wire N467;
  wire \ID/Decode/ALUtemp<0>_map0 ;
  wire \ID/Decode/ALUtemp<0>_map12 ;
  wire \ID/Decode/ALUtemp<0>_map18 ;
  wire \ID/Decode/ALUtemp<0>_map24 ;
  wire \ID/Decode/ALUtemp<0>_map25 ;
  wire \ID/Decode/ALUtemp<0>_map31 ;
  wire \ID/Decode/ALUtemp<0>_map32 ;
  wire N571;
  wire N573;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh<22>_map8 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh<21>_map8 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh<20>_map8 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Result<31>1_map4 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Result<30>2_map5 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Result<30>2_map11 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Result<29>2_map5 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Result<29>2_map11 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Result<28>3_map5 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Result<28>3_map11 ;
  wire \EX/ALU/result_final<1>_map5 ;
  wire \EX/ALU/result_final<1>_map11 ;
  wire \EX/ALU/result_final<1>_map15 ;
  wire \EX/ALU/result_final<1>_map17 ;
  wire \EX/ALU/result_final<1>_map21 ;
  wire \EX/ALU/result_final<1>_map37 ;
  wire \EX/ALU/result_final<1>_map45 ;
  wire \EX/ALU/result_final<1>_map47 ;
  wire \EX/ALU/result_final<1>_map50 ;
  wire \EX/ALU/result_final<1>_map54 ;
  wire \EX/ALU/result_final<1>_map59 ;
  wire \EX/ALU/result_final<1>_map62 ;
  wire \EX/ALU/result_final<1>_map65 ;
  wire N1154;
  wire N1164;
  wire \EX/ALU/Mshift_result_final_shift0005_Sh<58>_map6 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh<8>_map8 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh<7>_map8 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh<6>_map8 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh<5>_map8 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh<4>_map8 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh<3>_map8 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh<19>_map8 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh<18>_map8 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh<17>_map8 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh<16>_map8 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh<15>_map8 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh<14>_map8 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh<13>_map8 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh<12>_map8 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh<11>_map8 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh<10>_map3 ;
  wire \EX/ALU/Mshift_result_final_shift0003_Sh<10>_map8 ;
  wire \ID/Decode/ALUtemp<2>_map9 ;
  wire \ID/Decode/ALUtemp<2>_map13 ;
  wire \ID/Decode/ALUtemp<2>_map22 ;
  wire \ID/Decode/ALUtemp<2>_map23 ;
  wire \EX/ALU/result_final<2>_map14 ;
  wire \EX/ALU/result_final<2>_map20 ;
  wire \EX/ALU/result_final<2>_map23 ;
  wire \EX/ALU/result_final<2>_map31 ;
  wire \EX/ALU/result_final<2>_map34 ;
  wire \EX/ALU/result_final<2>_map39 ;
  wire \EX/ALU/result_final<2>_map44 ;
  wire \EX/ALU/result_final<2>_map47 ;
  wire \EX/ALU/result_final<2>_map62 ;
  wire \EX/ALU/result_final<3>_map14 ;
  wire \EX/ALU/result_final<3>_map18 ;
  wire \EX/ALU/result_final<3>_map20 ;
  wire \EX/ALU/result_final<3>_map23 ;
  wire \EX/ALU/result_final<3>_map32 ;
  wire \EX/ALU/result_final<3>_map34 ;
  wire \EX/ALU/result_final<3>_map36 ;
  wire \EX/ALU/result_final<3>_map39 ;
  wire \EX/ALU/result_final<3>_map44 ;
  wire \EX/ALU/result_final<3>_map47 ;
  wire \EX/ALU/result_final<3>_map63 ;
  wire \IF/PC_in<2>_map7 ;
  wire \IF/PC_in<6>_map19 ;
  wire \IF/PC_in<9>_map22 ;
  wire \IF/PC_in<5>_map20 ;
  wire \IF/PC_in<5>_map22 ;
  wire \IF/PC_in<13>_map20 ;
  wire \IF/PC_in<13>_map22 ;
  wire \ID/RsSel_map20 ;
  wire N3134;
  wire \ID/RtSel_map4 ;
  wire \ID/RtSel_map17 ;
  wire \ID/RtSel_map25 ;
  wire \ID/Z_map3 ;
  wire \ID/Z_map6 ;
  wire \ID/Z_map10 ;
  wire \ID/Z_map13 ;
  wire \ID/Z_map15 ;
  wire \ID/Z_map18 ;
  wire \ID/Z_map21 ;
  wire \ID/Z_map25 ;
  wire \ID/Z_map28 ;
  wire \ID/Z_map30 ;
  wire \ID/Z_map35 ;
  wire \ID/Z_map41 ;
  wire \ID/Z_map48 ;
  wire \ID/Z_map56 ;
  wire \ID/Z_map63 ;
  wire \ID/Z_map65 ;
  wire \ID/Z_map72 ;
  wire \ID/Z_map79 ;
  wire \ID/Z_map87 ;
  wire \ID/Z_map94 ;
  wire \ID/Z_map96 ;
  wire \ID/Z_map105 ;
  wire \ID/Z_map106 ;
  wire \ID/Z_map113 ;
  wire \ID/Z_map128 ;
  wire \ID/Z_map129 ;
  wire \ID/Z_map137 ;
  wire \ID/Z_map144 ;
  wire \ID/Z_map152 ;
  wire \ID/Z_map159 ;
  wire \ID/Z_map161 ;
  wire \ID/Z_map165 ;
  wire \ID/Z_map170 ;
  wire \ID/Z_map173 ;
  wire \ID/Z_map177 ;
  wire \ID/Z_map180 ;
  wire \ID/Z_map182 ;
  wire \ID/Z_map185 ;
  wire \ID/Z_map188 ;
  wire \ID/Z_map192 ;
  wire \ID/Z_map196 ;
  wire \ID/Z_map198 ;
  wire \ID/Z_map203 ;
  wire \ID/Z_map204 ;
  wire \EX/ALU/result_final<4>_map7 ;
  wire \EX/ALU/result_final<4>_map10 ;
  wire \EX/ALU/result_final<4>_map15 ;
  wire \EX/ALU/result_final<4>_map18 ;
  wire \EX/ALU/result_final<4>_map22 ;
  wire \EX/ALU/result_final<4>_map28 ;
  wire \EX/ALU/result_final<4>_map33 ;
  wire \EX/ALU/result_final<4>_map52 ;
  wire N3780;
  wire N3781;
  wire \EX/ALU/result_final<5>_map13 ;
  wire \EX/ALU/result_final<5>_map15 ;
  wire \EX/ALU/result_final<5>_map19 ;
  wire \EX/ALU/result_final<5>_map25 ;
  wire \EX/ALU/result_final<5>_map26 ;
  wire \EX/ALU/result_final<5>_map32 ;
  wire \EX/ALU/result_final<5>_map37 ;
  wire \EX/ALU/result_final<5>_map39 ;
  wire \EX/ALU/result_final<5>_map48 ;
  wire \EX/ALU/result_final<5>_map53 ;
  wire \EX/ALU/result_final<5>_map54 ;
  wire \EX/ALU/result_final<5>_map55 ;
  wire \EX/ALU/result_final<5>_map76 ;
  wire \IF/PC_in<17>_map21 ;
  wire N4232;
  wire N4233;
  wire \EX/ALU/result_final<7>_map14 ;
  wire \EX/ALU/result_final<7>_map18 ;
  wire \EX/ALU/result_final<7>_map21 ;
  wire \EX/ALU/result_final<7>_map26 ;
  wire \EX/ALU/result_final<7>_map43 ;
  wire \EX/ALU/result_final<7>_map59 ;
  wire \EX/ALU/result_final<6>_map14 ;
  wire \EX/ALU/result_final<6>_map18 ;
  wire \EX/ALU/result_final<6>_map22 ;
  wire \EX/ALU/result_final<6>_map27 ;
  wire \EX/ALU/result_final<6>_map44 ;
  wire \EX/ALU/result_final<6>_map60 ;
  wire \EX/ALU/result_final<8>_map16 ;
  wire \EX/ALU/result_final<8>_map20 ;
  wire \EX/ALU/result_final<8>_map26 ;
  wire \EX/ALU/result_final<8>_map28 ;
  wire \EX/ALU/result_final<8>_map35 ;
  wire \EX/ALU/result_final<8>_map52 ;
  wire N4702;
  wire N4703;
  wire N4705;
  wire N4706;
  wire \EX/ALU/result_final<9>_map16 ;
  wire \EX/ALU/result_final<9>_map20 ;
  wire \EX/ALU/result_final<9>_map26 ;
  wire \EX/ALU/result_final<9>_map36 ;
  wire \EX/ALU/result_final<9>_map54 ;
  wire \IF/PC_in<21>_map21 ;
  wire \EX/ALU/result_final<11>_map14 ;
  wire \EX/ALU/result_final<11>_map18 ;
  wire \EX/ALU/result_final<11>_map27 ;
  wire \EX/ALU/result_final<11>_map37 ;
  wire \EX/ALU/result_final<11>_map42 ;
  wire \EX/ALU/result_final<11>_map58 ;
  wire \EX/ALU/result_final<10>_map14 ;
  wire \EX/ALU/result_final<10>_map26 ;
  wire \EX/ALU/result_final<10>_map30 ;
  wire \EX/ALU/result_final<10>_map39 ;
  wire \EX/ALU/result_final<10>_map40 ;
  wire \EX/ALU/result_final<10>_map58 ;
  wire N5447;
  wire N5448;
  wire \EX/ALU/result_final<12>_map14 ;
  wire \EX/ALU/result_final<12>_map19 ;
  wire \EX/ALU/result_final<12>_map28 ;
  wire \EX/ALU/result_final<12>_map30 ;
  wire \EX/ALU/result_final<12>_map54 ;
  wire \EX/ALU/result_final<13>_map14 ;
  wire \EX/ALU/result_final<13>_map18 ;
  wire \EX/ALU/result_final<13>_map28 ;
  wire \EX/ALU/result_final<13>_map29 ;
  wire \EX/ALU/result_final<13>_map31 ;
  wire \EX/ALU/result_final<13>_map33 ;
  wire \EX/ALU/result_final<13>_map38 ;
  wire \EX/ALU/result_final<13>_map41 ;
  wire \EX/ALU/result_final<13>_map43 ;
  wire \EX/ALU/result_final<13>_map61 ;
  wire \IF/PC_in<24>_map18 ;
  wire \IF/PC_in<25>_map19 ;
  wire \EX/ALU/result_final<15>_map14 ;
  wire \EX/ALU/result_final<15>_map19 ;
  wire \EX/ALU/result_final<15>_map23 ;
  wire \EX/ALU/result_final<15>_map24 ;
  wire \EX/ALU/result_final<15>_map34 ;
  wire \EX/ALU/result_final<15>_map35 ;
  wire \EX/ALU/result_final<15>_map37 ;
  wire \EX/ALU/result_final<15>_map52 ;
  wire \EX/ALU/result_final<14>_map14 ;
  wire \EX/ALU/result_final<14>_map19 ;
  wire \EX/ALU/result_final<14>_map21 ;
  wire \EX/ALU/result_final<14>_map25 ;
  wire \EX/ALU/result_final<14>_map26 ;
  wire \EX/ALU/result_final<14>_map36 ;
  wire \EX/ALU/result_final<14>_map37 ;
  wire \EX/ALU/result_final<14>_map39 ;
  wire N6282;
  wire N6283;
  wire \EX/ALU/result_final<16>_map14 ;
  wire \EX/ALU/result_final<16>_map18 ;
  wire \EX/ALU/result_final<16>_map24 ;
  wire \EX/ALU/result_final<16>_map25 ;
  wire \EX/ALU/result_final<16>_map27 ;
  wire \EX/ALU/result_final<16>_map29 ;
  wire \EX/ALU/result_final<16>_map32 ;
  wire \EX/ALU/result_final<16>_map37 ;
  wire \EX/ALU/result_final<16>_map52 ;
  wire \EX/ALU/result_final<17>_map14 ;
  wire \EX/ALU/result_final<17>_map17 ;
  wire \EX/ALU/result_final<17>_map25 ;
  wire \EX/ALU/result_final<17>_map28 ;
  wire \EX/ALU/result_final<17>_map34 ;
  wire \EX/ALU/result_final<17>_map36 ;
  wire \EX/ALU/result_final<17>_map38 ;
  wire \IF/PC_in<29>_map21 ;
  wire \EX/ALU/result_final<19>_map14 ;
  wire \EX/ALU/result_final<19>_map18 ;
  wire \EX/ALU/result_final<19>_map21 ;
  wire \EX/ALU/result_final<19>_map29 ;
  wire \EX/ALU/result_final<19>_map38 ;
  wire \EX/ALU/result_final<19>_map40 ;
  wire \EX/ALU/result_final<19>_map42 ;
  wire \EX/ALU/result_final<18>_map14 ;
  wire \EX/ALU/result_final<18>_map18 ;
  wire \EX/ALU/result_final<18>_map21 ;
  wire \EX/ALU/result_final<18>_map27 ;
  wire \EX/ALU/result_final<18>_map29 ;
  wire \EX/ALU/result_final<18>_map38 ;
  wire \EX/ALU/result_final<18>_map40 ;
  wire \EX/ALU/result_final<18>_map42 ;
  wire \IF/PC_in<30>_map2 ;
  wire N7121;
  wire N7122;
  wire \EX/ALU/result_final<20>_map14 ;
  wire \EX/ALU/result_final<20>_map23 ;
  wire \EX/ALU/result_final<20>_map24 ;
  wire \EX/ALU/result_final<20>_map26 ;
  wire \EX/ALU/result_final<20>_map28 ;
  wire \EX/ALU/result_final<20>_map31 ;
  wire \EX/ALU/result_final<20>_map51 ;
  wire \IF/PC_in<31>_map2 ;
  wire \EX/ALU/result_final<21>_map14 ;
  wire \EX/ALU/result_final<21>_map23 ;
  wire \EX/ALU/result_final<21>_map24 ;
  wire \EX/ALU/result_final<21>_map26 ;
  wire \EX/ALU/result_final<21>_map28 ;
  wire \EX/ALU/result_final<21>_map36 ;
  wire \EX/ALU/result_final<21>_map40 ;
  wire \EX/ALU/result_final<21>_map58 ;
  wire N7481;
  wire N7482;
  wire N7490;
  wire N7491;
  wire \ID/addOffset/mux_1/out<3>1_map10 ;
  wire \ID/addOffset/mux_1/out<3>1_map26 ;
  wire \ID/addOffset/mux_1/out<3>1_map27 ;
  wire N7576;
  wire \ID/addOffset/mux_3/out<3>1_map10 ;
  wire \ID/addOffset/mux_3/out<3>1_map26 ;
  wire \ID/addOffset/mux_3/out<3>1_map27 ;
  wire \ID/addOffset/mux_2/out<3>1_map10 ;
  wire \ID/addOffset/mux_2/out<3>1_map26 ;
  wire \ID/addOffset/mux_2/out<3>1_map27 ;
  wire \EX/ALU/result_final<23>_map14 ;
  wire \EX/ALU/result_final<23>_map18 ;
  wire \EX/ALU/result_final<23>_map23 ;
  wire \EX/ALU/result_final<23>_map26 ;
  wire \EX/ALU/result_final<23>_map31 ;
  wire \EX/ALU/result_final<23>_map33 ;
  wire \EX/ALU/result_final<23>_map35 ;
  wire \EX/ALU/result_final<22>_map1 ;
  wire \EX/ALU/result_final<22>_map21 ;
  wire \EX/ALU/result_final<22>_map25 ;
  wire \EX/ALU/result_final<22>_map28 ;
  wire \EX/ALU/result_final<22>_map33 ;
  wire \EX/ALU/result_final<22>_map35 ;
  wire \EX/ALU/result_final<22>_map37 ;
  wire N7987;
  wire N7988;
  wire \EX/ALU/result_final<24>_map14 ;
  wire \EX/ALU/result_final<24>_map18 ;
  wire \EX/ALU/result_final<24>_map25 ;
  wire \EX/ALU/result_final<24>_map28 ;
  wire \EX/ALU/result_final<24>_map30 ;
  wire \EX/ALU/result_final<24>_map34 ;
  wire \EX/ALU/result_final<25>_map14 ;
  wire \EX/ALU/result_final<25>_map19 ;
  wire \EX/ALU/result_final<25>_map23 ;
  wire \EX/ALU/result_final<25>_map30 ;
  wire \EX/ALU/result_final<25>_map33 ;
  wire \EX/ALU/result_final<25>_map35 ;
  wire \EX/ALU_A<4>_map5 ;
  wire \EX/ALU_A<4>_map11 ;
  wire \EX/ALU/result_final<27>_map14 ;
  wire \EX/ALU/result_final<27>_map18 ;
  wire \EX/ALU/result_final<27>_map22 ;
  wire \EX/ALU/result_final<27>_map34 ;
  wire \EX/ALU/result_final<26>_map14 ;
  wire \EX/ALU/result_final<26>_map18 ;
  wire \EX/ALU/result_final<26>_map22 ;
  wire \EX/ALU/result_final<26>_map29 ;
  wire \EX/ALU/result_final<26>_map35 ;
  wire N8605;
  wire N8606;
  wire \EX/ALU_A<3>_map5 ;
  wire \EX/ALU_A<3>_map11 ;
  wire \EX/ALU/result_final<28>_map14 ;
  wire \EX/ALU/result_final<28>_map19 ;
  wire \EX/ALU/result_final<28>_map26 ;
  wire \EX/ALU/result_final<28>_map31 ;
  wire \EX/ALU/result_final<28>_map35 ;
  wire \EX/ALU/result_final<28>_map37 ;
  wire \EX/ALU/result_final<28>_map41 ;
  wire \EX/ALU_A<2>_map5 ;
  wire \EX/ALU_A<2>_map11 ;
  wire \EX/ALU/result_final<29>_map14 ;
  wire \EX/ALU/result_final<29>_map23 ;
  wire \EX/ALU/result_final<29>_map24 ;
  wire \EX/ALU/result_final<29>_map36 ;
  wire \EX/ALU/result_final<29>_map40 ;
  wire \EX/ALU/result_final<29>_map42 ;
  wire \EX/ALU_A<1>_map5 ;
  wire \EX/ALU_A<1>_map11 ;
  wire \EX/ALU/result_final<31>_map9 ;
  wire \EX/ALU/result_final<31>_map13 ;
  wire \EX/ALU/result_final<31>_map17 ;
  wire \EX/ALU/result_final<31>_map19 ;
  wire \EX/ALU/result_final<31>_map21 ;
  wire \EX/ALU/result_final<31>_map34 ;
  wire \EX/ALU/result_final<31>_map36 ;
  wire \EX/ALU/result_final<31>_map38 ;
  wire \EX/ALU/result_final<31>_map41 ;
  wire \EX/ForwardA_0_and0001_map6 ;
  wire \EX/ForwardA_0_and0001_map9 ;
  wire \EX/ForwardA_0_and0001_map21 ;
  wire N9236;
  wire \EX/ForwardA_0_cmp_ne0001_map6 ;
  wire \EX/ForwardA_0_cmp_ne0001_map17 ;
  wire \EX/ALU_A<0>_map5 ;
  wire \EX/ALU_A<0>_map11 ;
  wire \EX/ALU/result_final<30>_map14 ;
  wire \EX/ALU/result_final<30>_map17 ;
  wire \EX/ALU/result_final<30>_map23 ;
  wire \EX/ALU/result_final<30>_map24 ;
  wire \EX/ALU/result_final<30>_map31 ;
  wire \EX/ALU/result_final<30>_map36 ;
  wire \EX/ALU/result_final<30>_map40 ;
  wire \EX/ALU/result_final<30>_map42 ;
  wire N9484;
  wire N9485;
  wire \EX/ForwardB_0_and0000_map17 ;
  wire \EX/ForwardB_0_and0000_map25 ;
  wire N9558;
  wire \EX/ALU/result_final<0>_map8 ;
  wire \EX/ALU/result_final<0>_map20 ;
  wire \EX/ALU/result_final<0>_map36 ;
  wire \EX/ALU/result_final<0>_map38 ;
  wire \EX/ALU/result_final<0>_map39 ;
  wire \EX/ALU/result_final<0>_map44 ;
  wire \EX/ALU/result_final<0>_map48 ;
  wire \EX/ALU/result_final<0>_map51 ;
  wire \EX/ALU/result_final<0>_map54 ;
  wire \EX/ALU/result_final<0>_map62 ;
  wire \EX/ALU/result_final<0>_map65 ;
  wire \EX/ALU/result_final<0>_map66 ;
  wire \EX/ALU/result_final<0>_map68 ;
  wire \EX/ALU/result_final<0>_map72 ;
  wire \EX/ALU/result_final<0>_map73 ;
  wire \EX/ALU/result_final<0>_map75 ;
  wire \EX/ALU/result_final<0>_map81 ;
  wire \EX/ALU/result_final<0>_map82 ;
  wire \EX/ALU/result_final<0>_map85 ;
  wire \EX/ALU/adder/mux_7/out<3>1_map10 ;
  wire \EX/ALU/adder/mux_7/out<3>1_map26 ;
  wire \EX/ALU/adder/mux_6/out<3>1_map10 ;
  wire \EX/ALU/adder/mux_6/out<3>1_map26 ;
  wire \EX/ALU/adder/mux_6/out<3>1_map27 ;
  wire \EX/ForwardB_0_cmp_ne0000_map16 ;
  wire \EX/ALU/adder/mux_5/out<3>1_map10 ;
  wire \EX/ALU/adder/mux_5/out<3>1_map26 ;
  wire \EX/ALU/adder/mux_5/out<3>1_map27 ;
  wire N10035;
  wire \EX/ALU/adder/mux_4/out<3>1_map10 ;
  wire \EX/ALU/adder/mux_4/out<3>1_map26 ;
  wire \EX/ALU/adder/mux_4/out<3>1_map27 ;
  wire \EX/ALU/adder/mux_1/out<3>1_map10 ;
  wire \EX/ALU/adder/mux_1/out<3>1_map26 ;
  wire \EX/ALU/adder/mux_1/out<3>1_map27 ;
  wire \EX/ALU/adder/mux_3/out<3>1_map10 ;
  wire \EX/ALU/adder/mux_3/out<3>1_map26 ;
  wire \EX/ALU/adder/mux_3/out<3>1_map27 ;
  wire \EX/ALU/adder/mux_2/out<3>1_map10 ;
  wire \EX/ALU/adder/mux_2/out<3>1_map26 ;
  wire \EX/ALU/adder/mux_2/out<3>1_map27 ;
  wire N10289;
  wire N10295;
  wire N10297;
  wire N10301;
  wire N10302;
  wire N10307;
  wire N10309;
  wire N10315;
  wire N10317;
  wire N10318;
  wire N10320;
  wire N10322;
  wire N10324;
  wire N10326;
  wire N10327;
  wire N10329;
  wire N10330;
  wire N10332;
  wire N10333;
  wire N10335;
  wire N10336;
  wire N10338;
  wire N10339;
  wire N10341;
  wire N10342;
  wire N10346;
  wire N10347;
  wire N10349;
  wire N10350;
  wire N10352;
  wire N10353;
  wire N10355;
  wire N10356;
  wire N10358;
  wire N10386;
  wire N10388;
  wire N10390;
  wire N10392;
  wire N10394;
  wire N10395;
  wire N10397;
  wire N10398;
  wire N10400;
  wire N10401;
  wire N10403;
  wire N10405;
  wire N10407;
  wire N10408;
  wire N10410;
  wire N10411;
  wire N10413;
  wire N10414;
  wire N10416;
  wire N10417;
  wire N10423;
  wire N10425;
  wire N10429;
  wire N10435;
  wire N10437;
  wire N10443;
  wire N10447;
  wire N10449;
  wire N10451;
  wire N10459;
  wire N10461;
  wire N10462;
  wire N10464;
  wire N10465;
  wire N10467;
  wire N10468;
  wire N10470;
  wire N10471;
  wire N10473;
  wire N10474;
  wire N10476;
  wire N10478;
  wire N10480;
  wire N10482;
  wire N10484;
  wire N10486;
  wire N10487;
  wire N10492;
  wire N10493;
  wire N10495;
  wire N10496;
  wire N10498;
  wire N10499;
  wire N10501;
  wire N10502;
  wire N10504;
  wire N10505;
  wire N10507;
  wire N10508;
  wire N10510;
  wire N10511;
  wire N10513;
  wire N10515;
  wire N10517;
  wire N10519;
  wire N10521;
  wire N10523;
  wire N10525;
  wire N10527;
  wire N10529;
  wire N10531;
  wire N10533;
  wire N10535;
  wire N10537;
  wire N10539;
  wire N10545;
  wire N10547;
  wire N10549;
  wire N10551;
  wire N10553;
  wire N10555;
  wire N10557;
  wire N10559;
  wire N10561;
  wire N10563;
  wire N10565;
  wire N10567;
  wire N10569;
  wire N10571;
  wire N10573;
  wire N10574;
  wire N10576;
  wire N10577;
  wire N10579;
  wire N10580;
  wire N10582;
  wire N10583;
  wire N10585;
  wire N10586;
  wire N10588;
  wire N10589;
  wire N10591;
  wire N10597;
  wire N10599;
  wire N10601;
  wire N10603;
  wire N10605;
  wire N10607;
  wire N10609;
  wire N10611;
  wire N10613;
  wire N10619;
  wire N10621;
  wire N10625;
  wire N10627;
  wire N10628;
  wire N10630;
  wire N10631;
  wire N10633;
  wire N10635;
  wire N10636;
  wire N10638;
  wire N10639;
  wire N10641;
  wire N10643;
  wire N10645;
  wire N10647;
  wire N10649;
  wire N10651;
  wire N10653;
  wire N10657;
  wire N10659;
  wire N10663;
  wire N10665;
  wire N10674;
  wire N10676;
  wire N10678;
  wire N10680;
  wire N10686;
  wire N10688;
  wire N10690;
  wire N10692;
  wire N10696;
  wire N10706;
  wire N10708;
  wire N10710;
  wire N10712;
  wire N10714;
  wire N10716;
  wire N10718;
  wire N10719;
  wire N10724;
  wire N10725;
  wire N10727;
  wire N10728;
  wire N10730;
  wire N10731;
  wire N10733;
  wire N10734;
  wire N10736;
  wire N10737;
  wire N10739;
  wire N10740;
  wire N10751;
  wire N10754;
  wire N10757;
  wire N10760;
  wire N10763;
  wire N10766;
  wire N10769;
  wire N10772;
  wire N10775;
  wire N10778;
  wire N10781;
  wire N10784;
  wire N10787;
  wire N10796;
  wire N10797;
  wire N10799;
  wire N10800;
  wire N10802;
  wire N10803;
  wire N10805;
  wire N10806;
  wire N10808;
  wire N10809;
  wire N10811;
  wire N10812;
  wire N10814;
  wire N10815;
  wire N10817;
  wire N10818;
  wire N10820;
  wire N10822;
  wire N10823;
  wire N10825;
  wire N10829;
  wire N10831;
  wire N10833;
  wire N10835;
  wire N10837;
  wire N10841;
  wire N10843;
  wire N10844;
  wire N10846;
  wire N10847;
  wire N10849;
  wire N10850;
  wire N10852;
  wire N10853;
  wire N10855;
  wire N10856;
  wire N10858;
  wire N10859;
  wire N10861;
  wire N10862;
  wire N10864;
  wire N10872;
  wire N10874;
  wire N10876;
  wire N10878;
  wire N10880;
  wire N10882;
  wire N10884;
  wire N10886;
  wire N10888;
  wire N10890;
  wire N10892;
  wire N10894;
  wire N10895;
  wire N10897;
  wire N10898;
  wire N10902;
  wire N10904;
  wire N10905;
  wire N10913;
  wire N10915;
  wire N10916;
  wire N10919;
  wire N10922;
  wire N10925;
  wire N10928;
  wire N10931;
  wire N10934;
  wire N10937;
  wire N10940;
  wire N10943;
  wire N10946;
  wire N10949;
  wire N10952;
  wire N10955;
  wire N10958;
  wire N10961;
  wire N10964;
  wire N10967;
  wire N10976;
  wire N10978;
  wire N11037;
  wire N11048;
  wire N11050;
  wire N11054;
  wire N11056;
  wire N11062;
  wire N11064;
  wire N11066;
  wire N11068;
  wire N11070;
  wire N11072;
  wire N11074;
  wire N11076;
  wire N11084;
  wire N11086;
  wire N11087;
  wire N11089;
  wire N11090;
  wire N11092;
  wire N11096;
  wire N11097;
  wire N11098;
  wire N11099;
  wire N11100;
  wire N11101;
  wire N11103;
  wire N11105;
  wire N11107;
  wire N11109;
  wire N11111;
  wire N11113;
  wire N11115;
  wire N11117;
  wire N11119;
  wire N11121;
  wire N11122;
  wire N11123;
  wire N11124;
  wire N11125;
  wire N11126;
  wire N11127;
  wire N11128;
  wire N11129;
  wire N11130;
  wire N11131;
  wire N11132;
  wire N11133;
  wire N11134;
  wire N11135;
  wire N11136;
  wire N11138;
  wire N11140;
  wire N11142;
  wire N11144;
  wire N11145;
  wire N11146;
  wire N11147;
  wire N11148;
  wire N11149;
  wire N11150;
  wire N11151;
  wire N11152;
  wire N11153;
  wire N11154;
  wire N11155;
  wire N11156;
  wire N11157;
  wire N11158;
  wire N11159;
  wire N11160;
  wire N11161;
  wire N11162;
  wire N11163;
  wire N11164;
  wire N11165;
  wire N11166;
  wire N11167;
  wire N11168;
  wire N11169;
  wire N11170;
  wire N11171;
  wire N11172;
  wire N11173;
  wire N11174;
  wire N11175;
  wire N11176;
  wire N11177;
  wire N11178;
  wire N11179;
  wire N11182;
  wire N11183;
  wire N11190;
  wire N11191;
  wire N11192;
  wire N11193;
  wire N11194;
  wire N11196;
  wire N11197;
  wire N11198;
  wire N11199;
  wire N11200;
  wire N11201;
  wire N11202;
  wire N11203;
  wire N11204;
  wire N11205;
  wire N11206;
  wire N11207;
  wire N11208;
  wire N11209;
  wire N11210;
  wire N11211;
  wire N11212;
  wire N11213;
  wire N11214;
  wire N11215;
  wire N11216;
  wire N11217;
  wire N11218;
  wire N11219;
  wire N11220;
  wire N11221;
  wire N11222;
  wire N11223;
  wire N11224;
  wire N11225;
  wire N11228;
  wire N11229;
  wire N11230;
  wire N11231;
  wire N11234;
  wire N11235;
  wire N11236;
  wire N11237;
  wire N11238;
  wire N11239;
  wire N11240;
  wire N11241;
  wire N11242;
  wire N11243;
  wire N11244;
  wire N11245;
  wire N11246;
  wire N11247;
  wire N11248;
  wire N11249;
  wire N11250;
  wire N11251;
  wire N11252;
  wire N11253;
  wire N11254;
  wire N11255;
  wire N11256;
  wire N11257;
  wire N11258;
  wire N11259;
  wire N11260;
  wire N11261;
  wire N11262;
  wire N11263;
  wire N11264;
  wire N11265;
  wire N11266;
  wire N11267;
  wire N11268;
  wire N11269;
  wire N11270;
  wire N11271;
  wire N11272;
  wire N11273;
  wire N11274;
  wire N11275;
  wire N11276;
  wire N11277;
  wire N11278;
  wire N11279;
  wire N11280;
  wire N11281;
  wire N11282;
  wire N11283;
  wire N11284;
  wire N11285;
  wire N11286;
  wire N11287;
  wire N11292;
  wire N11293;
  wire N11294;
  wire N11297;
  wire N11300;
  wire N11303;
  wire N11306;
  wire N11309;
  wire N11312;
  wire N11315;
  wire N11318;
  wire N11321;
  wire N11325;
  wire N11327;
  wire N11368;
  wire N11370;
  wire N11381;
  wire N11383;
  wire N11385;
  wire N11387;
  wire N11389;
  wire N11391;
  wire N11393;
  wire N11395;
  wire N11397;
  wire N11399;
  wire N11401;
  wire N11403;
  wire N11405;
  wire N11407;
  wire \MM_mem_wb/q_0_1_132 ;
  wire \MM_mem_wb/q_1_1_133 ;
  wire \EX/ForwardA_0_and000178_134 ;
  wire \MM_mem_wb/q_5_1_135 ;
  wire \EX/ForwardA_1_and0001_136 ;
  wire \Data_ex_mem/q_0_1_137 ;
  wire \MM_mem_wb/q_4_1_138 ;
  wire \Data_ex_mem/q_1_1_139 ;
  wire \EX/ALU_B<31>1_140 ;
  wire \Data_ex_mem/q_0_2_141 ;
  wire \MM_mem_wb/q_3_1_142 ;
  wire \MM_mem_wb/q_3_2_143 ;
  wire \MM_mem_wb/q_3_3_144 ;
  wire \MM_mem_wb/q_3_4_145 ;
  wire \MM_mem_wb/q_3_5_146 ;
  wire \MM_mem_wb/q_1_17_147 ;
  wire \MM_mem_wb/q_1_18_148 ;
  wire \MM_mem_wb/q_1_19_149 ;
  wire \Data_ex_mem/q_3_1_150 ;
  wire \MM_mem_wb/q_0_17_151 ;
  wire \MM_mem_wb/q_0_18_152 ;
  wire \MM_mem_wb/q_0_19_153 ;
  wire \EX/ALU_A<0>59_154 ;
  wire \EX/ALU_A<1>59_155 ;
  wire \MM_mem_wb/q_2_1_156 ;
  wire \MM_mem_wb/q_2_2_157 ;
  wire \MM_mem_wb/q_2_3_158 ;
  wire \MM_mem_wb/q_0_33_159 ;
  wire \EX/ALU/result_final<0>3_160 ;
  wire \MM_mem_wb/q_3_16_161 ;
  wire \MM_mem_wb/q_1_33_162 ;
  wire \EX/ALU_A<2>59_163 ;
  wire \EX/ALU_A<4>59_164 ;
  wire \EX/ALU/result_final<0>61_165 ;
  wire \Data_ex_mem/q_2_1_166 ;
  wire \if_id/q_24_1_167 ;
  wire \EX/ALU/result_final<0>71_168 ;
  wire \if_id/q_22_1_169 ;
  wire \MM_mem_wb/q_2_17_170 ;
  wire \MM_mem_wb/q_2_18_171 ;
  wire \MM_mem_wb/q_2_19_172 ;
  wire \if_id/q_21_1_173 ;
  wire N11411;
  wire N11412;
  wire N11413;
  wire N11414;
  wire N11415;
  wire N11416;
  wire N11417;
  wire N11418;
  wire N11419;
  wire N11420;
  wire N11421;
  wire N11422;
  wire N11423;
  wire N11424;
  wire N11425;
  wire N11426;
  wire N11427;
  wire N11428;
  wire N11429;
  wire N11430;
  wire N11431;
  wire N11432;
  wire N11433;
  wire N11434;
  wire N11435;
  wire N11436;
  wire N11437;
  wire N11438;
  wire N11439;
  wire N11440;
  wire N11441;
  wire N11442;
  wire N11443;
  wire N11444;
  wire N11445;
  wire N11446;
  wire N11447;
  wire N11448;
  wire N11449;
  wire N11450;
  wire N11451;
  wire N11452;
  wire N11453;
  wire N11454;
  wire N11455;
  wire N11456;
  wire N11457;
  wire N11458;
  wire N11459;
  wire N11460;
  wire N11461;
  wire N11462;
  wire N11463;
  wire N11464;
  wire N11465;
  wire N11466;
  wire N11467;
  wire N11468;
  wire N11469;
  wire N11470;
  wire N11471;
  wire N11472;
  wire N11473;
  wire N11474;
  wire N11475;
  wire N11476;
  wire N11477;
  wire N11478;
  wire N11479;
  wire N11480;
  wire N11481;
  wire N11482;
  wire N11483;
  wire N11484;
  wire N11485;
  wire N11486;
  wire N11487;
  wire N11488;
  wire N11489;
  wire N11490;
  wire N11491;
  wire N11492;
  wire N11493;
  wire N11494;
  wire N11495;
  wire N11496;
  wire N11497;
  wire N11498;
  wire N11499;
  wire N11500;
  wire N11501;
  wire N11502;
  wire N11503;
  wire N11504;
  wire N11505;
  wire N11506;
  wire N11507;
  wire N11508;
  wire N11509;
  wire N11510;
  wire N11511;
  wire N11512;
  wire N11513;
  wire N11514;
  wire N11515;
  wire N11516;
  wire N11517;
  wire N11518;
  wire N11519;
  wire N11520;
  wire N11521;
  wire N11522;
  wire N11523;
  wire N11524;
  wire N11525;
  wire N11526;
  wire N11527;
  wire N11528;
  wire N11529;
  wire N11530;
  wire N11531;
  wire N11532;
  wire N11533;
  wire N11534;
  wire N11535;
  wire N11536;
  wire N11537;
  wire N11539;
  wire N11540;
  wire N11541;
  wire N11542;
  wire N11543;
  wire N11544;
  wire N11545;
  wire N11546;
  wire N11547;
  wire N11548;
  wire N11549;
  wire N11550;
  wire N11551;
  wire N11552;
  wire N11553;
  wire N11554;
  wire N11555;
  wire N11556;
  wire N11557;
  wire N11558;
  wire N11559;
  wire N11560;
  wire N11561;
  wire N11562;
  wire N11563;
  wire N11564;
  wire N11565;
  wire N11566;
  wire N11567;
  wire N11568;
  wire N11569;
  wire N11570;
  wire N11571;
  wire N11572;
  wire N11573;
  wire N11574;
  wire N11575;
  wire N11576;
  wire N11577;
  wire N11578;
  wire N11579;
  wire N11580;
  wire N11581;
  wire N11582;
  wire N11583;
  wire N11584;
  wire N11585;
  wire N11586;
  wire N11587;
  wire N11588;
  wire N11589;
  wire N11590;
  wire N11591;
  wire N11592;
  wire N11593;
  wire N11594;
  wire N11595;
  wire N11596;
  wire N11597;
  wire N11598;
  wire N11599;
  wire N11600;
  wire N11601;
  wire N11602;
  wire N11603;
  wire N11604;
  wire N11607;
  wire N11608;
  wire N11615;
  wire N11616;
  wire N11617;
  wire N11618;
  wire N11619;
  wire N11620;
  wire N11621;
  wire N11622;
  wire N11623;
  wire N11624;
  wire N11625;
  wire N11626;
  wire N11627;
  wire N11628;
  wire N11629;
  wire N11630;
  wire N11631;
  wire N11632;
  wire N11633;
  wire N11634;
  wire N11635;
  wire N11636;
  wire N11637;
  wire N11638;
  wire N11639;
  wire N11640;
  wire N11641;
  wire N11642;
  wire N11643;
  wire N11644;
  wire N11645;
  wire N11646;
  wire N11647;
  wire N11648;
  wire N11649;
  wire N11650;
  wire N11651;
  wire N11652;
  wire N11653;
  wire N11654;
  wire N11655;
  wire N11656;
  wire N11657;
  wire N11658;
  wire N11659;
  wire N11660;
  wire N11661;
  wire N11662;
  wire N11663;
  wire N11664;
  wire N11665;
  wire N11666;
  wire \ID/Z701_174 ;
  wire \EX/ALU_A<3>59_175 ;
  wire N11671;
  wire N11672;
  wire N11673;
  wire N11674;
  wire N11675;
  wire N11676;
  wire N11677;
  wire N11678;
  wire N11679;
  wire N11680;
  wire N11681;
  wire N11682;
  wire N11683;
  wire N11684;
  wire N11686;
  wire N11688;
  wire N11689;
  wire N11690;
  wire N11691;
  wire N11692;
  wire N11694;
  wire N11695;
  wire N11698;
  wire N11699;
  wire N11700;
  wire N11701;
  wire N11703;
  wire N11705;
  wire N11706;
  wire N11707;
  wire N11708;
  wire N11712;
  wire N11713;
  wire N11714;
  wire N11715;
  wire N11716;
  wire N11717;
  wire N11718;
  wire N11719;
  wire N11720;
  wire N11721;
  wire N11722;
  wire N11723;
  wire N11724;
  wire N11725;
  wire N11726;
  wire N11727;
  wire N11728;
  wire N11729;
  wire N11730;
  wire N11731;
  wire N11732;
  wire N11733;
  wire N11734;
  wire N11735;
  wire N11736;
  wire N11737;
  wire N11738;
  wire N11739;
  wire N11740;
  wire N11741;
  wire N11742;
  wire N11743;
  wire N11744;
  wire N11745;
  wire N11746;
  wire N11747;
  wire N11748;
  wire N11749;
  wire N11750;
  wire N11751;
  wire N11752;
  wire N11753;
  wire N11754;
  wire N11755;
  wire N11756;
  wire N11757;
  wire N11758;
  wire N11759;
  wire N11760;
  wire N11761;
  wire N11762;
  wire N11763;
  wire N11764;
  wire N11765;
  wire N11766;
  wire N11767;
  wire N11768;
  wire N11769;
  wire N11770;
  wire N11771;
  wire N11772;
  wire N11773;
  wire N11774;
  wire N11775;
  wire N11776;
  wire N11777;
  wire N11778;
  wire N11779;
  wire N11780;
  wire N11781;
  wire N11782;
  wire N11783;
  wire N11784;
  wire N11785;
  wire N11786;
  wire N11787;
  wire N11788;
  wire N11789;
  wire N11790;
  wire N11791;
  wire N11792;
  wire N11793;
  wire N11794;
  wire N11795;
  wire N11796;
  wire N11797;
  wire N11798;
  wire N11799;
  wire N11800;
  wire N11801;
  wire N11802;
  wire N11803;
  wire N11804;
  wire N11805;
  wire N11806;
  wire N11807;
  wire N11808;
  wire N11809;
  wire N11810;
  wire N11811;
  wire N11812;
  wire N11813;
  wire N11814;
  wire N11815;
  wire N11816;
  wire N11817;
  wire N11818;
  wire N11819;
  wire N11820;
  wire N11821;
  wire N11822;
  wire N11823;
  wire N11824;
  wire N11825;
  wire N11826;
  wire N11827;
  wire N11828;
  wire N11829;
  wire N11830;
  wire N11831;
  wire N11832;
  wire N11833;
  wire N11834;
  wire N11835;
  wire N11836;
  wire N11837;
  wire N11838;
  wire N11839;
  wire N11840;
  wire N11841;
  wire N11842;
  wire N11843;
  wire N11844;
  wire N11845;
  wire N11846;
  wire N11847;
  wire N11848;
  wire N11849;
  wire N11850;
  wire N11851;
  wire N11852;
  wire N11853;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem1_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem2_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem3_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem4_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem5_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem6_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem7_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem8_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem9_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem10_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem11_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem12_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem13_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem14_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem15_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem16_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem17_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem18_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem19_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem20_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem21_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem22_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem23_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem24_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem25_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem26_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem27_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem28_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem29_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem30_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem31_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem32_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem33_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem34_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem35_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem36_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem37_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem38_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem39_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem40_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem41_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem42_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem43_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem44_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem45_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem46_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem47_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem48_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem49_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem50_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem51_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem52_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem53_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem54_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem55_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem56_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem57_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem58_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem59_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem60_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem61_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem62_SPO_UNCONNECTED ;
  wire \NLW_ID/MultiRegisters/inst_Mram_mem63_SPO_UNCONNECTED ;
  wire [6 : 0] \MM_mem_wb/q ;
  wire [1 : 0] \WB_ex_mem/q ;
  wire [0 : 0] \WB_id_ex/q ;
  wire [7 : 0] \EX_id_ex/q ;
  wire [1 : 0] \MM_id_ex/q ;
  wire [0 : 0] \MM_ex_mem/q ;
  wire [31 : 0] \IF/PC ;
  wire [31 : 0] \Data_mem_wb/q ;
  wire [31 : 0] RegWriteData_wb;
  wire [68 : 0] \Data_ex_mem/q ;
  wire [31 : 2] NextPC_if;
  wire [4 : 0] ALUCode_id;
  wire [31 : 0] RtData_id;
  wire [31 : 0] MemWriteData_ex;
  wire [4 : 0] RegWriteAddr_ex;
  wire [31 : 0] JrAddr;
  wire [31 : 0] \IF/PC_in ;
  wire [1 : 1] \ID/addOffset/adder_40/s_and0000 ;
  wire [1 : 1] \ID/addOffset/adder_30/s_and0000 ;
  wire [1 : 1] \ID/addOffset/adder_20/s_and0000 ;
  wire [1 : 1] \ID/addOffset/adder_10/s_and0000 ;
  wire [31 : 0] \ID/MultiRegisters/_varindex0000 ;
  wire [31 : 0] \ID/MultiRegisters/_varindex0001 ;
  wire [31 : 31] \EX/ALU/result_final_shift0002 ;
  wire [31 : 0] \EX/ALU/_xor0000 ;
  wire [2 : 0] \EX/ALU/adder/adder_0/C ;
  wire [1 : 1] \EX/ALU/adder/adder_10/s_and0000 ;
  wire [1 : 1] \EX/ALU/adder/adder_20/s_and0000 ;
  wire [1 : 1] \EX/ALU/adder/adder_30/s_and0000 ;
  wire [1 : 1] \EX/ALU/adder/adder_40/s_and0000 ;
  wire [1 : 1] \EX/ALU/adder/adder_50/s_and0000 ;
  wire [1 : 1] \EX/ALU/adder/adder_60/s_and0000 ;
  wire [1 : 1] \EX/ALU/adder/adder_70/s_and0000 ;
  wire [1 : 0] \EX/ForwardB ;
  wire [1 : 0] \EX/ForwardA ;
  wire [5 : 0] \EX/ALU/result_final_or0002_wg_cy ;
  VCC XST_VCC (
    .P(N0)
  );
  GND XST_GND (
    .G(Instruction_id_20_OBUF_3)
  );
  defparam \WB_ex_mem/q_1 .INIT = 1'b0;
  FDRE \WB_ex_mem/q_1  (
    .C(clk_BUFGP_0),
    .CE(N0),
    .D(\MM_id_ex/q [0]),
    .R(reset_IBUF_1),
    .Q(\WB_ex_mem/q [1])
  );
  defparam \WB_ex_mem/q_0 .INIT = 1'b0;
  FDRE \WB_ex_mem/q_0  (
    .C(clk_BUFGP_0),
    .CE(N0),
    .D(\WB_id_ex/q [0]),
    .R(reset_IBUF_1),
    .Q(\WB_ex_mem/q [0])
  );
  defparam \MM_id_ex/q_1 .INIT = 1'b0;
  FDRE \MM_id_ex/q_1  (
    .C(clk_BUFGP_0),
    .CE(N0),
    .D(MemWrite_id),
    .R(_or0001),
    .Q(\MM_id_ex/q [1])
  );
  defparam \MM_id_ex/q_0 .INIT = 1'b0;
  FDRE \MM_id_ex/q_0  (
    .C(clk_BUFGP_0),
    .CE(N0),
    .D(MemRead_id),
    .R(_or0001),
    .Q(\MM_id_ex/q [0])
  );
  defparam \WB_id_ex/q_0 .INIT = 1'b0;
  FDRE \WB_id_ex/q_0  (
    .C(clk_BUFGP_0),
    .CE(N0),
    .D(RegWrite_id),
    .R(_or0001),
    .Q(\WB_id_ex/q [0])
  );
  defparam \EX_id_ex/q_7 .INIT = 1'b0;
  FDR \EX_id_ex/q_7  (
    .C(clk_BUFGP_0),
    .D(ALUCode_id[4]),
    .R(_or0001),
    .Q(\EX_id_ex/q [7])
  );
  defparam \EX_id_ex/q_6 .INIT = 1'b0;
  FDR \EX_id_ex/q_6  (
    .C(clk_BUFGP_0),
    .D(ALUCode_id[3]),
    .R(_or0001),
    .Q(\EX_id_ex/q [6])
  );
  defparam \EX_id_ex/q_5 .INIT = 1'b0;
  FDR \EX_id_ex/q_5  (
    .C(clk_BUFGP_0),
    .D(ALUCode_id[2]),
    .R(_or0001),
    .Q(\EX_id_ex/q [5])
  );
  defparam \EX_id_ex/q_4 .INIT = 1'b0;
  FDR \EX_id_ex/q_4  (
    .C(clk_BUFGP_0),
    .D(ALUCode_id[1]),
    .R(_or0001),
    .Q(\EX_id_ex/q [4])
  );
  defparam \EX_id_ex/q_3 .INIT = 1'b0;
  FDR \EX_id_ex/q_3  (
    .C(clk_BUFGP_0),
    .D(ALUCode_id[0]),
    .R(_or0001),
    .Q(\EX_id_ex/q [3])
  );
  defparam \EX_id_ex/q_2 .INIT = 1'b0;
  FDR \EX_id_ex/q_2  (
    .C(clk_BUFGP_0),
    .D(ALUSrcA_id),
    .R(_or0001),
    .Q(\EX_id_ex/q [2])
  );
  defparam \Addr_id_ex/q_13 .INIT = 1'b0;
  FDR \Addr_id_ex/q_13  (
    .C(clk_BUFGP_0),
    .D(\if_id/q[24] ),
    .R(_or0001),
    .Q(\Addr_id_ex/q[13] )
  );
  defparam \Addr_id_ex/q_11 .INIT = 1'b0;
  FDR \Addr_id_ex/q_11  (
    .C(clk_BUFGP_0),
    .D(\if_id/q[22] ),
    .R(_or0001),
    .Q(\Addr_id_ex/q[11] )
  );
  defparam \Addr_id_ex/q_10 .INIT = 1'b0;
  FDR \Addr_id_ex/q_10  (
    .C(clk_BUFGP_0),
    .D(\if_id/q[21] ),
    .R(_or0001),
    .Q(\Addr_id_ex/q[10] )
  );
  defparam \Addr_id_ex/q_8 .INIT = 1'b0;
  FDR \Addr_id_ex/q_8  (
    .C(clk_BUFGP_0),
    .D(\if_id/q[19] ),
    .R(_or0001),
    .Q(\Addr_id_ex/q[8] )
  );
  defparam \Addr_id_ex/q_7 .INIT = 1'b0;
  FDR \Addr_id_ex/q_7  (
    .C(clk_BUFGP_0),
    .D(\if_id/q[18] ),
    .R(_or0001),
    .Q(\Addr_id_ex/q[7] )
  );
  defparam \Addr_id_ex/q_6 .INIT = 1'b0;
  FDR \Addr_id_ex/q_6  (
    .C(clk_BUFGP_0),
    .D(\if_id/q[17] ),
    .R(_or0001),
    .Q(\Addr_id_ex/q[6] )
  );
  defparam \Addr_id_ex/q_5 .INIT = 1'b0;
  FDR \Addr_id_ex/q_5  (
    .C(clk_BUFGP_0),
    .D(\if_id/q[16] ),
    .R(_or0001),
    .Q(\Addr_id_ex/q[5] )
  );
  defparam \Addr_id_ex/q_4 .INIT = 1'b0;
  FDR \Addr_id_ex/q_4  (
    .C(clk_BUFGP_0),
    .D(\if_id/q[15] ),
    .R(_or0001),
    .Q(\Addr_id_ex/q[4] )
  );
  defparam \Addr_id_ex/q_3 .INIT = 1'b0;
  FDR \Addr_id_ex/q_3  (
    .C(clk_BUFGP_0),
    .D(\if_id/q[14] ),
    .R(_or0001),
    .Q(\Addr_id_ex/q[3] )
  );
  defparam \Addr_id_ex/q_1 .INIT = 1'b0;
  FDR \Addr_id_ex/q_1  (
    .C(clk_BUFGP_0),
    .D(\if_id/q[12] ),
    .R(_or0001),
    .Q(\Addr_id_ex/q[1] )
  );
  defparam \Addr_id_ex/q_0 .INIT = 1'b0;
  FDR \Addr_id_ex/q_0  (
    .C(clk_BUFGP_0),
    .D(\if_id/q[11] ),
    .R(_or0001),
    .Q(\Addr_id_ex/q[0] )
  );
  defparam \MM_ex_mem/q_0 .INIT = 1'b0;
  FDR \MM_ex_mem/q_0  (
    .C(clk_BUFGP_0),
    .D(\MM_id_ex/q [1]),
    .R(reset_IBUF_1),
    .Q(\MM_ex_mem/q [0])
  );
  defparam \MM_mem_wb/q_6 .INIT = 1'b0;
  FDR \MM_mem_wb/q_6  (
    .C(clk_BUFGP_0),
    .D(\WB_ex_mem/q [1]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q [6])
  );
  defparam \MM_mem_wb/q_5 .INIT = 1'b0;
  FDR \MM_mem_wb/q_5  (
    .C(clk_BUFGP_0),
    .D(\WB_ex_mem/q [0]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q [5])
  );
  defparam \MM_mem_wb/q_4 .INIT = 1'b0;
  FDR \MM_mem_wb/q_4  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [4]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q [4])
  );
  defparam \MM_mem_wb/q_3 .INIT = 1'b0;
  FDR \MM_mem_wb/q_3  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [3]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q [3])
  );
  defparam \MM_mem_wb/q_2 .INIT = 1'b0;
  FDR \MM_mem_wb/q_2  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [2]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q [2])
  );
  defparam \MM_mem_wb/q_1 .INIT = 1'b0;
  FDR \MM_mem_wb/q_1  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [1]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q [1])
  );
  defparam \MM_mem_wb/q_0 .INIT = 1'b0;
  FDR \MM_mem_wb/q_0  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [0]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q [0])
  );
  defparam \if_id/q_63 .INIT = 1'b0;
  FDRE \if_id/q_63  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[31]),
    .R(_or0000),
    .Q(\if_id/q[63] )
  );
  defparam \if_id/q_62 .INIT = 1'b0;
  FDRE \if_id/q_62  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[30]),
    .R(_or0000),
    .Q(\if_id/q[62] )
  );
  defparam \if_id/q_61 .INIT = 1'b0;
  FDRE \if_id/q_61  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[29]),
    .R(_or0000),
    .Q(\if_id/q[61] )
  );
  defparam \if_id/q_60 .INIT = 1'b0;
  FDRE \if_id/q_60  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[28]),
    .R(_or0000),
    .Q(\if_id/q[60] )
  );
  defparam \if_id/q_59 .INIT = 1'b0;
  FDRE \if_id/q_59  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[27]),
    .R(_or0000),
    .Q(\if_id/q[59] )
  );
  defparam \if_id/q_58 .INIT = 1'b0;
  FDRE \if_id/q_58  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[26]),
    .R(_or0000),
    .Q(\if_id/q[58] )
  );
  defparam \if_id/q_57 .INIT = 1'b0;
  FDRE \if_id/q_57  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[25]),
    .R(_or0000),
    .Q(\if_id/q[57] )
  );
  defparam \if_id/q_56 .INIT = 1'b0;
  FDRE \if_id/q_56  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[24]),
    .R(_or0000),
    .Q(\if_id/q[56] )
  );
  defparam \if_id/q_55 .INIT = 1'b0;
  FDRE \if_id/q_55  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[23]),
    .R(_or0000),
    .Q(\if_id/q[55] )
  );
  defparam \if_id/q_54 .INIT = 1'b0;
  FDRE \if_id/q_54  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[22]),
    .R(_or0000),
    .Q(\if_id/q[54] )
  );
  defparam \if_id/q_53 .INIT = 1'b0;
  FDRE \if_id/q_53  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[21]),
    .R(_or0000),
    .Q(\if_id/q[53] )
  );
  defparam \if_id/q_52 .INIT = 1'b0;
  FDRE \if_id/q_52  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[20]),
    .R(_or0000),
    .Q(\if_id/q[52] )
  );
  defparam \if_id/q_51 .INIT = 1'b0;
  FDRE \if_id/q_51  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[19]),
    .R(_or0000),
    .Q(\if_id/q[51] )
  );
  defparam \if_id/q_50 .INIT = 1'b0;
  FDRE \if_id/q_50  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[18]),
    .R(_or0000),
    .Q(\if_id/q[50] )
  );
  defparam \if_id/q_49 .INIT = 1'b0;
  FDRE \if_id/q_49  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[17]),
    .R(_or0000),
    .Q(\if_id/q[49] )
  );
  defparam \if_id/q_48 .INIT = 1'b0;
  FDRE \if_id/q_48  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[16]),
    .R(_or0000),
    .Q(\if_id/q[48] )
  );
  defparam \if_id/q_47 .INIT = 1'b0;
  FDRE \if_id/q_47  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[15]),
    .R(_or0000),
    .Q(\if_id/q[47] )
  );
  defparam \if_id/q_46 .INIT = 1'b0;
  FDRE \if_id/q_46  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[14]),
    .R(_or0000),
    .Q(\if_id/q[46] )
  );
  defparam \if_id/q_45 .INIT = 1'b0;
  FDRE \if_id/q_45  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[13]),
    .R(_or0000),
    .Q(\if_id/q[45] )
  );
  defparam \if_id/q_44 .INIT = 1'b0;
  FDRE \if_id/q_44  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[12]),
    .R(_or0000),
    .Q(\if_id/q[44] )
  );
  defparam \if_id/q_43 .INIT = 1'b0;
  FDRE \if_id/q_43  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[11]),
    .R(_or0000),
    .Q(\if_id/q[43] )
  );
  defparam \if_id/q_42 .INIT = 1'b0;
  FDRE \if_id/q_42  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[10]),
    .R(_or0000),
    .Q(\if_id/q[42] )
  );
  defparam \if_id/q_41 .INIT = 1'b0;
  FDRE \if_id/q_41  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[9]),
    .R(_or0000),
    .Q(\if_id/q[41] )
  );
  defparam \if_id/q_40 .INIT = 1'b0;
  FDRE \if_id/q_40  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[8]),
    .R(_or0000),
    .Q(\if_id/q[40] )
  );
  defparam \if_id/q_39 .INIT = 1'b0;
  FDRE \if_id/q_39  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[7]),
    .R(_or0000),
    .Q(\if_id/q[39] )
  );
  defparam \if_id/q_38 .INIT = 1'b0;
  FDRE \if_id/q_38  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[6]),
    .R(_or0000),
    .Q(\if_id/q[38] )
  );
  defparam \if_id/q_37 .INIT = 1'b0;
  FDRE \if_id/q_37  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[5]),
    .R(_or0000),
    .Q(\if_id/q[37] )
  );
  defparam \if_id/q_36 .INIT = 1'b0;
  FDRE \if_id/q_36  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[4]),
    .R(_or0000),
    .Q(\if_id/q[36] )
  );
  defparam \if_id/q_35 .INIT = 1'b0;
  FDRE \if_id/q_35  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[3]),
    .R(_or0000),
    .Q(\if_id/q[35] )
  );
  defparam \if_id/q_34 .INIT = 1'b0;
  FDRE \if_id/q_34  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(NextPC_if[2]),
    .R(_or0000),
    .Q(\if_id/q[34] )
  );
  defparam \if_id/q_33 .INIT = 1'b0;
  FDRE \if_id/q_33  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC [1]),
    .R(_or0000),
    .Q(\if_id/q[33] )
  );
  defparam \if_id/q_32 .INIT = 1'b0;
  FDRE \if_id/q_32  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC [0]),
    .R(_or0000),
    .Q(\if_id/q[32] )
  );
  defparam \if_id/q_31 .INIT = 1'b0;
  FDRE \if_id/q_31  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[31] ),
    .R(_or0000),
    .Q(\if_id/q[31] )
  );
  defparam \if_id/q_29 .INIT = 1'b0;
  FDRE \if_id/q_29  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[29] ),
    .R(_or0000),
    .Q(\if_id/q[29] )
  );
  defparam \if_id/q_28 .INIT = 1'b0;
  FDRE \if_id/q_28  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[28] ),
    .R(_or0000),
    .Q(\if_id/q[28] )
  );
  defparam \if_id/q_27 .INIT = 1'b0;
  FDRE \if_id/q_27  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[27] ),
    .R(_or0000),
    .Q(\if_id/q[27] )
  );
  defparam \if_id/q_26 .INIT = 1'b0;
  FDRE \if_id/q_26  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[26] ),
    .R(_or0000),
    .Q(\if_id/q[26] )
  );
  defparam \if_id/q_24 .INIT = 1'b0;
  FDRE \if_id/q_24  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[24] ),
    .R(_or0000),
    .Q(\if_id/q[24] )
  );
  defparam \if_id/q_22 .INIT = 1'b0;
  FDRE \if_id/q_22  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[22] ),
    .R(_or0000),
    .Q(\if_id/q[22] )
  );
  defparam \if_id/q_21 .INIT = 1'b0;
  FDRE \if_id/q_21  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[21] ),
    .R(_or0000),
    .Q(\if_id/q[21] )
  );
  defparam \if_id/q_19 .INIT = 1'b0;
  FDRE \if_id/q_19  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[19] ),
    .R(_or0000),
    .Q(\if_id/q[19] )
  );
  defparam \if_id/q_18 .INIT = 1'b0;
  FDRE \if_id/q_18  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[18] ),
    .R(_or0000),
    .Q(\if_id/q[18] )
  );
  defparam \if_id/q_17 .INIT = 1'b0;
  FDRE \if_id/q_17  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[17] ),
    .R(_or0000),
    .Q(\if_id/q[17] )
  );
  defparam \if_id/q_16 .INIT = 1'b0;
  FDRE \if_id/q_16  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[16] ),
    .R(_or0000),
    .Q(\if_id/q[16] )
  );
  defparam \if_id/q_15 .INIT = 1'b0;
  FDRE \if_id/q_15  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[10] ),
    .R(_or0000),
    .Q(\if_id/q[15] )
  );
  defparam \if_id/q_14 .INIT = 1'b0;
  FDRE \if_id/q_14  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[14] ),
    .R(_or0000),
    .Q(\if_id/q[14] )
  );
  defparam \if_id/q_12 .INIT = 1'b0;
  FDRE \if_id/q_12  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[12] ),
    .R(_or0000),
    .Q(\if_id/q[12] )
  );
  defparam \if_id/q_11 .INIT = 1'b0;
  FDRE \if_id/q_11  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[11] ),
    .R(_or0000),
    .Q(\if_id/q[11] )
  );
  defparam \if_id/q_7 .INIT = 1'b0;
  FDRE \if_id/q_7  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[7] ),
    .R(_or0000),
    .Q(\if_id/q[7] )
  );
  defparam \if_id/q_6 .INIT = 1'b0;
  FDRE \if_id/q_6  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[6] ),
    .R(_or0000),
    .Q(\if_id/q[6] )
  );
  defparam \if_id/q_3 .INIT = 1'b0;
  FDRE \if_id/q_3  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[3] ),
    .R(_or0000),
    .Q(\if_id/q[3] )
  );
  defparam \if_id/q_2 .INIT = 1'b0;
  FDRE \if_id/q_2  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[2] ),
    .R(_or0000),
    .Q(\if_id/q[2] )
  );
  defparam \if_id/q_1 .INIT = 1'b0;
  FDRE \if_id/q_1  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[1] ),
    .R(_or0000),
    .Q(\if_id/q[1] )
  );
  defparam \if_id/q_0 .INIT = 1'b0;
  FDRE \if_id/q_0  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[0] ),
    .R(_or0000),
    .Q(\if_id/q[0] )
  );
  defparam \Data_id_ex/q_97 .INIT = 1'b0;
  FDR \Data_id_ex/q_97  (
    .C(clk_BUFGP_0),
    .D(\if_id/q[7] ),
    .R(_or0001),
    .Q(\Data_id_ex/q[97] )
  );
  defparam \Data_id_ex/q_96 .INIT = 1'b0;
  FDR \Data_id_ex/q_96  (
    .C(clk_BUFGP_0),
    .D(\if_id/q[6] ),
    .R(_or0001),
    .Q(\Data_id_ex/q[96] )
  );
  defparam \Data_id_ex/q_67 .INIT = 1'b0;
  FDR \Data_id_ex/q_67  (
    .C(clk_BUFGP_0),
    .D(\if_id/q[3] ),
    .R(_or0001),
    .Q(\Data_id_ex/q[67] )
  );
  defparam \Data_id_ex/q_66 .INIT = 1'b0;
  FDR \Data_id_ex/q_66  (
    .C(clk_BUFGP_0),
    .D(\if_id/q[2] ),
    .R(_or0001),
    .Q(\Data_id_ex/q[66] )
  );
  defparam \Data_id_ex/q_65 .INIT = 1'b0;
  FDR \Data_id_ex/q_65  (
    .C(clk_BUFGP_0),
    .D(\if_id/q[1] ),
    .R(_or0001),
    .Q(\Data_id_ex/q[65] )
  );
  defparam \Data_id_ex/q_64 .INIT = 1'b0;
  FDR \Data_id_ex/q_64  (
    .C(clk_BUFGP_0),
    .D(\if_id/q[0] ),
    .R(_or0001),
    .Q(\Data_id_ex/q[64] )
  );
  defparam \Data_id_ex/q_63 .INIT = 1'b0;
  FDR \Data_id_ex/q_63  (
    .C(clk_BUFGP_0),
    .D(JrAddr[31]),
    .R(_or0001),
    .Q(\Data_id_ex/q[63] )
  );
  defparam \Data_id_ex/q_62 .INIT = 1'b0;
  FDR \Data_id_ex/q_62  (
    .C(clk_BUFGP_0),
    .D(JrAddr[30]),
    .R(_or0001),
    .Q(\Data_id_ex/q[62] )
  );
  defparam \Data_id_ex/q_61 .INIT = 1'b0;
  FDR \Data_id_ex/q_61  (
    .C(clk_BUFGP_0),
    .D(JrAddr[29]),
    .R(_or0001),
    .Q(\Data_id_ex/q[61] )
  );
  defparam \Data_id_ex/q_60 .INIT = 1'b0;
  FDR \Data_id_ex/q_60  (
    .C(clk_BUFGP_0),
    .D(JrAddr[28]),
    .R(_or0001),
    .Q(\Data_id_ex/q[60] )
  );
  defparam \Data_id_ex/q_59 .INIT = 1'b0;
  FDR \Data_id_ex/q_59  (
    .C(clk_BUFGP_0),
    .D(JrAddr[27]),
    .R(_or0001),
    .Q(\Data_id_ex/q[59] )
  );
  defparam \Data_id_ex/q_58 .INIT = 1'b0;
  FDR \Data_id_ex/q_58  (
    .C(clk_BUFGP_0),
    .D(JrAddr[26]),
    .R(_or0001),
    .Q(\Data_id_ex/q[58] )
  );
  defparam \Data_id_ex/q_57 .INIT = 1'b0;
  FDR \Data_id_ex/q_57  (
    .C(clk_BUFGP_0),
    .D(JrAddr[25]),
    .R(_or0001),
    .Q(\Data_id_ex/q[57] )
  );
  defparam \Data_id_ex/q_56 .INIT = 1'b0;
  FDR \Data_id_ex/q_56  (
    .C(clk_BUFGP_0),
    .D(JrAddr[24]),
    .R(_or0001),
    .Q(\Data_id_ex/q[56] )
  );
  defparam \Data_id_ex/q_55 .INIT = 1'b0;
  FDR \Data_id_ex/q_55  (
    .C(clk_BUFGP_0),
    .D(JrAddr[23]),
    .R(_or0001),
    .Q(\Data_id_ex/q[55] )
  );
  defparam \Data_id_ex/q_54 .INIT = 1'b0;
  FDR \Data_id_ex/q_54  (
    .C(clk_BUFGP_0),
    .D(JrAddr[22]),
    .R(_or0001),
    .Q(\Data_id_ex/q[54] )
  );
  defparam \Data_id_ex/q_53 .INIT = 1'b0;
  FDR \Data_id_ex/q_53  (
    .C(clk_BUFGP_0),
    .D(JrAddr[21]),
    .R(_or0001),
    .Q(\Data_id_ex/q[53] )
  );
  defparam \Data_id_ex/q_52 .INIT = 1'b0;
  FDR \Data_id_ex/q_52  (
    .C(clk_BUFGP_0),
    .D(JrAddr[20]),
    .R(_or0001),
    .Q(\Data_id_ex/q[52] )
  );
  defparam \Data_id_ex/q_51 .INIT = 1'b0;
  FDR \Data_id_ex/q_51  (
    .C(clk_BUFGP_0),
    .D(JrAddr[19]),
    .R(_or0001),
    .Q(\Data_id_ex/q[51] )
  );
  defparam \Data_id_ex/q_50 .INIT = 1'b0;
  FDR \Data_id_ex/q_50  (
    .C(clk_BUFGP_0),
    .D(JrAddr[18]),
    .R(_or0001),
    .Q(\Data_id_ex/q[50] )
  );
  defparam \Data_id_ex/q_49 .INIT = 1'b0;
  FDR \Data_id_ex/q_49  (
    .C(clk_BUFGP_0),
    .D(JrAddr[17]),
    .R(_or0001),
    .Q(\Data_id_ex/q[49] )
  );
  defparam \Data_id_ex/q_48 .INIT = 1'b0;
  FDR \Data_id_ex/q_48  (
    .C(clk_BUFGP_0),
    .D(JrAddr[16]),
    .R(_or0001),
    .Q(\Data_id_ex/q[48] )
  );
  defparam \Data_id_ex/q_47 .INIT = 1'b0;
  FDR \Data_id_ex/q_47  (
    .C(clk_BUFGP_0),
    .D(JrAddr[15]),
    .R(_or0001),
    .Q(\Data_id_ex/q[47] )
  );
  defparam \Data_id_ex/q_46 .INIT = 1'b0;
  FDR \Data_id_ex/q_46  (
    .C(clk_BUFGP_0),
    .D(JrAddr[14]),
    .R(_or0001),
    .Q(\Data_id_ex/q[46] )
  );
  defparam \Data_id_ex/q_45 .INIT = 1'b0;
  FDR \Data_id_ex/q_45  (
    .C(clk_BUFGP_0),
    .D(JrAddr[13]),
    .R(_or0001),
    .Q(\Data_id_ex/q[45] )
  );
  defparam \Data_id_ex/q_44 .INIT = 1'b0;
  FDR \Data_id_ex/q_44  (
    .C(clk_BUFGP_0),
    .D(JrAddr[12]),
    .R(_or0001),
    .Q(\Data_id_ex/q[44] )
  );
  defparam \Data_id_ex/q_43 .INIT = 1'b0;
  FDR \Data_id_ex/q_43  (
    .C(clk_BUFGP_0),
    .D(JrAddr[11]),
    .R(_or0001),
    .Q(\Data_id_ex/q[43] )
  );
  defparam \Data_id_ex/q_42 .INIT = 1'b0;
  FDR \Data_id_ex/q_42  (
    .C(clk_BUFGP_0),
    .D(JrAddr[10]),
    .R(_or0001),
    .Q(\Data_id_ex/q[42] )
  );
  defparam \Data_id_ex/q_41 .INIT = 1'b0;
  FDR \Data_id_ex/q_41  (
    .C(clk_BUFGP_0),
    .D(JrAddr[9]),
    .R(_or0001),
    .Q(\Data_id_ex/q[41] )
  );
  defparam \Data_id_ex/q_40 .INIT = 1'b0;
  FDR \Data_id_ex/q_40  (
    .C(clk_BUFGP_0),
    .D(JrAddr[8]),
    .R(_or0001),
    .Q(\Data_id_ex/q[40] )
  );
  defparam \Data_id_ex/q_39 .INIT = 1'b0;
  FDR \Data_id_ex/q_39  (
    .C(clk_BUFGP_0),
    .D(JrAddr[7]),
    .R(_or0001),
    .Q(\Data_id_ex/q[39] )
  );
  defparam \Data_id_ex/q_38 .INIT = 1'b0;
  FDR \Data_id_ex/q_38  (
    .C(clk_BUFGP_0),
    .D(JrAddr[6]),
    .R(_or0001),
    .Q(\Data_id_ex/q[38] )
  );
  defparam \Data_id_ex/q_37 .INIT = 1'b0;
  FDR \Data_id_ex/q_37  (
    .C(clk_BUFGP_0),
    .D(JrAddr[5]),
    .R(_or0001),
    .Q(\Data_id_ex/q[37] )
  );
  defparam \Data_id_ex/q_36 .INIT = 1'b0;
  FDR \Data_id_ex/q_36  (
    .C(clk_BUFGP_0),
    .D(JrAddr[4]),
    .R(_or0001),
    .Q(\Data_id_ex/q[36] )
  );
  defparam \Data_id_ex/q_35 .INIT = 1'b0;
  FDR \Data_id_ex/q_35  (
    .C(clk_BUFGP_0),
    .D(JrAddr[3]),
    .R(_or0001),
    .Q(\Data_id_ex/q[35] )
  );
  defparam \Data_id_ex/q_34 .INIT = 1'b0;
  FDR \Data_id_ex/q_34  (
    .C(clk_BUFGP_0),
    .D(JrAddr[2]),
    .R(_or0001),
    .Q(\Data_id_ex/q[34] )
  );
  defparam \Data_id_ex/q_33 .INIT = 1'b0;
  FDR \Data_id_ex/q_33  (
    .C(clk_BUFGP_0),
    .D(JrAddr[1]),
    .R(_or0001),
    .Q(\Data_id_ex/q[33] )
  );
  defparam \Data_id_ex/q_32 .INIT = 1'b0;
  FDR \Data_id_ex/q_32  (
    .C(clk_BUFGP_0),
    .D(JrAddr[0]),
    .R(_or0001),
    .Q(\Data_id_ex/q[32] )
  );
  defparam \Data_id_ex/q_31 .INIT = 1'b0;
  FDR \Data_id_ex/q_31  (
    .C(clk_BUFGP_0),
    .D(RtData_id[31]),
    .R(_or0001),
    .Q(\Data_id_ex/q[31] )
  );
  defparam \Data_id_ex/q_30 .INIT = 1'b0;
  FDR \Data_id_ex/q_30  (
    .C(clk_BUFGP_0),
    .D(RtData_id[30]),
    .R(_or0001),
    .Q(\Data_id_ex/q[30] )
  );
  defparam \Data_id_ex/q_29 .INIT = 1'b0;
  FDR \Data_id_ex/q_29  (
    .C(clk_BUFGP_0),
    .D(RtData_id[29]),
    .R(_or0001),
    .Q(\Data_id_ex/q[29] )
  );
  defparam \Data_id_ex/q_28 .INIT = 1'b0;
  FDR \Data_id_ex/q_28  (
    .C(clk_BUFGP_0),
    .D(RtData_id[28]),
    .R(_or0001),
    .Q(\Data_id_ex/q[28] )
  );
  defparam \Data_id_ex/q_27 .INIT = 1'b0;
  FDR \Data_id_ex/q_27  (
    .C(clk_BUFGP_0),
    .D(RtData_id[27]),
    .R(_or0001),
    .Q(\Data_id_ex/q[27] )
  );
  defparam \Data_id_ex/q_26 .INIT = 1'b0;
  FDR \Data_id_ex/q_26  (
    .C(clk_BUFGP_0),
    .D(RtData_id[26]),
    .R(_or0001),
    .Q(\Data_id_ex/q[26] )
  );
  defparam \Data_id_ex/q_25 .INIT = 1'b0;
  FDR \Data_id_ex/q_25  (
    .C(clk_BUFGP_0),
    .D(RtData_id[25]),
    .R(_or0001),
    .Q(\Data_id_ex/q[25] )
  );
  defparam \Data_id_ex/q_24 .INIT = 1'b0;
  FDR \Data_id_ex/q_24  (
    .C(clk_BUFGP_0),
    .D(RtData_id[24]),
    .R(_or0001),
    .Q(\Data_id_ex/q[24] )
  );
  defparam \Data_id_ex/q_23 .INIT = 1'b0;
  FDR \Data_id_ex/q_23  (
    .C(clk_BUFGP_0),
    .D(RtData_id[23]),
    .R(_or0001),
    .Q(\Data_id_ex/q[23] )
  );
  defparam \Data_id_ex/q_22 .INIT = 1'b0;
  FDR \Data_id_ex/q_22  (
    .C(clk_BUFGP_0),
    .D(RtData_id[22]),
    .R(_or0001),
    .Q(\Data_id_ex/q[22] )
  );
  defparam \Data_id_ex/q_21 .INIT = 1'b0;
  FDR \Data_id_ex/q_21  (
    .C(clk_BUFGP_0),
    .D(RtData_id[21]),
    .R(_or0001),
    .Q(\Data_id_ex/q[21] )
  );
  defparam \Data_id_ex/q_20 .INIT = 1'b0;
  FDR \Data_id_ex/q_20  (
    .C(clk_BUFGP_0),
    .D(RtData_id[20]),
    .R(_or0001),
    .Q(\Data_id_ex/q[20] )
  );
  defparam \Data_id_ex/q_19 .INIT = 1'b0;
  FDR \Data_id_ex/q_19  (
    .C(clk_BUFGP_0),
    .D(RtData_id[19]),
    .R(_or0001),
    .Q(\Data_id_ex/q[19] )
  );
  defparam \Data_id_ex/q_18 .INIT = 1'b0;
  FDR \Data_id_ex/q_18  (
    .C(clk_BUFGP_0),
    .D(RtData_id[18]),
    .R(_or0001),
    .Q(\Data_id_ex/q[18] )
  );
  defparam \Data_id_ex/q_17 .INIT = 1'b0;
  FDR \Data_id_ex/q_17  (
    .C(clk_BUFGP_0),
    .D(RtData_id[17]),
    .R(_or0001),
    .Q(\Data_id_ex/q[17] )
  );
  defparam \Data_id_ex/q_16 .INIT = 1'b0;
  FDR \Data_id_ex/q_16  (
    .C(clk_BUFGP_0),
    .D(RtData_id[16]),
    .R(_or0001),
    .Q(\Data_id_ex/q[16] )
  );
  defparam \Data_id_ex/q_15 .INIT = 1'b0;
  FDR \Data_id_ex/q_15  (
    .C(clk_BUFGP_0),
    .D(RtData_id[15]),
    .R(_or0001),
    .Q(\Data_id_ex/q[15] )
  );
  defparam \Data_id_ex/q_14 .INIT = 1'b0;
  FDR \Data_id_ex/q_14  (
    .C(clk_BUFGP_0),
    .D(RtData_id[14]),
    .R(_or0001),
    .Q(\Data_id_ex/q[14] )
  );
  defparam \Data_id_ex/q_13 .INIT = 1'b0;
  FDR \Data_id_ex/q_13  (
    .C(clk_BUFGP_0),
    .D(RtData_id[13]),
    .R(_or0001),
    .Q(\Data_id_ex/q[13] )
  );
  defparam \Data_id_ex/q_12 .INIT = 1'b0;
  FDR \Data_id_ex/q_12  (
    .C(clk_BUFGP_0),
    .D(RtData_id[12]),
    .R(_or0001),
    .Q(\Data_id_ex/q[12] )
  );
  defparam \Data_id_ex/q_11 .INIT = 1'b0;
  FDR \Data_id_ex/q_11  (
    .C(clk_BUFGP_0),
    .D(RtData_id[11]),
    .R(_or0001),
    .Q(\Data_id_ex/q[11] )
  );
  defparam \Data_id_ex/q_10 .INIT = 1'b0;
  FDR \Data_id_ex/q_10  (
    .C(clk_BUFGP_0),
    .D(RtData_id[10]),
    .R(_or0001),
    .Q(\Data_id_ex/q[10] )
  );
  defparam \Data_id_ex/q_9 .INIT = 1'b0;
  FDR \Data_id_ex/q_9  (
    .C(clk_BUFGP_0),
    .D(RtData_id[9]),
    .R(_or0001),
    .Q(\Data_id_ex/q[9] )
  );
  defparam \Data_id_ex/q_8 .INIT = 1'b0;
  FDR \Data_id_ex/q_8  (
    .C(clk_BUFGP_0),
    .D(RtData_id[8]),
    .R(_or0001),
    .Q(\Data_id_ex/q[8] )
  );
  defparam \Data_id_ex/q_7 .INIT = 1'b0;
  FDR \Data_id_ex/q_7  (
    .C(clk_BUFGP_0),
    .D(RtData_id[7]),
    .R(_or0001),
    .Q(\Data_id_ex/q[7] )
  );
  defparam \Data_id_ex/q_6 .INIT = 1'b0;
  FDR \Data_id_ex/q_6  (
    .C(clk_BUFGP_0),
    .D(RtData_id[6]),
    .R(_or0001),
    .Q(\Data_id_ex/q[6] )
  );
  defparam \Data_id_ex/q_5 .INIT = 1'b0;
  FDR \Data_id_ex/q_5  (
    .C(clk_BUFGP_0),
    .D(RtData_id[5]),
    .R(_or0001),
    .Q(\Data_id_ex/q[5] )
  );
  defparam \Data_id_ex/q_4 .INIT = 1'b0;
  FDR \Data_id_ex/q_4  (
    .C(clk_BUFGP_0),
    .D(RtData_id[4]),
    .R(_or0001),
    .Q(\Data_id_ex/q[4] )
  );
  defparam \Data_id_ex/q_3 .INIT = 1'b0;
  FDR \Data_id_ex/q_3  (
    .C(clk_BUFGP_0),
    .D(RtData_id[3]),
    .R(_or0001),
    .Q(\Data_id_ex/q[3] )
  );
  defparam \Data_id_ex/q_2 .INIT = 1'b0;
  FDR \Data_id_ex/q_2  (
    .C(clk_BUFGP_0),
    .D(RtData_id[2]),
    .R(_or0001),
    .Q(\Data_id_ex/q[2] )
  );
  defparam \Data_id_ex/q_1 .INIT = 1'b0;
  FDR \Data_id_ex/q_1  (
    .C(clk_BUFGP_0),
    .D(RtData_id[1]),
    .R(_or0001),
    .Q(\Data_id_ex/q[1] )
  );
  defparam \Data_id_ex/q_0 .INIT = 1'b0;
  FDR \Data_id_ex/q_0  (
    .C(clk_BUFGP_0),
    .D(RtData_id[0]),
    .R(_or0001),
    .Q(\Data_id_ex/q[0] )
  );
  defparam \Data_ex_mem/q_68 .INIT = 1'b0;
  FDR \Data_ex_mem/q_68  (
    .C(clk_BUFGP_0),
    .D(ALUResult_31_OBUF_100),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [68])
  );
  defparam \Data_ex_mem/q_67 .INIT = 1'b0;
  FDR \Data_ex_mem/q_67  (
    .C(clk_BUFGP_0),
    .D(ALUResult_30_OBUF_101),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [67])
  );
  defparam \Data_ex_mem/q_66 .INIT = 1'b0;
  FDR \Data_ex_mem/q_66  (
    .C(clk_BUFGP_0),
    .D(ALUResult_29_OBUF_102),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [66])
  );
  defparam \Data_ex_mem/q_65 .INIT = 1'b0;
  FDR \Data_ex_mem/q_65  (
    .C(clk_BUFGP_0),
    .D(ALUResult_28_OBUF_103),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [65])
  );
  defparam \Data_ex_mem/q_64 .INIT = 1'b0;
  FDR \Data_ex_mem/q_64  (
    .C(clk_BUFGP_0),
    .D(ALUResult_27_OBUF_104),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [64])
  );
  defparam \Data_ex_mem/q_63 .INIT = 1'b0;
  FDR \Data_ex_mem/q_63  (
    .C(clk_BUFGP_0),
    .D(ALUResult_26_OBUF_105),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [63])
  );
  defparam \Data_ex_mem/q_62 .INIT = 1'b0;
  FDR \Data_ex_mem/q_62  (
    .C(clk_BUFGP_0),
    .D(ALUResult_25_OBUF_106),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [62])
  );
  defparam \Data_ex_mem/q_61 .INIT = 1'b0;
  FDR \Data_ex_mem/q_61  (
    .C(clk_BUFGP_0),
    .D(ALUResult_24_OBUF_107),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [61])
  );
  defparam \Data_ex_mem/q_60 .INIT = 1'b0;
  FDR \Data_ex_mem/q_60  (
    .C(clk_BUFGP_0),
    .D(ALUResult_23_OBUF_108),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [60])
  );
  defparam \Data_ex_mem/q_59 .INIT = 1'b0;
  FDR \Data_ex_mem/q_59  (
    .C(clk_BUFGP_0),
    .D(ALUResult_22_OBUF_109),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [59])
  );
  defparam \Data_ex_mem/q_58 .INIT = 1'b0;
  FDR \Data_ex_mem/q_58  (
    .C(clk_BUFGP_0),
    .D(ALUResult_21_OBUF_110),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [58])
  );
  defparam \Data_ex_mem/q_57 .INIT = 1'b0;
  FDR \Data_ex_mem/q_57  (
    .C(clk_BUFGP_0),
    .D(ALUResult_20_OBUF_111),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [57])
  );
  defparam \Data_ex_mem/q_56 .INIT = 1'b0;
  FDR \Data_ex_mem/q_56  (
    .C(clk_BUFGP_0),
    .D(ALUResult_19_OBUF_112),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [56])
  );
  defparam \Data_ex_mem/q_55 .INIT = 1'b0;
  FDR \Data_ex_mem/q_55  (
    .C(clk_BUFGP_0),
    .D(ALUResult_18_OBUF_113),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [55])
  );
  defparam \Data_ex_mem/q_54 .INIT = 1'b0;
  FDR \Data_ex_mem/q_54  (
    .C(clk_BUFGP_0),
    .D(ALUResult_17_OBUF_114),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [54])
  );
  defparam \Data_ex_mem/q_53 .INIT = 1'b0;
  FDR \Data_ex_mem/q_53  (
    .C(clk_BUFGP_0),
    .D(ALUResult_16_OBUF_115),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [53])
  );
  defparam \Data_ex_mem/q_52 .INIT = 1'b0;
  FDR \Data_ex_mem/q_52  (
    .C(clk_BUFGP_0),
    .D(ALUResult_15_OBUF_116),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [52])
  );
  defparam \Data_ex_mem/q_51 .INIT = 1'b0;
  FDR \Data_ex_mem/q_51  (
    .C(clk_BUFGP_0),
    .D(ALUResult_14_OBUF_117),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [51])
  );
  defparam \Data_ex_mem/q_50 .INIT = 1'b0;
  FDR \Data_ex_mem/q_50  (
    .C(clk_BUFGP_0),
    .D(ALUResult_13_OBUF_118),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [50])
  );
  defparam \Data_ex_mem/q_49 .INIT = 1'b0;
  FDR \Data_ex_mem/q_49  (
    .C(clk_BUFGP_0),
    .D(ALUResult_12_OBUF_119),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [49])
  );
  defparam \Data_ex_mem/q_48 .INIT = 1'b0;
  FDR \Data_ex_mem/q_48  (
    .C(clk_BUFGP_0),
    .D(ALUResult_11_OBUF_120),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [48])
  );
  defparam \Data_ex_mem/q_47 .INIT = 1'b0;
  FDR \Data_ex_mem/q_47  (
    .C(clk_BUFGP_0),
    .D(ALUResult_10_OBUF_121),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [47])
  );
  defparam \Data_ex_mem/q_46 .INIT = 1'b0;
  FDR \Data_ex_mem/q_46  (
    .C(clk_BUFGP_0),
    .D(ALUResult_9_OBUF_122),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [46])
  );
  defparam \Data_ex_mem/q_45 .INIT = 1'b0;
  FDR \Data_ex_mem/q_45  (
    .C(clk_BUFGP_0),
    .D(ALUResult_8_OBUF_123),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [45])
  );
  defparam \Data_ex_mem/q_44 .INIT = 1'b0;
  FDR \Data_ex_mem/q_44  (
    .C(clk_BUFGP_0),
    .D(ALUResult_7_OBUF_124),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [44])
  );
  defparam \Data_ex_mem/q_43 .INIT = 1'b0;
  FDR \Data_ex_mem/q_43  (
    .C(clk_BUFGP_0),
    .D(ALUResult_6_OBUF_125),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [43])
  );
  defparam \Data_ex_mem/q_42 .INIT = 1'b0;
  FDR \Data_ex_mem/q_42  (
    .C(clk_BUFGP_0),
    .D(ALUResult_5_OBUF_126),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [42])
  );
  defparam \Data_ex_mem/q_41 .INIT = 1'b0;
  FDR \Data_ex_mem/q_41  (
    .C(clk_BUFGP_0),
    .D(ALUResult_4_OBUF_127),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [41])
  );
  defparam \Data_ex_mem/q_40 .INIT = 1'b0;
  FDR \Data_ex_mem/q_40  (
    .C(clk_BUFGP_0),
    .D(ALUResult_3_OBUF_128),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [40])
  );
  defparam \Data_ex_mem/q_39 .INIT = 1'b0;
  FDR \Data_ex_mem/q_39  (
    .C(clk_BUFGP_0),
    .D(ALUResult_2_OBUF_129),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [39])
  );
  defparam \Data_ex_mem/q_38 .INIT = 1'b0;
  FDR \Data_ex_mem/q_38  (
    .C(clk_BUFGP_0),
    .D(ALUResult_1_OBUF_130),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [38])
  );
  defparam \Data_ex_mem/q_37 .INIT = 1'b0;
  FDR \Data_ex_mem/q_37  (
    .C(clk_BUFGP_0),
    .D(ALUResult_0_OBUF_131),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [37])
  );
  defparam \Data_ex_mem/q_36 .INIT = 1'b0;
  FDR \Data_ex_mem/q_36  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[31]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [36])
  );
  defparam \Data_ex_mem/q_35 .INIT = 1'b0;
  FDR \Data_ex_mem/q_35  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[30]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [35])
  );
  defparam \Data_ex_mem/q_34 .INIT = 1'b0;
  FDR \Data_ex_mem/q_34  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[29]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [34])
  );
  defparam \Data_ex_mem/q_33 .INIT = 1'b0;
  FDR \Data_ex_mem/q_33  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[28]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [33])
  );
  defparam \Data_ex_mem/q_32 .INIT = 1'b0;
  FDR \Data_ex_mem/q_32  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[27]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [32])
  );
  defparam \Data_ex_mem/q_31 .INIT = 1'b0;
  FDR \Data_ex_mem/q_31  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[26]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [31])
  );
  defparam \Data_ex_mem/q_30 .INIT = 1'b0;
  FDR \Data_ex_mem/q_30  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[25]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [30])
  );
  defparam \Data_ex_mem/q_29 .INIT = 1'b0;
  FDR \Data_ex_mem/q_29  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[24]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [29])
  );
  defparam \Data_ex_mem/q_28 .INIT = 1'b0;
  FDR \Data_ex_mem/q_28  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[23]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [28])
  );
  defparam \Data_ex_mem/q_27 .INIT = 1'b0;
  FDR \Data_ex_mem/q_27  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[22]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [27])
  );
  defparam \Data_ex_mem/q_26 .INIT = 1'b0;
  FDR \Data_ex_mem/q_26  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[21]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [26])
  );
  defparam \Data_ex_mem/q_25 .INIT = 1'b0;
  FDR \Data_ex_mem/q_25  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[20]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [25])
  );
  defparam \Data_ex_mem/q_24 .INIT = 1'b0;
  FDR \Data_ex_mem/q_24  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[19]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [24])
  );
  defparam \Data_ex_mem/q_23 .INIT = 1'b0;
  FDR \Data_ex_mem/q_23  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[18]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [23])
  );
  defparam \Data_ex_mem/q_22 .INIT = 1'b0;
  FDR \Data_ex_mem/q_22  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[17]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [22])
  );
  defparam \Data_ex_mem/q_21 .INIT = 1'b0;
  FDR \Data_ex_mem/q_21  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[16]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [21])
  );
  defparam \Data_ex_mem/q_20 .INIT = 1'b0;
  FDR \Data_ex_mem/q_20  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[15]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [20])
  );
  defparam \Data_ex_mem/q_19 .INIT = 1'b0;
  FDR \Data_ex_mem/q_19  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[14]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [19])
  );
  defparam \Data_ex_mem/q_18 .INIT = 1'b0;
  FDR \Data_ex_mem/q_18  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[13]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [18])
  );
  defparam \Data_ex_mem/q_17 .INIT = 1'b0;
  FDR \Data_ex_mem/q_17  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[12]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [17])
  );
  defparam \Data_ex_mem/q_16 .INIT = 1'b0;
  FDR \Data_ex_mem/q_16  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[11]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [16])
  );
  defparam \Data_ex_mem/q_15 .INIT = 1'b0;
  FDR \Data_ex_mem/q_15  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[10]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [15])
  );
  defparam \Data_ex_mem/q_14 .INIT = 1'b0;
  FDR \Data_ex_mem/q_14  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[9]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [14])
  );
  defparam \Data_ex_mem/q_13 .INIT = 1'b0;
  FDR \Data_ex_mem/q_13  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[8]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [13])
  );
  defparam \Data_ex_mem/q_12 .INIT = 1'b0;
  FDR \Data_ex_mem/q_12  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[7]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [12])
  );
  defparam \Data_ex_mem/q_11 .INIT = 1'b0;
  FDR \Data_ex_mem/q_11  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[6]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [11])
  );
  defparam \Data_ex_mem/q_10 .INIT = 1'b0;
  FDR \Data_ex_mem/q_10  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[5]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [10])
  );
  defparam \Data_ex_mem/q_9 .INIT = 1'b0;
  FDR \Data_ex_mem/q_9  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[4]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [9])
  );
  defparam \Data_ex_mem/q_8 .INIT = 1'b0;
  FDR \Data_ex_mem/q_8  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[3]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [8])
  );
  defparam \Data_ex_mem/q_7 .INIT = 1'b0;
  FDR \Data_ex_mem/q_7  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[2]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [7])
  );
  defparam \Data_ex_mem/q_6 .INIT = 1'b0;
  FDR \Data_ex_mem/q_6  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[1]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [6])
  );
  defparam \Data_ex_mem/q_5 .INIT = 1'b0;
  FDR \Data_ex_mem/q_5  (
    .C(clk_BUFGP_0),
    .D(MemWriteData_ex[0]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [5])
  );
  defparam \Data_ex_mem/q_4 .INIT = 1'b0;
  FDR \Data_ex_mem/q_4  (
    .C(clk_BUFGP_0),
    .D(RegWriteAddr_ex[4]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [4])
  );
  defparam \Data_ex_mem/q_3 .INIT = 1'b0;
  FDR \Data_ex_mem/q_3  (
    .C(clk_BUFGP_0),
    .D(RegWriteAddr_ex[3]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [3])
  );
  defparam \Data_ex_mem/q_2 .INIT = 1'b0;
  FDR \Data_ex_mem/q_2  (
    .C(clk_BUFGP_0),
    .D(RegWriteAddr_ex[2]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [2])
  );
  defparam \Data_ex_mem/q_1 .INIT = 1'b0;
  FDR \Data_ex_mem/q_1  (
    .C(clk_BUFGP_0),
    .D(RegWriteAddr_ex[1]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [1])
  );
  defparam \Data_ex_mem/q_0 .INIT = 1'b0;
  FDR \Data_ex_mem/q_0  (
    .C(clk_BUFGP_0),
    .D(RegWriteAddr_ex[0]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q [0])
  );
  defparam \Data_mem_wb/q_31 .INIT = 1'b0;
  FDR \Data_mem_wb/q_31  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [68]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [31])
  );
  defparam \Data_mem_wb/q_30 .INIT = 1'b0;
  FDR \Data_mem_wb/q_30  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [67]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [30])
  );
  defparam \Data_mem_wb/q_29 .INIT = 1'b0;
  FDR \Data_mem_wb/q_29  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [66]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [29])
  );
  defparam \Data_mem_wb/q_28 .INIT = 1'b0;
  FDR \Data_mem_wb/q_28  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [65]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [28])
  );
  defparam \Data_mem_wb/q_27 .INIT = 1'b0;
  FDR \Data_mem_wb/q_27  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [64]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [27])
  );
  defparam \Data_mem_wb/q_26 .INIT = 1'b0;
  FDR \Data_mem_wb/q_26  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [63]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [26])
  );
  defparam \Data_mem_wb/q_25 .INIT = 1'b0;
  FDR \Data_mem_wb/q_25  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [62]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [25])
  );
  defparam \Data_mem_wb/q_24 .INIT = 1'b0;
  FDR \Data_mem_wb/q_24  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [61]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [24])
  );
  defparam \Data_mem_wb/q_23 .INIT = 1'b0;
  FDR \Data_mem_wb/q_23  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [60]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [23])
  );
  defparam \Data_mem_wb/q_22 .INIT = 1'b0;
  FDR \Data_mem_wb/q_22  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [59]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [22])
  );
  defparam \Data_mem_wb/q_21 .INIT = 1'b0;
  FDR \Data_mem_wb/q_21  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [58]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [21])
  );
  defparam \Data_mem_wb/q_20 .INIT = 1'b0;
  FDR \Data_mem_wb/q_20  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [57]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [20])
  );
  defparam \Data_mem_wb/q_19 .INIT = 1'b0;
  FDR \Data_mem_wb/q_19  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [56]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [19])
  );
  defparam \Data_mem_wb/q_18 .INIT = 1'b0;
  FDR \Data_mem_wb/q_18  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [55]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [18])
  );
  defparam \Data_mem_wb/q_17 .INIT = 1'b0;
  FDR \Data_mem_wb/q_17  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [54]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [17])
  );
  defparam \Data_mem_wb/q_16 .INIT = 1'b0;
  FDR \Data_mem_wb/q_16  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [53]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [16])
  );
  defparam \Data_mem_wb/q_15 .INIT = 1'b0;
  FDR \Data_mem_wb/q_15  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [52]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [15])
  );
  defparam \Data_mem_wb/q_14 .INIT = 1'b0;
  FDR \Data_mem_wb/q_14  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [51]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [14])
  );
  defparam \Data_mem_wb/q_13 .INIT = 1'b0;
  FDR \Data_mem_wb/q_13  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [50]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [13])
  );
  defparam \Data_mem_wb/q_12 .INIT = 1'b0;
  FDR \Data_mem_wb/q_12  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [49]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [12])
  );
  defparam \Data_mem_wb/q_11 .INIT = 1'b0;
  FDR \Data_mem_wb/q_11  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [48]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [11])
  );
  defparam \Data_mem_wb/q_10 .INIT = 1'b0;
  FDR \Data_mem_wb/q_10  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [47]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [10])
  );
  defparam \Data_mem_wb/q_9 .INIT = 1'b0;
  FDR \Data_mem_wb/q_9  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [46]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [9])
  );
  defparam \Data_mem_wb/q_8 .INIT = 1'b0;
  FDR \Data_mem_wb/q_8  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [45]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [8])
  );
  defparam \Data_mem_wb/q_7 .INIT = 1'b0;
  FDR \Data_mem_wb/q_7  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [44]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [7])
  );
  defparam \Data_mem_wb/q_6 .INIT = 1'b0;
  FDR \Data_mem_wb/q_6  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [43]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [6])
  );
  defparam \Data_mem_wb/q_5 .INIT = 1'b0;
  FDR \Data_mem_wb/q_5  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [42]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [5])
  );
  defparam \Data_mem_wb/q_4 .INIT = 1'b0;
  FDR \Data_mem_wb/q_4  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [41]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [4])
  );
  defparam \Data_mem_wb/q_3 .INIT = 1'b0;
  FDR \Data_mem_wb/q_3  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [40]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [3])
  );
  defparam \Data_mem_wb/q_2 .INIT = 1'b0;
  FDR \Data_mem_wb/q_2  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [39]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [2])
  );
  defparam \Data_mem_wb/q_1 .INIT = 1'b0;
  FDR \Data_mem_wb/q_1  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [38]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [1])
  );
  defparam \Data_mem_wb/q_0 .INIT = 1'b0;
  FDR \Data_mem_wb/q_0  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [37]),
    .R(reset_IBUF_1),
    .Q(\Data_mem_wb/q [0])
  );
  defparam \IF/PC_31 .INIT = 1'b0;
  FDRE \IF/PC_31  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [31]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [31])
  );
  defparam \IF/PC_30 .INIT = 1'b0;
  FDRE \IF/PC_30  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [30]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [30])
  );
  defparam \IF/PC_29 .INIT = 1'b0;
  FDRE \IF/PC_29  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [29]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [29])
  );
  defparam \IF/PC_28 .INIT = 1'b0;
  FDRE \IF/PC_28  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [28]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [28])
  );
  defparam \IF/PC_27 .INIT = 1'b0;
  FDRE \IF/PC_27  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [27]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [27])
  );
  defparam \IF/PC_26 .INIT = 1'b0;
  FDRE \IF/PC_26  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [26]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [26])
  );
  defparam \IF/PC_25 .INIT = 1'b0;
  FDRE \IF/PC_25  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [25]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [25])
  );
  defparam \IF/PC_24 .INIT = 1'b0;
  FDRE \IF/PC_24  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [24]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [24])
  );
  defparam \IF/PC_23 .INIT = 1'b0;
  FDRE \IF/PC_23  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [23]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [23])
  );
  defparam \IF/PC_22 .INIT = 1'b0;
  FDRE \IF/PC_22  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [22]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [22])
  );
  defparam \IF/PC_21 .INIT = 1'b0;
  FDRE \IF/PC_21  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [21]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [21])
  );
  defparam \IF/PC_20 .INIT = 1'b0;
  FDRE \IF/PC_20  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [20]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [20])
  );
  defparam \IF/PC_19 .INIT = 1'b0;
  FDRE \IF/PC_19  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [19]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [19])
  );
  defparam \IF/PC_18 .INIT = 1'b0;
  FDRE \IF/PC_18  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [18]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [18])
  );
  defparam \IF/PC_17 .INIT = 1'b0;
  FDRE \IF/PC_17  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [17]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [17])
  );
  defparam \IF/PC_16 .INIT = 1'b0;
  FDRE \IF/PC_16  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [16]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [16])
  );
  defparam \IF/PC_15 .INIT = 1'b0;
  FDRE \IF/PC_15  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [15]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [15])
  );
  defparam \IF/PC_14 .INIT = 1'b0;
  FDRE \IF/PC_14  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [14]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [14])
  );
  defparam \IF/PC_13 .INIT = 1'b0;
  FDRE \IF/PC_13  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [13]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [13])
  );
  defparam \IF/PC_12 .INIT = 1'b0;
  FDRE \IF/PC_12  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [12]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [12])
  );
  defparam \IF/PC_11 .INIT = 1'b0;
  FDRE \IF/PC_11  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [11]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [11])
  );
  defparam \IF/PC_10 .INIT = 1'b0;
  FDRE \IF/PC_10  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [10]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [10])
  );
  defparam \IF/PC_9 .INIT = 1'b0;
  FDRE \IF/PC_9  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [9]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [9])
  );
  defparam \IF/PC_8 .INIT = 1'b0;
  FDRE \IF/PC_8  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [8]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [8])
  );
  defparam \IF/PC_7 .INIT = 1'b0;
  FDRE \IF/PC_7  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [7]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [7])
  );
  defparam \IF/PC_6 .INIT = 1'b0;
  FDRE \IF/PC_6  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [6]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [6])
  );
  defparam \IF/PC_5 .INIT = 1'b0;
  FDRE \IF/PC_5  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [5]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [5])
  );
  defparam \IF/PC_4 .INIT = 1'b0;
  FDRE \IF/PC_4  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [4]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [4])
  );
  defparam \IF/PC_3 .INIT = 1'b0;
  FDRE \IF/PC_3  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [3]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [3])
  );
  defparam \IF/PC_2 .INIT = 1'b0;
  FDRE \IF/PC_2  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [2]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [2])
  );
  defparam \IF/PC_1 .INIT = 1'b0;
  FDRE \IF/PC_1  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [1]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [1])
  );
  defparam \IF/PC_0 .INIT = 1'b0;
  FDRE \IF/PC_0  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\IF/PC_in [0]),
    .R(reset_IBUF_1),
    .Q(\IF/PC [0])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[0]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [0])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem1  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[1]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem1_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [1])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem2  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[2]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem2_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [2])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem3  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[3]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem3_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [3])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem4  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[4]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem4_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [4])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem5  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[5]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem5_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [5])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem6  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[6]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem6_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [6])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem7  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[7]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem7_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [7])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem8  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[8]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem8_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [8])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem9  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[9]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem9_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [9])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem10  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[10]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem10_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [10])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem11  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[11]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem11_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [11])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem12  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[12]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem12_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [12])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem13  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[13]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem13_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [13])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem14  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[14]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem14_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [14])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem15  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[15]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem15_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [15])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem16  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[16]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem16_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [16])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem17  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[17]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem17_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [17])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem18  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[18]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem18_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [18])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem19  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[19]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem19_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [19])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem20  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[20]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem20_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [20])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem21  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[21]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem21_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [21])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem22  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[22]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem22_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [22])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem23  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[23]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem23_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [23])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem24  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[24]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem24_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [24])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem25  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[25]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem25_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [25])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem26  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[26]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem26_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [26])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem27  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[27]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem27_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [27])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem28  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[28]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem28_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [28])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem29  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[29]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem29_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [29])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem30  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[30]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem30_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [30])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem31  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[31]),
    .DPRA0(\if_id/q[21] ),
    .DPRA1(\if_id/q[22] ),
    .DPRA2(Instruction_id_20_OBUF_3),
    .DPRA3(\if_id/q[24] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem31_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0000 [31])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem32  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[0]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem32_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [0])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem33  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[1]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem33_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [1])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem34  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[2]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem34_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [2])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem35  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[3]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem35_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [3])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem36  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[4]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem36_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [4])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem37  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[5]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem37_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [5])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem38  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[6]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem38_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [6])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem39  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[7]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem39_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [7])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem40  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[8]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem40_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [8])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem41  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[9]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem41_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [9])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem42  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[10]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem42_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [10])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem43  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[11]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem43_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [11])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem44  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[12]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem44_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [12])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem45  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[13]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem45_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [13])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem46  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[14]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem46_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [14])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem47  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[15]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem47_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [15])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem48  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[16]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem48_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [16])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem49  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[17]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem49_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [17])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem50  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[18]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem50_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [18])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem51  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[19]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem51_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [19])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem52  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[20]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem52_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [20])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem53  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[21]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem53_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [21])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem54  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[22]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem54_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [22])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem55  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[23]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem55_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [23])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem56  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[24]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem56_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [24])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem57  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[25]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem57_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [25])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem58  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[26]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem58_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [26])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem59  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[27]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem59_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [27])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem60  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[28]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem60_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [28])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem61  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[29]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem61_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [29])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem62  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[30]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem62_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [30])
  );
  RAM32X1D \ID/MultiRegisters/inst_Mram_mem63  (
    .A0(\MM_mem_wb/q [0]),
    .A1(\MM_mem_wb/q [1]),
    .A2(\MM_mem_wb/q [2]),
    .A3(\MM_mem_wb/q [3]),
    .A4(\MM_mem_wb/q [4]),
    .D(RegWriteData_wb[31]),
    .DPRA0(\if_id/q[16] ),
    .DPRA1(\if_id/q[17] ),
    .DPRA2(\if_id/q[18] ),
    .DPRA3(\if_id/q[19] ),
    .DPRA4(Instruction_id_20_OBUF_3),
    .WCLK(clk_BUFGP_0),
    .WE(\MM_mem_wb/q [5]),
    .SPO(\NLW_ID/MultiRegisters/inst_Mram_mem63_SPO_UNCONNECTED ),
    .DPO(\ID/MultiRegisters/_varindex0001 [31])
  );
  defparam \EX/ALU/result_final_or0002_wg_lut<0> .INIT = 8'h01;
  LUT3 \EX/ALU/result_final_or0002_wg_lut<0>  (
    .I0(ALU_A_22_OBUF_45),
    .I1(ALU_A_24_OBUF_43),
    .I2(ALU_A_21_OBUF_46),
    .O(N01)
  );
  MUXCY \EX/ALU/result_final_or0002_wg_cy<0>  (
    .CI(Instruction_id_20_OBUF_3),
    .DI(N0),
    .S(N01),
    .O(\EX/ALU/result_final_or0002_wg_cy [0])
  );
  defparam \EX/ALU/result_final_or0002_wg_lut<1> .INIT = 16'h0001;
  LUT4 \EX/ALU/result_final_or0002_wg_lut<1>  (
    .I0(ALU_A_20_OBUF_47),
    .I1(ALU_A_19_OBUF_48),
    .I2(ALU_A_25_OBUF_42),
    .I3(ALU_A_16_OBUF_51),
    .O(N1)
  );
  MUXCY \EX/ALU/result_final_or0002_wg_cy<1>  (
    .CI(\EX/ALU/result_final_or0002_wg_cy [0]),
    .DI(N0),
    .S(N1),
    .O(\EX/ALU/result_final_or0002_wg_cy [1])
  );
  defparam \EX/ALU/result_final_or0002_wg_lut<2> .INIT = 16'h0001;
  LUT4 \EX/ALU/result_final_or0002_wg_lut<2>  (
    .I0(ALU_A_18_OBUF_49),
    .I1(ALU_A_17_OBUF_50),
    .I2(ALU_A_23_OBUF_44),
    .I3(ALU_A_15_OBUF_52),
    .O(N2)
  );
  MUXCY \EX/ALU/result_final_or0002_wg_cy<2>  (
    .CI(\EX/ALU/result_final_or0002_wg_cy [1]),
    .DI(N0),
    .S(N2),
    .O(\EX/ALU/result_final_or0002_wg_cy [2])
  );
  defparam \EX/ALU/result_final_or0002_wg_lut<3> .INIT = 16'h0001;
  LUT4 \EX/ALU/result_final_or0002_wg_lut<3>  (
    .I0(ALU_A_14_OBUF_53),
    .I1(ALU_A_13_OBUF_54),
    .I2(ALU_A_26_OBUF_41),
    .I3(ALU_A_12_OBUF_55),
    .O(N3)
  );
  MUXCY \EX/ALU/result_final_or0002_wg_cy<3>  (
    .CI(\EX/ALU/result_final_or0002_wg_cy [2]),
    .DI(N0),
    .S(N3),
    .O(\EX/ALU/result_final_or0002_wg_cy [3])
  );
  defparam \EX/ALU/result_final_or0002_wg_lut<4> .INIT = 16'h0001;
  LUT4 \EX/ALU/result_final_or0002_wg_lut<4>  (
    .I0(ALU_A_9_OBUF_58),
    .I1(ALU_A_11_OBUF_56),
    .I2(ALU_A_27_OBUF_40),
    .I3(ALU_A_10_OBUF_57),
    .O(N4)
  );
  MUXCY \EX/ALU/result_final_or0002_wg_cy<4>  (
    .CI(\EX/ALU/result_final_or0002_wg_cy [3]),
    .DI(N0),
    .S(N4),
    .O(\EX/ALU/result_final_or0002_wg_cy [4])
  );
  defparam \EX/ALU/result_final_or0002_wg_lut<5> .INIT = 16'h0001;
  LUT4 \EX/ALU/result_final_or0002_wg_lut<5>  (
    .I0(ALU_A_6_OBUF_61),
    .I1(ALU_A_8_OBUF_59),
    .I2(ALU_A_28_OBUF_39),
    .I3(ALU_A_7_OBUF_60),
    .O(N5)
  );
  MUXCY \EX/ALU/result_final_or0002_wg_cy<5>  (
    .CI(\EX/ALU/result_final_or0002_wg_cy [4]),
    .DI(N0),
    .S(N5),
    .O(\EX/ALU/result_final_or0002_wg_cy [5])
  );
  defparam \EX/ALU/result_final_or0002_wg_lut<6> .INIT = 16'h0001;
  LUT4 \EX/ALU/result_final_or0002_wg_lut<6>  (
    .I0(ALU_A_30_OBUF_37),
    .I1(ALU_A_5_OBUF_62),
    .I2(ALU_A_29_OBUF_38),
    .I3(ALU_A_31_OBUF_36),
    .O(N6)
  );
  MUXCY \EX/ALU/result_final_or0002_wg_cy<6>  (
    .CI(\EX/ALU/result_final_or0002_wg_cy [5]),
    .DI(N0),
    .S(N6),
    .O(\EX/ALU/result_final_or0002 )
  );
  defparam \IF/InstructionROM/dout_and00001 .INIT = 4'h1;
  LUT2 \IF/InstructionROM/dout_and00001  (
    .I0(\IF/PC [7]),
    .I1(\IF/PC [6]),
    .O(\IF/InstructionROM/dout_and0000 )
  );
  defparam \ID/Decode/SW1 .INIT = 4'h8;
  LUT2 \ID/Decode/SW1  (
    .I0(\if_id/q[29] ),
    .I1(\ID/N30 ),
    .O(MemWrite_id)
  );
  defparam \IF/InstructionROM/Mrom_dout_mux00001711 .INIT = 8'h10;
  LUT3 \IF/InstructionROM/Mrom_dout_mux00001711  (
    .I0(\IF/PC [4]),
    .I1(\IF/PC [3]),
    .I2(\IF/PC [5]),
    .O(\IF/N2 )
  );
  defparam \IF/InstructionROM/dout<31>1 .INIT = 16'hAA08;
  LUT4 \IF/InstructionROM/dout<31>1  (
    .I0(\IF/InstructionROM/dout_and0000 ),
    .I1(\IF/N2 ),
    .I2(\IF/PC [2]),
    .I3(\IF/N16 ),
    .O(\Instruction_if[31] )
  );
  defparam \IF/InstructionROM/dout<14>1 .INIT = 16'hAA08;
  LUT4 \IF/InstructionROM/dout<14>1  (
    .I0(\IF/InstructionROM/dout_and0000 ),
    .I1(\IF/PC [2]),
    .I2(\IF/N4 ),
    .I3(\IF/InstructionROM/Mrom_dout_mux000011 ),
    .O(\Instruction_if[14] )
  );
  defparam \IF/InstructionROM/Mrom_dout_mux00001321 .INIT = 16'h1410;
  LUT4 \IF/InstructionROM/Mrom_dout_mux00001321  (
    .I0(\IF/PC [3]),
    .I1(\IF/PC [2]),
    .I2(\IF/PC [4]),
    .I3(\IF/PC [5]),
    .O(\IF/InstructionROM/Mrom_dout_mux000011 )
  );
  defparam \IF/pcAdd4/adder_0/Mxor_s_Result<3>1 .INIT = 4'h6;
  LUT2 \IF/pcAdd4/adder_0/Mxor_s_Result<3>1  (
    .I0(\IF/PC [3]),
    .I1(\IF/PC [2]),
    .O(NextPC_if[3])
  );
  defparam \IF/InstructionROM/Mrom_dout_mux0000311 .INIT = 8'h10;
  LUT3 \IF/InstructionROM/Mrom_dout_mux0000311  (
    .I0(\IF/PC [2]),
    .I1(\IF/PC [3]),
    .I2(\IF/PC [4]),
    .O(\IF/N3 )
  );
  defparam \IF/InstructionROM/dout<1> .INIT = 16'h060B;
  LUT4 \IF/InstructionROM/dout<1>  (
    .I0(\IF/PC [2]),
    .I1(\IF/PC [5]),
    .I2(N36),
    .I3(\IF/PC [3]),
    .O(\Instruction_if[1] )
  );
  defparam \IF/InstructionROM/dout<7> .INIT = 16'hFB40;
  LUT4 \IF/InstructionROM/dout<7>  (
    .I0(\IF/N4 ),
    .I1(\IF/PC [2]),
    .I2(N39),
    .I3(\Instruction_if[10] ),
    .O(\Instruction_if[7] )
  );
  defparam \IF/InstructionROM/dout<2>1 .INIT = 16'hCC04;
  LUT4 \IF/InstructionROM/dout<2>1  (
    .I0(\IF/PC [5]),
    .I1(\IF/InstructionROM/dout_and0000 ),
    .I2(\IF/PC [3]),
    .I3(\IF/N3 ),
    .O(N48)
  );
  defparam \IF/InstructionROM/dout<2>2 .INIT = 16'hCC04;
  LUT4 \IF/InstructionROM/dout<2>2  (
    .I0(\IF/N4 ),
    .I1(\IF/InstructionROM/dout_and0000 ),
    .I2(\IF/PC [2]),
    .I3(\IF/N3 ),
    .O(N49)
  );
  MUXF5 \IF/InstructionROM/dout<2>_f5  (
    .I0(N49),
    .I1(N48),
    .S(\IF/PC [4]),
    .O(\Instruction_if[2] )
  );
  defparam \IF/InstructionROM/Mrom_dout_mux00001721 .INIT = 4'hD;
  LUT2 \IF/InstructionROM/Mrom_dout_mux00001721  (
    .I0(\IF/PC [3]),
    .I1(\IF/PC [5]),
    .O(\IF/N4 )
  );
  defparam \ID/Decode/LW11 .INIT = 16'h2000;
  LUT4 \ID/Decode/LW11  (
    .I0(\if_id/q[26] ),
    .I1(\if_id/q[28] ),
    .I2(\if_id/q[27] ),
    .I3(\if_id/q[31] ),
    .O(\ID/N30 )
  );
  defparam \IF/InstructionROM/Mrom_dout_mux00002711 .INIT = 16'h0220;
  LUT4 \IF/InstructionROM/Mrom_dout_mux00002711  (
    .I0(\IF/PC [4]),
    .I1(\IF/PC [5]),
    .I2(\IF/PC [3]),
    .I3(\IF/PC [2]),
    .O(\IF/N16 )
  );
  defparam \ID/Decode/LW1 .INIT = 4'h4;
  LUT2 \ID/Decode/LW1  (
    .I0(\if_id/q[29] ),
    .I1(\ID/N30 ),
    .O(MemRead_id)
  );
  defparam \ID/addOffset/adder_40/s_and0000<1>1 .INIT = 4'h6;
  LUT2 \ID/addOffset/adder_40/s_and0000<1>1  (
    .I0(\if_id/q[49] ),
    .I1(\if_id/q[15] ),
    .O(\ID/addOffset/adder_40/s_and0000 [1])
  );
  defparam \ID/addOffset/adder_30/s_and0000<1>1 .INIT = 4'h6;
  LUT2 \ID/addOffset/adder_30/s_and0000<1>1  (
    .I0(\if_id/q[45] ),
    .I1(\if_id/q[11] ),
    .O(\ID/addOffset/adder_30/s_and0000 [1])
  );
  defparam \ID/addOffset/adder_20/s_and0000<1>1 .INIT = 4'h6;
  LUT2 \ID/addOffset/adder_20/s_and0000<1>1  (
    .I0(\if_id/q[41] ),
    .I1(\if_id/q[7] ),
    .O(\ID/addOffset/adder_20/s_and0000 [1])
  );
  defparam \ID/addOffset/adder_10/s_and0000<1>1 .INIT = 4'h6;
  LUT2 \ID/addOffset/adder_10/s_and0000<1>1  (
    .I0(\if_id/q[37] ),
    .I1(\if_id/q[3] ),
    .O(\ID/addOffset/adder_10/s_and0000 [1])
  );
  defparam \ID/Decode/R_type15 .INIT = 8'h20;
  LUT3 \ID/Decode/R_type15  (
    .I0(\if_id/q[1] ),
    .I1(\if_id/q[2] ),
    .I2(\if_id/q[12] ),
    .O(\ID/Decode/R_type1_map2 )
  );
  defparam \ID/Decode/R_type115 .INIT = 16'hFF8A;
  LUT4 \ID/Decode/R_type115  (
    .I0(\if_id/q[2] ),
    .I1(\if_id/q[1] ),
    .I2(\if_id/q[0] ),
    .I3(\if_id/q[12] ),
    .O(\ID/Decode/R_type1_map6 )
  );
  defparam \ID/Decode/R_type142 .INIT = 16'hAA08;
  LUT4 \ID/Decode/R_type142  (
    .I0(\ID/Decode/R_type1_map12 ),
    .I1(\ID/Decode/R_type1_map6 ),
    .I2(\if_id/q[3] ),
    .I3(\ID/Decode/R_type1_map2 ),
    .O(\ID/Decode/R_type1 )
  );
  defparam \ID/Decode/RegWrite1 .INIT = 16'hFFFE;
  LUT4 \ID/Decode/RegWrite1  (
    .I0(\ID/Decode/I_type ),
    .I1(ALUSrcA_id),
    .I2(\ID/Decode/R_type1 ),
    .I3(MemRead_id),
    .O(RegWrite_id)
  );
  defparam \ID/Decode/J2 .INIT = 16'h0040;
  LUT4 \ID/Decode/J2  (
    .I0(\if_id/q[29] ),
    .I1(\if_id/q[27] ),
    .I2(\ID/N32 ),
    .I3(\if_id/q[31] ),
    .O(J)
  );
  defparam \ID/Decode/R_type24 .INIT = 16'hFFFE;
  LUT4 \ID/Decode/R_type24  (
    .I0(\if_id/q[7] ),
    .I1(\if_id/q[6] ),
    .I2(\if_id/q[31] ),
    .I3(\if_id/q[29] ),
    .O(\ID/Decode/R_type2_map2 )
  );
  defparam \ID/Decode/R_type29 .INIT = 16'hFFFE;
  LUT4 \ID/Decode/R_type29  (
    .I0(\if_id/q[28] ),
    .I1(\if_id/q[27] ),
    .I2(\if_id/q[26] ),
    .I3(\if_id/q[24] ),
    .O(\ID/Decode/R_type2_map5 )
  );
  defparam \ID/Decode/R_type232 .INIT = 16'hFFFE;
  LUT4 \ID/Decode/R_type232  (
    .I0(\if_id/q[22] ),
    .I1(\if_id/q[21] ),
    .I2(\if_id/q[19] ),
    .I3(\if_id/q[18] ),
    .O(\ID/Decode/R_type2_map14 )
  );
  defparam \EX/RegWriteAddr_ex<4>1 .INIT = 4'h8;
  LUT2 \EX/RegWriteAddr_ex<4>1  (
    .I0(\EX_id_ex/q [0]),
    .I1(\Addr_id_ex/q[4] ),
    .O(RegWriteAddr_ex[4])
  );
  defparam \IF/pcAdd4/mux_2/out<0>1 .INIT = 4'h6;
  LUT2 \IF/pcAdd4/mux_2/out<0>1  (
    .I0(\IF/PC [8]),
    .I1(\IF/pcAdd4/co_1 ),
    .O(NextPC_if[8])
  );
  defparam \EX/ALU/result_final_cmp_eq001011 .INIT = 8'h10;
  LUT3 \EX/ALU/result_final_cmp_eq001011  (
    .I0(\EX_id_ex/q [5]),
    .I1(\EX_id_ex/q [6]),
    .I2(\EX_id_ex/q [7]),
    .O(\EX/ALU/N144 )
  );
  defparam \IF/pcAdd4/mux_2/out<1>1 .INIT = 8'h6A;
  LUT3 \IF/pcAdd4/mux_2/out<1>1  (
    .I0(\IF/PC [9]),
    .I1(\IF/pcAdd4/co_1 ),
    .I2(\IF/PC [8]),
    .O(NextPC_if[9])
  );
  defparam \EX/RegWriteAddr_ex<3>1 .INIT = 8'hD8;
  LUT3 \EX/RegWriteAddr_ex<3>1  (
    .I0(\EX_id_ex/q [0]),
    .I1(\Addr_id_ex/q[3] ),
    .I2(\Addr_id_ex/q[8] ),
    .O(RegWriteAddr_ex[3])
  );
  defparam \EX/RegWriteAddr_ex<2>1 .INIT = 8'hD8;
  LUT3 \EX/RegWriteAddr_ex<2>1  (
    .I0(\EX_id_ex/q [0]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\Addr_id_ex/q[7] ),
    .O(RegWriteAddr_ex[2])
  );
  defparam \EX/RegWriteAddr_ex<1>1 .INIT = 8'hD8;
  LUT3 \EX/RegWriteAddr_ex<1>1  (
    .I0(\EX_id_ex/q [0]),
    .I1(\Addr_id_ex/q[1] ),
    .I2(\Addr_id_ex/q[6] ),
    .O(RegWriteAddr_ex[1])
  );
  defparam \ID/Decode/J11 .INIT = 4'h1;
  LUT2 \ID/Decode/J11  (
    .I0(\if_id/q[28] ),
    .I1(\if_id/q[26] ),
    .O(\ID/N32 )
  );
  defparam \ID/Decode/JR2 .INIT = 16'h0040;
  LUT4 \ID/Decode/JR2  (
    .I0(\if_id/q[1] ),
    .I1(\if_id/q[3] ),
    .I2(\ID/N31 ),
    .I3(\if_id/q[0] ),
    .O(JR)
  );
  defparam \ID/Decode/ALUtemp<3> .INIT = 16'h5110;
  LUT4 \ID/Decode/ALUtemp<3>  (
    .I0(\if_id/q[31] ),
    .I1(\if_id/q[29] ),
    .I2(\if_id/q[28] ),
    .I3(N184),
    .O(ALUCode_id[3])
  );
  defparam _or00011.INIT = 4'hE;
  LUT2 _or00011 (
    .I0(reset_IBUF_1),
    .I1(Stall_OBUF_2),
    .O(_or0001)
  );
  defparam \EX/RegWriteAddr_ex<0>1 .INIT = 8'hD8;
  LUT3 \EX/RegWriteAddr_ex<0>1  (
    .I0(\EX_id_ex/q [0]),
    .I1(\Addr_id_ex/q[0] ),
    .I2(\Addr_id_ex/q[5] ),
    .O(RegWriteAddr_ex[0])
  );
  defparam \ID/Stall26 .INIT = 16'h9009;
  LUT4 \ID/Stall26  (
    .I0(RegWriteAddr_ex[2]),
    .I1(\if_id/q[18] ),
    .I2(RegWriteAddr_ex[1]),
    .I3(\if_id/q[17] ),
    .O(\ID/Stall_map10 )
  );
  defparam \ID/Stall102 .INIT = 16'h9009;
  LUT4 \ID/Stall102  (
    .I0(RegWriteAddr_ex[3]),
    .I1(\if_id/q[24] ),
    .I2(RegWriteAddr_ex[1]),
    .I3(\if_id/q[22] ),
    .O(\ID/Stall_map35 )
  );
  defparam \ID/Stall122 .INIT = 16'h0009;
  LUT4 \ID/Stall122  (
    .I0(RegWriteAddr_ex[0]),
    .I1(\if_id/q[21] ),
    .I2(RegWriteAddr_ex[4]),
    .I3(RegWriteAddr_ex[2]),
    .O(\ID/Stall_map44 )
  );
  defparam \ID/Stall123 .INIT = 4'h8;
  LUT2 \ID/Stall123  (
    .I0(\ID/Stall_map35 ),
    .I1(\ID/Stall_map44 ),
    .O(\ID/Stall_map45 )
  );
  defparam \ID/Stall150 .INIT = 16'hA888;
  LUT4 \ID/Stall150  (
    .I0(\MM_id_ex/q [0]),
    .I1(\ID/Stall_map45 ),
    .I2(\ID/Stall_map10 ),
    .I3(\ID/Stall_map23 ),
    .O(Stall_OBUF_2)
  );
  defparam \ID/Decode/ALUtemp<4>0 .INIT = 4'h8;
  LUT2 \ID/Decode/ALUtemp<4>0  (
    .I0(\if_id/q[27] ),
    .I1(\if_id/q[29] ),
    .O(\ID/Decode/ALUtemp<0>_map0 )
  );
  defparam \ID/Decode/ALUtemp<4>12 .INIT = 16'h0301;
  LUT4 \ID/Decode/ALUtemp<4>12  (
    .I0(\if_id/q[0] ),
    .I1(\if_id/q[12] ),
    .I2(\if_id/q[3] ),
    .I3(\if_id/q[1] ),
    .O(\ID/Decode/ALUtemp<4>_map6 )
  );
  defparam \ID/Decode/ALUtemp<4>20 .INIT = 16'h2000;
  LUT4 \ID/Decode/ALUtemp<4>20  (
    .I0(\if_id/q[3] ),
    .I1(\if_id/q[2] ),
    .I2(\if_id/q[1] ),
    .I3(\if_id/q[12] ),
    .O(\ID/Decode/ALUtemp<4>_map10 )
  );
  defparam \IF/pcAdd4/mux_3/out<0>1 .INIT = 4'h6;
  LUT2 \IF/pcAdd4/mux_3/out<0>1  (
    .I0(\IF/PC [12]),
    .I1(\IF/pcAdd4/co_2 ),
    .O(NextPC_if[12])
  );
  defparam \IF/pcAdd4/mux_3/out<1>1 .INIT = 8'h6A;
  LUT3 \IF/pcAdd4/mux_3/out<1>1  (
    .I0(\IF/PC [13]),
    .I1(\IF/pcAdd4/co_2 ),
    .I2(\IF/PC [12]),
    .O(NextPC_if[13])
  );
  defparam \EX/ALU/result_final_cmp_eq000811 .INIT = 16'h0002;
  LUT4 \EX/ALU/result_final_cmp_eq000811  (
    .I0(\EX_id_ex/q [6]),
    .I1(\EX_id_ex/q [7]),
    .I2(\EX_id_ex/q [4]),
    .I3(\EX_id_ex/q [5]),
    .O(\EX/ALU/N145 )
  );
  defparam \EX/ALU/result_final_cmp_eq00071 .INIT = 8'h80;
  LUT3 \EX/ALU/result_final_cmp_eq00071  (
    .I0(N11714),
    .I1(\EX_id_ex/q [4]),
    .I2(\EX_id_ex/q [3]),
    .O(\EX/ALU/result_final_cmp_eq0007 )
  );
  defparam \EX/ALU/result_final<0>21 .INIT = 16'hEFEE;
  LUT4 \EX/ALU/result_final<0>21  (
    .I0(\EX/ALU/result_final_cmp_eq0007 ),
    .I1(N11715),
    .I2(\EX_id_ex/q [3]),
    .I3(\EX/ALU/N145 ),
    .O(\EX/ALU/N20 )
  );
  defparam \EX/ALU/result_final_cmp_eq00031 .INIT = 8'h80;
  LUT3 \EX/ALU/result_final_cmp_eq00031  (
    .I0(\EX/ALU/N73 ),
    .I1(\EX_id_ex/q [4]),
    .I2(\EX_id_ex/q [3]),
    .O(\EX/ALU/result_final_cmp_eq0003 )
  );
  defparam \EX/ALU/result_final<16>111 .INIT = 16'hEFEE;
  LUT4 \EX/ALU/result_final<16>111  (
    .I0(\EX/ALU/result_final_cmp_eq0007 ),
    .I1(N11846),
    .I2(\EX_id_ex/q [3]),
    .I3(\EX/ALU/N145 ),
    .O(\EX/ALU/N59 )
  );
  defparam \IF/pcAdd4/mux_4/out<0>1 .INIT = 4'h6;
  LUT2 \IF/pcAdd4/mux_4/out<0>1  (
    .I0(\IF/PC [16]),
    .I1(\IF/pcAdd4/co_3 ),
    .O(NextPC_if[16])
  );
  defparam \IF/pcAdd4/mux_4/out<1>1 .INIT = 8'h6A;
  LUT3 \IF/pcAdd4/mux_4/out<1>1  (
    .I0(\IF/PC [17]),
    .I1(\IF/pcAdd4/co_3 ),
    .I2(\IF/PC [16]),
    .O(NextPC_if[17])
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Result<16>31 .INIT = 4'h1;
  LUT2 \EX/ALU/Mshift_result_final_shift0003_Result<16>31  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_2_OBUF_65),
    .O(\EX/ALU/N78 )
  );
  defparam \ID/Decode/ALUtemp<1>49 .INIT = 16'h0360;
  LUT4 \ID/Decode/ALUtemp<1>49  (
    .I0(\if_id/q[2] ),
    .I1(\if_id/q[3] ),
    .I2(\if_id/q[12] ),
    .I3(\if_id/q[0] ),
    .O(\ID/Decode/ALUtemp<1>_map16 )
  );
  defparam \ID/Decode/ALUtemp<1>76 .INIT = 16'h2000;
  LUT4 \ID/Decode/ALUtemp<1>76  (
    .I0(\if_id/q[0] ),
    .I1(\if_id/q[1] ),
    .I2(\if_id/q[12] ),
    .I3(\ID/Decode/ALUtemp<1>_map22 ),
    .O(\ID/Decode/ALUtemp<1>_map23 )
  );
  defparam \ID/Decode/ALUtemp<1>137 .INIT = 16'hDDDC;
  LUT4 \ID/Decode/ALUtemp<1>137  (
    .I0(\if_id/q[26] ),
    .I1(\ID/Decode/ALUtemp<1>_map0 ),
    .I2(\ID/Decode/ALUtemp<1>_map25 ),
    .I3(\ID/Decode/ALUtemp<1>_map3 ),
    .O(ALUCode_id[1])
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Result<0>61 .INIT = 4'h8;
  LUT2 \EX/ALU/Mshift_result_final_shift0005_Result<0>61  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_3_OBUF_64),
    .O(\EX/ALU/N95 )
  );
  defparam \EX/ALU/adder/adder_50/s_and0000<1>1 .INIT = 4'h6;
  LUT2 \EX/ALU/adder/adder_50/s_and0000<1>1  (
    .I0(ALU_A_21_OBUF_46),
    .I1(N11808),
    .O(\EX/ALU/adder/adder_50/s_and0000 [1])
  );
  defparam \EX/ALU/adder/adder_40/s_and0000<1>1 .INIT = 4'h6;
  LUT2 \EX/ALU/adder/adder_40/s_and0000<1>1  (
    .I0(ALU_A_17_OBUF_50),
    .I1(N11801),
    .O(\EX/ALU/adder/adder_40/s_and0000 [1])
  );
  defparam \EX/ALU/adder/adder_30/s_and0000<1>1 .INIT = 4'h6;
  LUT2 \EX/ALU/adder/adder_30/s_and0000<1>1  (
    .I0(ALU_A_13_OBUF_54),
    .I1(\EX/ALU/_xor0000 [13]),
    .O(\EX/ALU/adder/adder_30/s_and0000 [1])
  );
  defparam \EX/ALU/adder/adder_10/s_and0000<1>1 .INIT = 4'h6;
  LUT2 \EX/ALU/adder/adder_10/s_and0000<1>1  (
    .I0(ALU_A_5_OBUF_62),
    .I1(\EX/ALU/_xor0000 [5]),
    .O(\EX/ALU/adder/adder_10/s_and0000 [1])
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<31>1 .INIT = 8'h04;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<31>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(N11850),
    .I2(ALU_A_1_OBUF_66),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[31] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Result<1>11 .INIT = 8'hE2;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Result<1>11  (
    .I0(ALU_B_1_OBUF_98),
    .I1(ALU_A_0_OBUF_67),
    .I2(ALU_B_2_OBUF_97),
    .O(\EX/ALU/N23 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Result<29>11 .INIT = 8'hCA;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Result<29>11  (
    .I0(ALU_B_29_OBUF_70),
    .I1(ALU_B_27_OBUF_72),
    .I2(ALU_A_1_OBUF_66),
    .O(\EX/ALU/N211 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<30>1 .INIT = 16'h0E04;
  LUT4 \EX/ALU/Mshift_result_final_shift0004_Sh<30>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_30_OBUF_69),
    .I2(ALU_A_1_OBUF_66),
    .I3(\EX/ALU_B<31>1_140 ),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[30] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<62> .INIT = 16'hFE02;
  LUT4 \EX/ALU/Mshift_result_final_shift0005_Sh<62>  (
    .I0(ALU_B_30_OBUF_69),
    .I1(ALU_A_0_OBUF_67),
    .I2(N467),
    .I3(ALU_B_31_OBUF_68),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[62] )
  );
  defparam \ID/Decode/ALUtemp<0>31 .INIT = 16'h041D;
  LUT4 \ID/Decode/ALUtemp<0>31  (
    .I0(\if_id/q[3] ),
    .I1(\if_id/q[12] ),
    .I2(\if_id/q[2] ),
    .I3(\if_id/q[0] ),
    .O(\ID/Decode/ALUtemp<0>_map12 )
  );
  defparam \ID/Decode/ALUtemp<0>53 .INIT = 16'h0040;
  LUT4 \ID/Decode/ALUtemp<0>53  (
    .I0(\if_id/q[1] ),
    .I1(\if_id/q[2] ),
    .I2(\if_id/q[12] ),
    .I3(\if_id/q[3] ),
    .O(\ID/Decode/ALUtemp<0>_map18 )
  );
  defparam \ID/Decode/ALUtemp<0>79 .INIT = 8'h01;
  LUT3 \ID/Decode/ALUtemp<0>79  (
    .I0(\if_id/q[28] ),
    .I1(\if_id/q[27] ),
    .I2(\if_id/q[29] ),
    .O(\ID/Decode/ALUtemp<0>_map24 )
  );
  defparam \ID/Decode/ALUtemp<0>129 .INIT = 8'h20;
  LUT3 \ID/Decode/ALUtemp<0>129  (
    .I0(\if_id/q[26] ),
    .I1(\if_id/q[29] ),
    .I2(\if_id/q[28] ),
    .O(\ID/Decode/ALUtemp<0>_map31 )
  );
  defparam \ID/Decode/ALUtemp<0>133 .INIT = 16'hDDDC;
  LUT4 \ID/Decode/ALUtemp<0>133  (
    .I0(\if_id/q[26] ),
    .I1(\ID/Decode/ALUtemp<0>_map31 ),
    .I2(\ID/Decode/ALUtemp<0>_map25 ),
    .I3(\ID/Decode/ALUtemp<0>_map0 ),
    .O(\ID/Decode/ALUtemp<0>_map32 )
  );
  defparam \ID/Decode/ALUtemp<0>146 .INIT = 4'h4;
  LUT2 \ID/Decode/ALUtemp<0>146  (
    .I0(\if_id/q[31] ),
    .I1(\ID/Decode/ALUtemp<0>_map32 ),
    .O(ALUCode_id[0])
  );
  defparam \RegWriteData_wb<28>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<28>1  (
    .I0(MemDout_wb_28_OBUF_7),
    .I1(\Data_mem_wb/q [28]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[28])
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Result<23>11 .INIT = 4'hE;
  LUT2 \EX/ALU/Mshift_result_final_shift0005_Result<23>11  (
    .I0(\EX/ALU_A<3>59_175 ),
    .I1(ALU_A_4_OBUF_63),
    .O(\EX/ALU/N1 )
  );
  defparam \IF/pcAdd4/mux_5/out<0>1 .INIT = 4'h6;
  LUT2 \IF/pcAdd4/mux_5/out<0>1  (
    .I0(\IF/PC [20]),
    .I1(\IF/pcAdd4/co_4 ),
    .O(NextPC_if[20])
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<6>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<6>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_7_OBUF_92),
    .I2(ALU_B_6_OBUF_93),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[6] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<4>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<4>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_5_OBUF_94),
    .I2(ALU_B_4_OBUF_95),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[4] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<3>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<3>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_4_OBUF_95),
    .I2(ALU_B_3_OBUF_96),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[3] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<2>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<2>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_3_OBUF_96),
    .I2(ALU_B_2_OBUF_97),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[2] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Result<4>11 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Result<4>11  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[10] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[6] ),
    .O(\EX/ALU/N5 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<11>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<11>1  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[13] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[11] ),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[11] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<10>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<10>1  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[12] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[10] ),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[10] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Result<0>11 .INIT = 8'hCA;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Result<0>11  (
    .I0(ALU_B_0_OBUF_99),
    .I1(ALU_B_1_OBUF_98),
    .I2(ALU_A_0_OBUF_67),
    .O(\EX/ALU/N22 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Result<28>21 .INIT = 8'hCA;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Result<28>21  (
    .I0(ALU_B_27_OBUF_72),
    .I1(ALU_B_25_OBUF_74),
    .I2(ALU_A_1_OBUF_66),
    .O(\EX/ALU/N26 )
  );
  defparam \IF/pcAdd4/mux_5/out<1>1 .INIT = 8'h6A;
  LUT3 \IF/pcAdd4/mux_5/out<1>1  (
    .I0(\IF/PC [21]),
    .I1(\IF/pcAdd4/co_4 ),
    .I2(\IF/PC [20]),
    .O(NextPC_if[21])
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Result<3>1_SW0 .INIT = 8'h27;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Result<3>1_SW0  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[9] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[7] ),
    .O(N571)
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Result<2>1 .INIT = 8'hB1;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Result<2>1  (
    .I0(ALU_A_3_OBUF_64),
    .I1(N11727),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[14] ),
    .O(\EX/ALU/N66 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<23>7 .INIT = 8'hCA;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<23>7  (
    .I0(ALU_B_22_OBUF_77),
    .I1(ALU_B_20_OBUF_79),
    .I2(ALU_A_1_OBUF_66),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh<22>_map8 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<22>7 .INIT = 8'hAC;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<22>7  (
    .I0(ALU_B_19_OBUF_80),
    .I1(ALU_B_21_OBUF_78),
    .I2(ALU_A_1_OBUF_66),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh<21>_map8 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<21>7 .INIT = 8'hAC;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<21>7  (
    .I0(ALU_B_18_OBUF_81),
    .I1(ALU_B_20_OBUF_79),
    .I2(ALU_A_1_OBUF_66),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh<20>_map8 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<20>31 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<20>31  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh<19>_map8 ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<20>_map8 ),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[20] )
  );
  defparam \RegWriteData_wb<30>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<30>1  (
    .I0(MemDout_wb_30_OBUF_5),
    .I1(\Data_mem_wb/q [30]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[30])
  );
  defparam \RegWriteData_wb<29>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<29>1  (
    .I0(MemDout_wb_29_OBUF_6),
    .I1(\Data_mem_wb/q [29]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[29])
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Result<31>18 .INIT = 8'hCA;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Result<31>18  (
    .I0(ALU_B_26_OBUF_73),
    .I1(ALU_B_24_OBUF_75),
    .I2(ALU_A_1_OBUF_66),
    .O(\EX/ALU/Mshift_result_final_shift0003_Result<31>1_map4 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Result<30>213 .INIT = 16'h8A80;
  LUT4 \EX/ALU/Mshift_result_final_shift0003_Result<30>213  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_23_OBUF_76),
    .I2(ALU_A_1_OBUF_66),
    .I3(ALU_B_25_OBUF_74),
    .O(\EX/ALU/Mshift_result_final_shift0003_Result<30>2_map5 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Result<30>228 .INIT = 16'h5404;
  LUT4 \EX/ALU/Mshift_result_final_shift0003_Result<30>228  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_26_OBUF_73),
    .I2(ALU_A_1_OBUF_66),
    .I3(ALU_B_24_OBUF_75),
    .O(\EX/ALU/Mshift_result_final_shift0003_Result<30>2_map11 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Result<29>213 .INIT = 16'h8A80;
  LUT4 \EX/ALU/Mshift_result_final_shift0003_Result<29>213  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_22_OBUF_77),
    .I2(ALU_A_1_OBUF_66),
    .I3(ALU_B_24_OBUF_75),
    .O(\EX/ALU/Mshift_result_final_shift0003_Result<29>2_map5 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Result<29>228 .INIT = 16'h4540;
  LUT4 \EX/ALU/Mshift_result_final_shift0003_Result<29>228  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_23_OBUF_76),
    .I2(ALU_A_1_OBUF_66),
    .I3(ALU_B_25_OBUF_74),
    .O(\EX/ALU/Mshift_result_final_shift0003_Result<29>2_map11 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Result<28>313 .INIT = 16'h8A80;
  LUT4 \EX/ALU/Mshift_result_final_shift0003_Result<28>313  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_21_OBUF_78),
    .I2(ALU_A_1_OBUF_66),
    .I3(ALU_B_23_OBUF_76),
    .O(\EX/ALU/Mshift_result_final_shift0003_Result<28>3_map5 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Result<28>328 .INIT = 16'h4540;
  LUT4 \EX/ALU/Mshift_result_final_shift0003_Result<28>328  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_22_OBUF_77),
    .I2(ALU_A_1_OBUF_66),
    .I3(ALU_B_24_OBUF_75),
    .O(\EX/ALU/Mshift_result_final_shift0003_Result<28>3_map11 )
  );
  defparam \RegWriteData_wb<31>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<31>1  (
    .I0(MemDout_wb_31_OBUF_4),
    .I1(\Data_mem_wb/q [31]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[31])
  );
  defparam \EX/ALU/result_final<1>14 .INIT = 16'hAE04;
  LUT4 \EX/ALU/result_final<1>14  (
    .I0(ALU_B_1_OBUF_98),
    .I1(\EX/ALU/result_final_cmp_eq0004 ),
    .I2(ALU_A_1_OBUF_66),
    .I3(\EX/ALU/result_final_cmp_eq0003 ),
    .O(\EX/ALU/result_final<1>_map5 )
  );
  defparam \EX/ALU/result_final<1>50 .INIT = 16'hA888;
  LUT4 \EX/ALU/result_final<1>50  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/N140 ),
    .I2(ALU_B_1_OBUF_98),
    .I3(\EX/ALU/N68 ),
    .O(\EX/ALU/result_final<1>_map15 )
  );
  defparam \EX/ALU/result_final<1>67 .INIT = 16'hFFFE;
  LUT4 \EX/ALU/result_final<1>67  (
    .I0(\EX/ALU/result_final<1>_map5 ),
    .I1(\EX/ALU/result_final<1>_map11 ),
    .I2(\EX/ALU/N58 ),
    .I3(\EX/ALU/result_final<1>_map15 ),
    .O(\EX/ALU/result_final<1>_map17 )
  );
  defparam \EX/ALU/result_final<1>87 .INIT = 16'h2000;
  LUT4 \EX/ALU/result_final<1>87  (
    .I0(\EX/ALU/Mshift_result_final_shift0003_Sh[1] ),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/N79 ),
    .I3(\EX/ALU/N75 ),
    .O(\EX/ALU/result_final<1>_map21 )
  );
  defparam \EX/ALU/result_final<1>153 .INIT = 16'h8228;
  LUT4 \EX/ALU/result_final<1>153  (
    .I0(\EX/ALU/N0 ),
    .I1(ALU_A_1_OBUF_66),
    .I2(\EX/ALU/adder/adder_0/C [0]),
    .I3(N11780),
    .O(\EX/ALU/result_final<1>_map37 )
  );
  defparam \EX/ALU/result_final<1>257 .INIT = 16'hFEFC;
  LUT4 \EX/ALU/result_final<1>257  (
    .I0(\EX/ALU/N82 ),
    .I1(\EX/ALU/result_final<1>_map54 ),
    .I2(\EX/ALU/result_final<1>_map59 ),
    .I3(\EX/ALU/N65 ),
    .O(\EX/ALU/result_final<1>_map62 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<8>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<8>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_9_OBUF_90),
    .I2(ALU_B_8_OBUF_91),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[8] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<28>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<28>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_29_OBUF_70),
    .I2(ALU_B_28_OBUF_71),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[28] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<26>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<26>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_27_OBUF_72),
    .I2(ALU_B_26_OBUF_73),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[26] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<24>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<24>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_25_OBUF_74),
    .I2(ALU_B_24_OBUF_75),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[24] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<16>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<16>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_17_OBUF_82),
    .I2(ALU_B_16_OBUF_83),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[16] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<19>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<19>1  (
    .I0(ALU_A_1_OBUF_66),
    .I1(N11758),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[19] ),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[19] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<18>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<18>1  (
    .I0(ALU_A_1_OBUF_66),
    .I1(N11733),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[18] ),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[18] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<16>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<16>1  (
    .I0(ALU_A_1_OBUF_66),
    .I1(N11734),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[16] ),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[16] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<59>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<59>1  (
    .I0(ALU_A_2_OBUF_65),
    .I1(ALU_B_31_OBUF_68),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[27] ),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[59] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<54>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<54>1  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[26] ),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[22] ),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[54] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<52>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<52>1  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[24] ),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[20] ),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[52] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<49>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<49>1  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[21] ),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[17] ),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[49] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<48>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<48>1  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[20] ),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[16] ),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[48] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<57>1 .INIT = 16'h5410;
  LUT4 \EX/ALU/Mshift_result_final_shift0004_Sh<57>1  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[25] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[29] ),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[57] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<37>1 .INIT = 16'h5410;
  LUT4 \EX/ALU/Mshift_result_final_shift0003_Sh<37>1  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_2_OBUF_65),
    .I2(N11747),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[1] ),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[37] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<36>1 .INIT = 16'h5410;
  LUT4 \EX/ALU/Mshift_result_final_shift0003_Sh<36>1  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[4] ),
    .I3(N11723),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[36] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Result<13>1 .INIT = 8'h8D;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Result<13>1  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[21] ),
    .I2(N11745),
    .O(\EX/ALU/N14 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Result<12>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Result<12>1  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[20] ),
    .I2(N11742),
    .O(\EX/ALU/N15 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<58>15 .INIT = 16'hFE04;
  LUT4 \EX/ALU/Mshift_result_final_shift0005_Sh<58>15  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_30_OBUF_69),
    .I2(ALU_A_1_OBUF_66),
    .I3(\EX/ALU_B<31>1_140 ),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh<58>_map6 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<9>31 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<9>31  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh<8>_map8 ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<10>_map3 ),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[9] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<8>31 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<8>31  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh<7>_map8 ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<8>_map8 ),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[8] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<7>31 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<7>31  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh<6>_map8 ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<7>_map8 ),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[7] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<6>31 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<6>31  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh<5>_map8 ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<6>_map8 ),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[6] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<4>31 .INIT = 8'hE4;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<4>31  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh<4>_map8 ),
    .I2(N11748),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[4] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<19>7 .INIT = 8'hAC;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<19>7  (
    .I0(ALU_B_16_OBUF_83),
    .I1(ALU_B_18_OBUF_81),
    .I2(ALU_A_1_OBUF_66),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh<18>_map8 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<19>31 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<19>31  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh<18>_map8 ),
    .I2(N11729),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[19] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<18>7 .INIT = 8'hAC;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<18>7  (
    .I0(ALU_B_15_OBUF_84),
    .I1(ALU_B_17_OBUF_82),
    .I2(ALU_A_1_OBUF_66),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh<17>_map8 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<15>31 .INIT = 8'hE4;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<15>31  (
    .I0(ALU_A_0_OBUF_67),
    .I1(N11750),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<14>_map8 ),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[15] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<14>31 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<14>31  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh<13>_map8 ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<14>_map8 ),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[14] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<13>31 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<13>31  (
    .I0(ALU_A_0_OBUF_67),
    .I1(N11752),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<13>_map8 ),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[13] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<10>31 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<10>31  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh<10>_map3 ),
    .I2(N11754),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[10] )
  );
  defparam \RegWriteData_wb<27>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<27>1  (
    .I0(MemDout_wb_27_OBUF_8),
    .I1(\Data_mem_wb/q [27]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[27])
  );
  defparam \ID/Decode/ALUtemp<2>78 .INIT = 16'h7020;
  LUT4 \ID/Decode/ALUtemp<2>78  (
    .I0(\if_id/q[29] ),
    .I1(\if_id/q[26] ),
    .I2(\ID/Decode/ALUtemp<2>_map22 ),
    .I3(\if_id/q[27] ),
    .O(\ID/Decode/ALUtemp<2>_map23 )
  );
  defparam \EX/ALU/result_final<2>113 .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<2>113  (
    .I0(\EX/ALU/result_final<5>_map25 ),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[18] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[22] ),
    .O(\EX/ALU/result_final<2>_map31 )
  );
  defparam \EX/ALU/result_final<2>197 .INIT = 16'hC8C0;
  LUT4 \EX/ALU/result_final<2>197  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/N83 ),
    .I2(\EX/ALU/result_final<2>_map44 ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[50] ),
    .O(\EX/ALU/result_final<2>_map47 )
  );
  defparam \EX/ALU/result_final<2>261 .INIT = 16'h8228;
  LUT4 \EX/ALU/result_final<2>261  (
    .I0(\EX/ALU/N0 ),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/adder/adder_0/C [1]),
    .I3(N11781),
    .O(\EX/ALU/result_final<2>_map62 )
  );
  defparam \EX/ALU/result_final<2>276 .INIT = 16'hFFFE;
  LUT4 \EX/ALU/result_final<2>276  (
    .I0(\EX/ALU/result_final<2>_map62 ),
    .I1(\EX/ALU/result_final<2>_map20 ),
    .I2(\EX/ALU/result_final<2>_map34 ),
    .I3(\EX/ALU/result_final<2>_map47 ),
    .O(ALUResult_2_OBUF_129)
  );
  defparam \ID/Decode/ALUtemp<2>35 .INIT = 8'h20;
  LUT3 \ID/Decode/ALUtemp<2>35  (
    .I0(\if_id/q[29] ),
    .I1(\if_id/q[31] ),
    .I2(\if_id/q[27] ),
    .O(\ID/N13 )
  );
  defparam _or00001.INIT = 16'hFFFE;
  LUT4 _or00001 (
    .I0(JR),
    .I1(J),
    .I2(N11853),
    .I3(reset_IBUF_1),
    .O(_or0000)
  );
  defparam \IF/pcAdd4/mux_5/out<3>2 .INIT = 4'h9;
  LUT2 \IF/pcAdd4/mux_5/out<3>2  (
    .I0(\IF/PC [23]),
    .I1(\IF/pcAdd4/N23 ),
    .O(NextPC_if[23])
  );
  defparam \EX/ALU_B<31>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<31>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[31]),
    .O(ALU_B_31_OBUF_68)
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<27>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<27>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_28_OBUF_71),
    .I2(ALU_B_27_OBUF_72),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[27] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<25>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<25>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_26_OBUF_73),
    .I2(ALU_B_25_OBUF_74),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[25] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Result<5>11 .INIT = 8'hE4;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Result<5>11  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[7] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[11] ),
    .O(\EX/ALU/N4 )
  );
  defparam \EX/ALU/result_final<3>79 .INIT = 16'hFEFC;
  LUT4 \EX/ALU/result_final<3>79  (
    .I0(\EX/ALU/N75 ),
    .I1(\EX/ALU/result_final<3>_map14 ),
    .I2(\EX/ALU/N58 ),
    .I3(\EX/ALU/result_final<3>_map18 ),
    .O(\EX/ALU/result_final<3>_map20 )
  );
  defparam \EX/ALU/result_final<3>159 .INIT = 16'hEAC0;
  LUT4 \EX/ALU/result_final<3>159  (
    .I0(\EX/ALU/Mshift_result_final_shift0005_Sh[5] ),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[3] ),
    .I2(\EX/ALU/N93 ),
    .I3(\EX/ALU/N70 ),
    .O(\EX/ALU/result_final<3>_map39 )
  );
  defparam \EX/ALU/result_final<3>272 .INIT = 16'h8228;
  LUT4 \EX/ALU/result_final<3>272  (
    .I0(N11844),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/adder/adder_0/C [2]),
    .I3(\EX/ALU/_xor0000 [3]),
    .O(\EX/ALU/result_final<3>_map63 )
  );
  defparam \ID/Mxor_Z_xor0030_Result1 .INIT = 4'h6;
  LUT2 \ID/Mxor_Z_xor0030_Result1  (
    .I0(RtData_id[1]),
    .I1(JrAddr[1]),
    .O(\ID/Z_xor0030 )
  );
  defparam \ID/Mxor_Z_xor0026_Result1 .INIT = 4'h6;
  LUT2 \ID/Mxor_Z_xor0026_Result1  (
    .I0(RtData_id[5]),
    .I1(JrAddr[5]),
    .O(\ID/Z_xor0026 )
  );
  defparam \ID/Mxor_Z_xor0022_Result1 .INIT = 4'h6;
  LUT2 \ID/Mxor_Z_xor0022_Result1  (
    .I0(RtData_id[9]),
    .I1(JrAddr[9]),
    .O(\ID/Z_xor0022 )
  );
  defparam \ID/Mxor_Z_xor0018_Result1 .INIT = 4'h6;
  LUT2 \ID/Mxor_Z_xor0018_Result1  (
    .I0(RtData_id[13]),
    .I1(JrAddr[13]),
    .O(\ID/Z_xor0018 )
  );
  defparam \ID/Mxor_Z_xor0014_Result1 .INIT = 4'h6;
  LUT2 \ID/Mxor_Z_xor0014_Result1  (
    .I0(RtData_id[17]),
    .I1(JrAddr[17]),
    .O(\ID/Z_xor0014 )
  );
  defparam \ID/Mxor_Z_xor0010_Result1 .INIT = 4'h6;
  LUT2 \ID/Mxor_Z_xor0010_Result1  (
    .I0(RtData_id[21]),
    .I1(JrAddr[21]),
    .O(\ID/Z_xor0010 )
  );
  defparam \ID/Mxor_Z_xor0007_Result1 .INIT = 4'h6;
  LUT2 \ID/Mxor_Z_xor0007_Result1  (
    .I0(RtData_id[24]),
    .I1(JrAddr[24]),
    .O(\ID/Z_xor0007 )
  );
  defparam \ID/Mxor_Z_xor0003_Result1 .INIT = 4'h6;
  LUT2 \ID/Mxor_Z_xor0003_Result1  (
    .I0(RtData_id[28]),
    .I1(JrAddr[28]),
    .O(\ID/Z_xor0003 )
  );
  defparam \ID/RtData_id<9>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<9>1  (
    .I0(RegWriteData_wb[9]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [9]),
    .O(RtData_id[9])
  );
  defparam \ID/RtData_id<8>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<8>1  (
    .I0(RegWriteData_wb[8]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [8]),
    .O(RtData_id[8])
  );
  defparam \ID/RtData_id<7>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<7>1  (
    .I0(RegWriteData_wb[7]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [7]),
    .O(RtData_id[7])
  );
  defparam \ID/RtData_id<6>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<6>1  (
    .I0(RegWriteData_wb[6]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [6]),
    .O(RtData_id[6])
  );
  defparam \ID/RtData_id<5>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<5>1  (
    .I0(RegWriteData_wb[5]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [5]),
    .O(RtData_id[5])
  );
  defparam \ID/RtData_id<4>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<4>1  (
    .I0(RegWriteData_wb[4]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [4]),
    .O(RtData_id[4])
  );
  defparam \ID/RtData_id<3>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<3>1  (
    .I0(RegWriteData_wb[3]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [3]),
    .O(RtData_id[3])
  );
  defparam \ID/RtData_id<30>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<30>1  (
    .I0(RegWriteData_wb[30]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [30]),
    .O(RtData_id[30])
  );
  defparam \ID/RtData_id<2>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<2>1  (
    .I0(RegWriteData_wb[2]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [2]),
    .O(RtData_id[2])
  );
  defparam \ID/RtData_id<29>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<29>1  (
    .I0(RegWriteData_wb[29]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [29]),
    .O(RtData_id[29])
  );
  defparam \ID/RtData_id<28>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<28>1  (
    .I0(RegWriteData_wb[28]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(N11760),
    .I3(\ID/MultiRegisters/_varindex0001 [28]),
    .O(RtData_id[28])
  );
  defparam \ID/RtData_id<27>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<27>1  (
    .I0(RegWriteData_wb[27]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [27]),
    .O(RtData_id[27])
  );
  defparam \ID/RtData_id<26>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<26>1  (
    .I0(RegWriteData_wb[26]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [26]),
    .O(RtData_id[26])
  );
  defparam \ID/RtData_id<25>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<25>1  (
    .I0(RegWriteData_wb[25]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [25]),
    .O(RtData_id[25])
  );
  defparam \ID/RtData_id<24>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<24>1  (
    .I0(RegWriteData_wb[24]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [24]),
    .O(RtData_id[24])
  );
  defparam \ID/RtData_id<23>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<23>1  (
    .I0(RegWriteData_wb[23]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [23]),
    .O(RtData_id[23])
  );
  defparam \ID/RtData_id<22>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<22>1  (
    .I0(RegWriteData_wb[22]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [22]),
    .O(RtData_id[22])
  );
  defparam \ID/RtData_id<21>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<21>1  (
    .I0(RegWriteData_wb[21]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [21]),
    .O(RtData_id[21])
  );
  defparam \ID/RtData_id<20>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<20>1  (
    .I0(RegWriteData_wb[20]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [20]),
    .O(RtData_id[20])
  );
  defparam \ID/RtData_id<1>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<1>1  (
    .I0(RegWriteData_wb[1]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [1]),
    .O(RtData_id[1])
  );
  defparam \ID/RtData_id<19>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<19>1  (
    .I0(RegWriteData_wb[19]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [19]),
    .O(RtData_id[19])
  );
  defparam \ID/RtData_id<18>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<18>1  (
    .I0(RegWriteData_wb[18]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [18]),
    .O(RtData_id[18])
  );
  defparam \ID/RtData_id<17>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<17>1  (
    .I0(RegWriteData_wb[17]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [17]),
    .O(RtData_id[17])
  );
  defparam \ID/RtData_id<16>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<16>1  (
    .I0(RegWriteData_wb[16]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [16]),
    .O(RtData_id[16])
  );
  defparam \ID/RtData_id<15>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<15>1  (
    .I0(RegWriteData_wb[15]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [15]),
    .O(RtData_id[15])
  );
  defparam \ID/RtData_id<14>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<14>1  (
    .I0(RegWriteData_wb[14]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [14]),
    .O(RtData_id[14])
  );
  defparam \ID/RtData_id<13>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<13>1  (
    .I0(RegWriteData_wb[13]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [13]),
    .O(RtData_id[13])
  );
  defparam \ID/RtData_id<12>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<12>1  (
    .I0(RegWriteData_wb[12]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [12]),
    .O(RtData_id[12])
  );
  defparam \ID/RtData_id<11>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<11>1  (
    .I0(RegWriteData_wb[11]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [11]),
    .O(RtData_id[11])
  );
  defparam \ID/RtData_id<10>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<10>1  (
    .I0(RegWriteData_wb[10]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [10]),
    .O(RtData_id[10])
  );
  defparam \ID/RtData_id<0>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<0>1  (
    .I0(RegWriteData_wb[0]),
    .I1(\ID/MultiRegisters/RtData_cmp_eq0000 ),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [0]),
    .O(RtData_id[0])
  );
  defparam \ID/RsData_id<9>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<9>1  (
    .I0(RegWriteData_wb[9]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [9]),
    .O(JrAddr[9])
  );
  defparam \ID/RsData_id<8>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<8>1  (
    .I0(RegWriteData_wb[8]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [8]),
    .O(JrAddr[8])
  );
  defparam \ID/RsData_id<7>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<7>1  (
    .I0(RegWriteData_wb[7]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [7]),
    .O(JrAddr[7])
  );
  defparam \ID/RsData_id<6>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<6>1  (
    .I0(RegWriteData_wb[6]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [6]),
    .O(JrAddr[6])
  );
  defparam \ID/RsData_id<5>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<5>1  (
    .I0(RegWriteData_wb[5]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [5]),
    .O(JrAddr[5])
  );
  defparam \ID/RsData_id<4>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<4>1  (
    .I0(RegWriteData_wb[4]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [4]),
    .O(JrAddr[4])
  );
  defparam \ID/RsData_id<3>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<3>1  (
    .I0(RegWriteData_wb[3]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [3]),
    .O(JrAddr[3])
  );
  defparam \ID/RsData_id<30>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<30>1  (
    .I0(RegWriteData_wb[30]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [30]),
    .O(JrAddr[30])
  );
  defparam \ID/RsData_id<2>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<2>1  (
    .I0(RegWriteData_wb[2]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [2]),
    .O(JrAddr[2])
  );
  defparam \ID/RsData_id<29>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<29>1  (
    .I0(RegWriteData_wb[29]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [29]),
    .O(JrAddr[29])
  );
  defparam \ID/RsData_id<28>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<28>1  (
    .I0(RegWriteData_wb[28]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [28]),
    .O(JrAddr[28])
  );
  defparam \ID/RsData_id<27>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<27>1  (
    .I0(RegWriteData_wb[27]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [27]),
    .O(JrAddr[27])
  );
  defparam \ID/RsData_id<26>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<26>1  (
    .I0(RegWriteData_wb[26]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [26]),
    .O(JrAddr[26])
  );
  defparam \ID/RsData_id<25>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<25>1  (
    .I0(RegWriteData_wb[25]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [25]),
    .O(JrAddr[25])
  );
  defparam \ID/RsData_id<24>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<24>1  (
    .I0(RegWriteData_wb[24]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [24]),
    .O(JrAddr[24])
  );
  defparam \ID/RsData_id<23>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<23>1  (
    .I0(RegWriteData_wb[23]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [23]),
    .O(JrAddr[23])
  );
  defparam \ID/RsData_id<22>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<22>1  (
    .I0(RegWriteData_wb[22]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [22]),
    .O(JrAddr[22])
  );
  defparam \ID/RsData_id<21>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<21>1  (
    .I0(RegWriteData_wb[21]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [21]),
    .O(JrAddr[21])
  );
  defparam \ID/RsData_id<20>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<20>1  (
    .I0(RegWriteData_wb[20]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [20]),
    .O(JrAddr[20])
  );
  defparam \ID/RsData_id<1>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<1>1  (
    .I0(RegWriteData_wb[1]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [1]),
    .O(JrAddr[1])
  );
  defparam \ID/RsData_id<19>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<19>1  (
    .I0(RegWriteData_wb[19]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [19]),
    .O(JrAddr[19])
  );
  defparam \ID/RsData_id<18>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<18>1  (
    .I0(RegWriteData_wb[18]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [18]),
    .O(JrAddr[18])
  );
  defparam \ID/RsData_id<17>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<17>1  (
    .I0(RegWriteData_wb[17]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [17]),
    .O(JrAddr[17])
  );
  defparam \ID/RsData_id<16>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<16>1  (
    .I0(RegWriteData_wb[16]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [16]),
    .O(JrAddr[16])
  );
  defparam \ID/RsData_id<15>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<15>1  (
    .I0(RegWriteData_wb[15]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [15]),
    .O(JrAddr[15])
  );
  defparam \ID/RsData_id<14>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<14>1  (
    .I0(RegWriteData_wb[14]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [14]),
    .O(JrAddr[14])
  );
  defparam \ID/RsData_id<13>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<13>1  (
    .I0(RegWriteData_wb[13]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [13]),
    .O(JrAddr[13])
  );
  defparam \ID/RsData_id<12>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<12>1  (
    .I0(RegWriteData_wb[12]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [12]),
    .O(JrAddr[12])
  );
  defparam \ID/RsData_id<11>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<11>1  (
    .I0(RegWriteData_wb[11]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [11]),
    .O(JrAddr[11])
  );
  defparam \ID/RsData_id<10>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<10>1  (
    .I0(RegWriteData_wb[10]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [10]),
    .O(JrAddr[10])
  );
  defparam \IF/PC_in<5>62 .INIT = 16'h566A;
  LUT4 \IF/PC_in<5>62  (
    .I0(\ID/addOffset/adder_10/s_and0000 [1]),
    .I1(\if_id/q[2] ),
    .I2(\ID/addOffset/co_0 ),
    .I3(\if_id/q[36] ),
    .O(\IF/PC_in<5>_map20 )
  );
  defparam \IF/PC_in<13>62 .INIT = 16'h566A;
  LUT4 \IF/PC_in<13>62  (
    .I0(\ID/addOffset/adder_30/s_and0000 [1]),
    .I1(\if_id/q[15] ),
    .I2(\ID/addOffset/co_2 ),
    .I3(\if_id/q[44] ),
    .O(\IF/PC_in<13>_map20 )
  );
  defparam \ID/RsSel52 .INIT = 16'h8241;
  LUT4 \ID/RsSel52  (
    .I0(\MM_mem_wb/q_3_3_144 ),
    .I1(\MM_mem_wb/q_1_19_149 ),
    .I2(\if_id/q_22_1_169 ),
    .I3(\if_id/q_24_1_167 ),
    .O(\ID/RsSel_map20 )
  );
  defparam \ID/RtData_id<31>1 .INIT = 16'hA3A0;
  LUT4 \ID/RtData_id<31>1  (
    .I0(RegWriteData_wb[31]),
    .I1(N11731),
    .I2(\ID/RtSel ),
    .I3(\ID/MultiRegisters/_varindex0001 [31]),
    .O(RtData_id[31])
  );
  defparam \ID/RsData_id<31>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<31>1  (
    .I0(RegWriteData_wb[31]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [31]),
    .O(JrAddr[31])
  );
  defparam \EX/ALU_B<30>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<30>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[30]),
    .O(ALU_B_30_OBUF_69)
  );
  defparam \EX/ALU_B<29>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<29>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[29]),
    .O(ALU_B_29_OBUF_70)
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<9>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<9>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_10_OBUF_89),
    .I2(ALU_B_9_OBUF_90),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[9] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<29>1 .INIT = 16'h7250;
  LUT4 \EX/ALU/Mshift_result_final_shift0004_Sh<29>1  (
    .I0(ALU_A_1_OBUF_66),
    .I1(ALU_A_0_OBUF_67),
    .I2(N11757),
    .I3(\EX/ALU_B<31>1_140 ),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[29] )
  );
  defparam \EX/ALU_B<28>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<28>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[28]),
    .O(ALU_B_28_OBUF_71)
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<7>1 .INIT = 8'hE4;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<7>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_7_OBUF_92),
    .I2(ALU_B_8_OBUF_91),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[7] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<5>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<5>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_6_OBUF_93),
    .I2(ALU_B_5_OBUF_94),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[5] )
  );
  defparam \ID/RsSel_cmp_eq0000 .INIT = 16'h0001;
  LUT4 \ID/RsSel_cmp_eq0000  (
    .I0(\MM_mem_wb/q_4_1_138 ),
    .I1(\MM_mem_wb/q_3_1_142 ),
    .I2(\MM_mem_wb/q_2_3_158 ),
    .I3(N11759),
    .O(\EX/ForwardA_0_and0000 )
  );
  defparam \ID/RtSel8 .INIT = 4'h9;
  LUT2 \ID/RtSel8  (
    .I0(\MM_mem_wb/q_0_33_159 ),
    .I1(\if_id/q[16] ),
    .O(\ID/RtSel_map4 )
  );
  defparam \ID/RtSel42 .INIT = 16'h8241;
  LUT4 \ID/RtSel42  (
    .I0(\MM_mem_wb/q_2_19_172 ),
    .I1(\MM_mem_wb/q_1_33_162 ),
    .I2(\if_id/q[17] ),
    .I3(\if_id/q[18] ),
    .O(\ID/RtSel_map17 )
  );
  defparam \ID/RtSel61 .INIT = 16'h2002;
  LUT4 \ID/RtSel61  (
    .I0(\MM_mem_wb/q [5]),
    .I1(\MM_mem_wb/q [4]),
    .I2(\MM_mem_wb/q_3_16_161 ),
    .I3(\if_id/q[19] ),
    .O(\ID/RtSel_map25 )
  );
  defparam \IF/PC_in_or00001 .INIT = 8'hE9;
  LUT3 \IF/PC_in_or00001  (
    .I0(J),
    .I1(JR),
    .I2(\ID/Z701_174 ),
    .O(\IF/PC_in_or0000 )
  );
  defparam \ID/RsData_id<0>1 .INIT = 16'hA3A0;
  LUT4 \ID/RsData_id<0>1  (
    .I0(RegWriteData_wb[0]),
    .I1(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I2(\ID/RsSel ),
    .I3(\ID/MultiRegisters/_varindex0000 [0]),
    .O(JrAddr[0])
  );
  defparam \ID/Z37 .INIT = 16'hFFFE;
  LUT4 \ID/Z37  (
    .I0(\ID/Z_map3 ),
    .I1(\ID/Z_map6 ),
    .I2(\ID/Z_map10 ),
    .I3(\ID/Z_map13 ),
    .O(\ID/Z_map15 )
  );
  defparam \ID/Z82 .INIT = 16'hFFFE;
  LUT4 \ID/Z82  (
    .I0(\ID/Z_map18 ),
    .I1(\ID/Z_map21 ),
    .I2(\ID/Z_map25 ),
    .I3(\ID/Z_map28 ),
    .O(\ID/Z_map30 )
  );
  defparam \ID/Z202 .INIT = 16'h8000;
  LUT4 \ID/Z202  (
    .I0(\ID/Z_map63 ),
    .I1(\ID/Z_map56 ),
    .I2(\ID/Z_map41 ),
    .I3(\ID/Z_map48 ),
    .O(\ID/Z_map65 )
  );
  defparam \ID/Z291 .INIT = 16'h8000;
  LUT4 \ID/Z291  (
    .I0(\ID/Z_map72 ),
    .I1(\ID/Z_map79 ),
    .I2(\ID/Z_map87 ),
    .I3(\ID/Z_map94 ),
    .O(\ID/Z_map96 )
  );
  defparam \ID/Z571 .INIT = 16'hFFFE;
  LUT4 \ID/Z571  (
    .I0(JrAddr[0]),
    .I1(JrAddr[10]),
    .I2(JrAddr[2]),
    .I3(JrAddr[30]),
    .O(\ID/Z_map173 )
  );
  defparam \ID/Z583 .INIT = 16'hFFFE;
  LUT4 \ID/Z583  (
    .I0(JrAddr[3]),
    .I1(JrAddr[4]),
    .I2(JrAddr[5]),
    .I3(JrAddr[6]),
    .O(\ID/Z_map177 )
  );
  defparam \ID/Z588 .INIT = 16'hFFFE;
  LUT4 \ID/Z588  (
    .I0(JrAddr[7]),
    .I1(JrAddr[8]),
    .I2(JrAddr[15]),
    .I3(JrAddr[16]),
    .O(\ID/Z_map180 )
  );
  defparam \ID/Z598 .INIT = 16'hFFFE;
  LUT4 \ID/Z598  (
    .I0(\ID/Z_map170 ),
    .I1(\ID/Z_map173 ),
    .I2(\ID/Z_map177 ),
    .I3(\ID/Z_map180 ),
    .O(\ID/Z_map182 )
  );
  defparam \ID/Z616 .INIT = 16'hFFFE;
  LUT4 \ID/Z616  (
    .I0(JrAddr[20]),
    .I1(JrAddr[21]),
    .I2(JrAddr[22]),
    .I3(JrAddr[23]),
    .O(\ID/Z_map188 )
  );
  defparam \ID/Z628 .INIT = 16'hFFFE;
  LUT4 \ID/Z628  (
    .I0(JrAddr[24]),
    .I1(JrAddr[25]),
    .I2(JrAddr[26]),
    .I3(JrAddr[27]),
    .O(\ID/Z_map192 )
  );
  defparam \ID/Z636 .INIT = 16'hFFEF;
  LUT4 \ID/Z636  (
    .I0(JrAddr[9]),
    .I1(JrAddr[29]),
    .I2(ALUCode_id[0]),
    .I3(JrAddr[28]),
    .O(\ID/Z_map196 )
  );
  defparam \ID/Z647 .INIT = 16'hFFFE;
  LUT4 \ID/Z647  (
    .I0(\ID/Z_map185 ),
    .I1(\ID/Z_map188 ),
    .I2(\ID/Z_map192 ),
    .I3(\ID/Z_map196 ),
    .O(\ID/Z_map198 )
  );
  defparam \ID/Z674 .INIT = 8'h04;
  LUT3 \ID/Z674  (
    .I0(ALUCode_id[1]),
    .I1(ALUCode_id[2]),
    .I2(JrAddr[31]),
    .O(\ID/Z_map203 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<17>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<17>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_18_OBUF_81),
    .I2(ALU_B_17_OBUF_82),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[17] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<15>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<15>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_16_OBUF_83),
    .I2(ALU_B_15_OBUF_84),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[15] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<17>1 .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<17>1  (
    .I0(ALU_A_1_OBUF_66),
    .I1(N11762),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[17] ),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[17] )
  );
  defparam \EX/ALU/result_final<4>25 .INIT = 16'hEA48;
  LUT4 \EX/ALU/result_final<4>25  (
    .I0(ALU_B_4_OBUF_95),
    .I1(\EX/ALU/N20 ),
    .I2(ALU_A_4_OBUF_63),
    .I3(\EX/ALU/result_final_cmp_eq0003 ),
    .O(\EX/ALU/result_final<4>_map7 )
  );
  defparam \EX/ALU/result_final<4>31 .INIT = 16'hA888;
  LUT4 \EX/ALU/result_final<4>31  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/N140 ),
    .I2(ALU_B_4_OBUF_95),
    .I3(\EX/ALU/N68 ),
    .O(\EX/ALU/result_final<4>_map10 )
  );
  defparam \EX/ALU/result_final<4>216 .INIT = 16'h8228;
  LUT4 \EX/ALU/result_final<4>216  (
    .I0(\EX/ALU/N0 ),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/_xor0000 [4]),
    .I3(\EX/ALU/adder/co_0 ),
    .O(\EX/ALU/result_final<4>_map52 )
  );
  defparam \EX/ALU_B<27>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<27>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[27]),
    .O(ALU_B_27_OBUF_72)
  );
  defparam \EX/ALU_A<24> .INIT = 16'h0151;
  LUT4 \EX/ALU_A<24>  (
    .I0(\EX_id_ex/q [2]),
    .I1(N3780),
    .I2(\EX/ForwardA [0]),
    .I3(N3781),
    .O(ALU_A_24_OBUF_43)
  );
  defparam \IF/pcAdd4/mux_6/out<3>2 .INIT = 4'h9;
  LUT2 \IF/pcAdd4/mux_6/out<3>2  (
    .I0(\IF/PC [27]),
    .I1(N11811),
    .O(NextPC_if[27])
  );
  defparam \RegWriteData_wb<26>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<26>1  (
    .I0(MemDout_wb_26_OBUF_9),
    .I1(\Data_mem_wb/q [26]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[26])
  );
  defparam \RegWriteData_wb<25>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<25>1  (
    .I0(MemDout_wb_25_OBUF_10),
    .I1(\Data_mem_wb/q [25]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[25])
  );
  defparam \EX/ALU/result_final<5>40 .INIT = 16'hEFEC;
  LUT4 \EX/ALU/result_final<5>40  (
    .I0(\EX/ALU/N68 ),
    .I1(\EX/ALU/N140 ),
    .I2(ALU_B_5_OBUF_94),
    .I3(\EX/ALU/N20 ),
    .O(\EX/ALU/result_final<5>_map13 )
  );
  defparam \EX/ALU/result_final<5>142 .INIT = 16'hFFEA;
  LUT4 \EX/ALU/result_final<5>142  (
    .I0(\EX/ALU/result_final<5>_map26 ),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/result_final<5>_map37 ),
    .I3(\EX/ALU/result_final<5>_map32 ),
    .O(\EX/ALU/result_final<5>_map39 )
  );
  defparam \EX/ALU/result_final<5>156 .INIT = 4'h4;
  LUT2 \EX/ALU/result_final<5>156  (
    .I0(\EX_id_ex/q [3]),
    .I1(\EX_id_ex/q [4]),
    .O(\EX/ALU/result_final<31>_map19 )
  );
  defparam \EX/ALU/result_final<5>210 .INIT = 4'h4;
  LUT2 \EX/ALU/result_final<5>210  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .O(\EX/ALU/result_final<5>_map53 )
  );
  defparam \EX/ALU/result_final<5>215 .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<5>215  (
    .I0(\EX/ALU/result_final<5>_map53 ),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/result_final<5>_map48 ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[53] ),
    .O(\EX/ALU/result_final<5>_map54 )
  );
  defparam \RegWriteData_wb<24>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<24>1  (
    .I0(MemDout_wb_24_OBUF_11),
    .I1(\Data_mem_wb/q [24]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[24])
  );
  defparam \IF/PC_in<17>67 .INIT = 16'h566A;
  LUT4 \IF/PC_in<17>67  (
    .I0(\ID/addOffset/adder_40/s_and0000 [1]),
    .I1(\if_id/q[14] ),
    .I2(\ID/addOffset/co_3 ),
    .I3(\if_id/q[48] ),
    .O(\IF/PC_in<17>_map21 )
  );
  defparam \RegWriteData_wb<23>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<23>1  (
    .I0(MemDout_wb_23_OBUF_12),
    .I1(\Data_mem_wb/q [23]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[23])
  );
  defparam \EX/ALU_B<26>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<26>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[26]),
    .O(ALU_B_26_OBUF_73)
  );
  defparam \EX/ALU_B<25>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<25>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[25]),
    .O(ALU_B_25_OBUF_74)
  );
  defparam \IF/pcAdd4/mux_5/out<3>11 .INIT = 16'h7FFF;
  LUT4 \IF/pcAdd4/mux_5/out<3>11  (
    .I0(\IF/PC [22]),
    .I1(\IF/PC [21]),
    .I2(\IF/PC [20]),
    .I3(N11810),
    .O(\IF/pcAdd4/N23 )
  );
  defparam \EX/ALU/adder/mux_1/out<2>1_SW0 .INIT = 16'hE888;
  LUT4 \EX/ALU/adder/mux_1/out<2>1_SW0  (
    .I0(\EX/ALU/_xor0000 [5]),
    .I1(ALU_A_5_OBUF_62),
    .I2(\EX/ALU/_xor0000 [4]),
    .I3(ALU_A_4_OBUF_63),
    .O(N4232)
  );
  defparam \EX/ALU/adder/mux_1/out<2>1_SW1 .INIT = 16'hFCE8;
  LUT4 \EX/ALU/adder/mux_1/out<2>1_SW1  (
    .I0(\EX/ALU/_xor0000 [4]),
    .I1(\EX/ALU/_xor0000 [5]),
    .I2(ALU_A_5_OBUF_62),
    .I3(ALU_A_4_OBUF_63),
    .O(N4233)
  );
  defparam \IF/pcAdd4/adder_0/C<3>1 .INIT = 4'h8;
  LUT2 \IF/pcAdd4/adder_0/C<3>1  (
    .I0(\IF/PC [3]),
    .I1(\IF/PC [2]),
    .O(\IF/pcAdd4/co_0 )
  );
  defparam \IF/pcAdd4/mux_7/out<3>2 .INIT = 4'h9;
  LUT2 \IF/pcAdd4/mux_7/out<3>2  (
    .I0(\IF/PC [31]),
    .I1(N11813),
    .O(NextPC_if[31])
  );
  defparam \EX/ALU/result_final<7>65 .INIT = 16'hBAAA;
  LUT4 \EX/ALU/result_final<7>65  (
    .I0(\EX/ALU/result_final<7>_map14 ),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/N75 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[39] ),
    .O(\EX/ALU/result_final<7>_map18 )
  );
  defparam \EX/ALU/result_final<6>65 .INIT = 16'hBAAA;
  LUT4 \EX/ALU/result_final<6>65  (
    .I0(\EX/ALU/result_final<6>_map14 ),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/N75 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[38] ),
    .O(\EX/ALU/result_final<6>_map18 )
  );
  defparam \EX/ALU_B<24>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<24>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[24]),
    .O(ALU_B_24_OBUF_75)
  );
  defparam \EX/ALU/result_final<8>70 .INIT = 16'hBAAA;
  LUT4 \EX/ALU/result_final<8>70  (
    .I0(\EX/ALU/result_final<8>_map16 ),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/N75 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[40] ),
    .O(\EX/ALU/result_final<8>_map20 )
  );
  defparam \EX/ALU/result_final<8>212 .INIT = 16'h8228;
  LUT4 \EX/ALU/result_final<8>212  (
    .I0(\EX/ALU/N0 ),
    .I1(ALU_A_8_OBUF_59),
    .I2(\EX/ALU/_xor0000 [8]),
    .I3(N11785),
    .O(\EX/ALU/result_final<8>_map52 )
  );
  defparam \EX/ALU_B<23>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<23>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[23]),
    .O(ALU_B_23_OBUF_76)
  );
  defparam \EX/ALU_A<22> .INIT = 16'h0151;
  LUT4 \EX/ALU_A<22>  (
    .I0(\EX_id_ex/q [2]),
    .I1(N4702),
    .I2(\EX/ForwardA [0]),
    .I3(N4703),
    .O(ALU_A_22_OBUF_45)
  );
  defparam \EX/ALU_A<21> .INIT = 16'h0151;
  LUT4 \EX/ALU_A<21>  (
    .I0(\EX_id_ex/q [2]),
    .I1(N4705),
    .I2(\EX/ForwardA [0]),
    .I3(N4706),
    .O(ALU_A_21_OBUF_46)
  );
  defparam \EX/ALU/result_final<9>70 .INIT = 16'hBAAA;
  LUT4 \EX/ALU/result_final<9>70  (
    .I0(\EX/ALU/result_final<9>_map16 ),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/N75 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[41] ),
    .O(\EX/ALU/result_final<9>_map20 )
  );
  defparam \EX/ALU/result_final<9>213 .INIT = 16'h566A;
  LUT4 \EX/ALU/result_final<9>213  (
    .I0(\EX/ALU/adder/adder_20/s_and0000 [1]),
    .I1(\EX/ALU/_xor0000 [8]),
    .I2(\EX/ALU/adder/co_1 ),
    .I3(ALU_A_8_OBUF_59),
    .O(\EX/ALU/result_final<9>_map54 )
  );
  defparam \RegWriteData_wb<22>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<22>1  (
    .I0(MemDout_wb_22_OBUF_13),
    .I1(\Data_mem_wb/q [22]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[22])
  );
  defparam \RegWriteData_wb<21>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<21>1  (
    .I0(MemDout_wb_21_OBUF_14),
    .I1(\Data_mem_wb/q [21]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[21])
  );
  defparam \RegWriteData_wb<20>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<20>1  (
    .I0(MemDout_wb_20_OBUF_15),
    .I1(\Data_mem_wb/q [20]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[20])
  );
  defparam \RegWriteData_wb<19>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<19>1  (
    .I0(MemDout_wb_19_OBUF_16),
    .I1(\Data_mem_wb/q [19]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[19])
  );
  defparam \EX/ALU/result_final<11>65 .INIT = 16'hBAAA;
  LUT4 \EX/ALU/result_final<11>65  (
    .I0(\EX/ALU/result_final<11>_map14 ),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/N75 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[43] ),
    .O(\EX/ALU/result_final<11>_map18 )
  );
  defparam \EX/ALU/result_final<11>151 .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<11>151  (
    .I0(\EX/ALU/N90 ),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[19] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[23] ),
    .O(\EX/ALU/result_final<11>_map37 )
  );
  defparam \EX/ALU/result_final<10>103 .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<10>103  (
    .I0(N11722),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[18] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[22] ),
    .O(\EX/ALU/result_final<10>_map26 )
  );
  defparam \EX/ALU_B<22>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<22>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[22]),
    .O(ALU_B_22_OBUF_77)
  );
  defparam \EX/ALU_B<21>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<21>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[21]),
    .O(ALU_B_21_OBUF_78)
  );
  defparam \EX/ALU/adder/mux_2/out<2>1_SW1 .INIT = 16'hFCE8;
  LUT4 \EX/ALU/adder/mux_2/out<2>1_SW1  (
    .I0(\EX/ALU/_xor0000 [8]),
    .I1(\EX/ALU/_xor0000 [9]),
    .I2(ALU_A_9_OBUF_58),
    .I3(ALU_A_8_OBUF_59),
    .O(N5448)
  );
  defparam \EX/ALU_B<20>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<20>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[20]),
    .O(ALU_B_20_OBUF_79)
  );
  defparam \EX/ALU/result_final<12>108 .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<12>108  (
    .I0(\EX/ALU/N82 ),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[16] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[24] ),
    .O(\EX/ALU/result_final<12>_map28 )
  );
  defparam \EX/ALU/result_final<13>132 .INIT = 16'hFFEA;
  LUT4 \EX/ALU/result_final<13>132  (
    .I0(\EX/ALU/N58 ),
    .I1(\EX/ALU/N83 ),
    .I2(\EX/ALU/result_final<13>_map29 ),
    .I3(\EX/ALU/result_final<13>_map18 ),
    .O(\EX/ALU/result_final<13>_map31 )
  );
  defparam \EX/ALU/result_final<13>157 .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<13>157  (
    .I0(\EX/ALU/N90 ),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[21] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[25] ),
    .O(\EX/ALU/result_final<13>_map38 )
  );
  defparam \EX/ALU/result_final<13>182 .INIT = 16'hAAA8;
  LUT4 \EX/ALU/result_final<13>182  (
    .I0(\EX/ALU/N88 ),
    .I1(\EX/ALU/result_final<13>_map38 ),
    .I2(\EX/ALU/result_final<13>_map33 ),
    .I3(\EX/ALU/result_final<13>_map41 ),
    .O(\EX/ALU/result_final<13>_map43 )
  );
  defparam \RegWriteData_wb<18>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<18>1  (
    .I0(MemDout_wb_18_OBUF_17),
    .I1(\Data_mem_wb/q [18]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[18])
  );
  defparam \RegWriteData_wb<17>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<17>1  (
    .I0(MemDout_wb_17_OBUF_18),
    .I1(\Data_mem_wb/q [17]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[17])
  );
  defparam \EX/ALU_B<19>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<19>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[19]),
    .O(ALU_B_19_OBUF_80)
  );
  defparam \RegWriteData_wb<16>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<16>1  (
    .I0(MemDout_wb_16_OBUF_19),
    .I1(\Data_mem_wb/q [16]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[16])
  );
  defparam \IF/PC_in<24>51 .INIT = 8'h96;
  LUT3 \IF/PC_in<24>51  (
    .I0(\if_id/q[56] ),
    .I1(\if_id/q[15] ),
    .I2(\ID/addOffset/co_5 ),
    .O(\IF/PC_in<24>_map18 )
  );
  defparam \RegWriteData_wb<15>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<15>1  (
    .I0(MemDout_wb_15_OBUF_20),
    .I1(\Data_mem_wb/q [15]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[15])
  );
  defparam \EX/ALU/result_final<15>96 .INIT = 16'hFFEA;
  LUT4 \EX/ALU/result_final<15>96  (
    .I0(\EX/ALU/N80 ),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[55] ),
    .I2(\EX/ALU/N90 ),
    .I3(\EX/ALU/result_final<15>_map23 ),
    .O(\EX/ALU/result_final<15>_map24 )
  );
  defparam \EX/ALU/result_final<14>101 .INIT = 16'hFFF8;
  LUT4 \EX/ALU/result_final<14>101  (
    .I0(\EX/ALU/N90 ),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[54] ),
    .I2(\EX/ALU/result_final<14>_map25 ),
    .I3(\EX/ALU/result_final<14>_map21 ),
    .O(\EX/ALU/result_final<14>_map26 )
  );
  defparam \EX/ALU/result_final<14>134 .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<14>134  (
    .I0(N11717),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[18] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[26] ),
    .O(\EX/ALU/result_final<14>_map36 )
  );
  defparam \EX/ALU/result_final<14>158 .INIT = 16'hEAC0;
  LUT4 \EX/ALU/result_final<14>158  (
    .I0(\EX/ALU/N83 ),
    .I1(\EX/ALU/N88 ),
    .I2(\EX/ALU/result_final<14>_map26 ),
    .I3(\EX/ALU/result_final<14>_map37 ),
    .O(\EX/ALU/result_final<14>_map39 )
  );
  defparam \EX/ALU/adder/mux_3/out<2>1_SW0 .INIT = 16'hE888;
  LUT4 \EX/ALU/adder/mux_3/out<2>1_SW0  (
    .I0(ALU_A_13_OBUF_54),
    .I1(\EX/ALU/_xor0000 [13]),
    .I2(\EX/ALU/_xor0000 [12]),
    .I3(ALU_A_12_OBUF_55),
    .O(N6282)
  );
  defparam \EX/ALU/adder/mux_3/out<2>1_SW1 .INIT = 16'hFCE8;
  LUT4 \EX/ALU/adder/mux_3/out<2>1_SW1  (
    .I0(N11798),
    .I1(\EX/ALU/_xor0000 [13]),
    .I2(ALU_A_13_OBUF_54),
    .I3(ALU_A_12_OBUF_55),
    .O(N6283)
  );
  defparam \EX/ALU_B<18>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<18>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[18]),
    .O(ALU_B_18_OBUF_81)
  );
  defparam \EX/ALU_B<17>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<17>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[17]),
    .O(ALU_B_17_OBUF_82)
  );
  defparam \EX/ALU_B<16>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<16>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[16]),
    .O(ALU_B_16_OBUF_83)
  );
  defparam \EX/ALU/result_final<16>89 .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<16>89  (
    .I0(\EX/ALU/N82 ),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[12] ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[4] ),
    .O(\EX/ALU/result_final<16>_map24 )
  );
  defparam \EX/ALU/result_final<17>125 .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<17>125  (
    .I0(\EX/ALU/N82 ),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[13] ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[5] ),
    .O(\EX/ALU/result_final<17>_map34 )
  );
  defparam \RegWriteData_wb<14>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<14>1  (
    .I0(MemDout_wb_14_OBUF_21),
    .I1(\Data_mem_wb/q [14]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[14])
  );
  defparam \RegWriteData_wb<13>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<13>1  (
    .I0(MemDout_wb_13_OBUF_22),
    .I1(\Data_mem_wb/q [13]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[13])
  );
  defparam \EX/ALU_B<15>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<15>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[15]),
    .O(ALU_B_15_OBUF_84)
  );
  defparam \RegWriteData_wb<12>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<12>1  (
    .I0(MemDout_wb_12_OBUF_23),
    .I1(\Data_mem_wb/q [12]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[12])
  );
  defparam \RegWriteData_wb<11>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<11>1  (
    .I0(MemDout_wb_11_OBUF_24),
    .I1(\Data_mem_wb/q [11]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[11])
  );
  defparam \EX/ALU/result_final<19>65 .INIT = 16'hBAAA;
  LUT4 \EX/ALU/result_final<19>65  (
    .I0(\EX/ALU/result_final<19>_map14 ),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/N83 ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[51] ),
    .O(\EX/ALU/result_final<19>_map18 )
  );
  defparam \EX/ALU/result_final<18>65 .INIT = 16'hBAAA;
  LUT4 \EX/ALU/result_final<18>65  (
    .I0(\EX/ALU/result_final<18>_map14 ),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/N83 ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[50] ),
    .O(\EX/ALU/result_final<18>_map18 )
  );
  defparam \EX/ALU/result_final<18>116 .INIT = 8'hA8;
  LUT3 \EX/ALU/result_final<18>116  (
    .I0(\EX/ALU/N88 ),
    .I1(\EX/ALU/result_final<18>_map21 ),
    .I2(\EX/ALU/result_final<18>_map27 ),
    .O(\EX/ALU/result_final<18>_map29 )
  );
  defparam \EX/ALU_B<14>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<14>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[3] ),
    .I2(MemWriteData_ex[14]),
    .O(ALU_B_14_OBUF_85)
  );
  defparam \EX/ALU_B<13>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<13>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[13]),
    .O(ALU_B_13_OBUF_86)
  );
  defparam \EX/ALU_B<12>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<12>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[1] ),
    .I2(MemWriteData_ex[12]),
    .O(ALU_B_12_OBUF_87)
  );
  defparam \EX/ALU/result_final<20>86 .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<20>86  (
    .I0(\EX/ALU/N78 ),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[20] ),
    .I3(N11753),
    .O(\EX/ALU/result_final<20>_map23 )
  );
  defparam \EX/ALU/result_final<20>108 .INIT = 16'hFFEA;
  LUT4 \EX/ALU/result_final<20>108  (
    .I0(\EX/ALU/N58 ),
    .I1(\EX/ALU/N75 ),
    .I2(\EX/ALU/result_final<20>_map24 ),
    .I3(\EX/ALU/result_final<20>_map14 ),
    .O(\EX/ALU/result_final<20>_map26 )
  );
  defparam \EX/ALU/result_final<20>126 .INIT = 16'hFFEA;
  LUT4 \EX/ALU/result_final<20>126  (
    .I0(\EX/ALU/N80 ),
    .I1(\EX/ALU/N90 ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[60] ),
    .I3(\EX/ALU/result_final<20>_map28 ),
    .O(\EX/ALU/result_final<20>_map31 )
  );
  defparam \EX/ALU/result_final<21>86 .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<21>86  (
    .I0(\EX/ALU/N78 ),
    .I1(ALU_A_3_OBUF_64),
    .I2(N11728),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[13] ),
    .O(\EX/ALU/result_final<21>_map23 )
  );
  defparam \EX/ALU/result_final<21>108 .INIT = 16'hFFEA;
  LUT4 \EX/ALU/result_final<21>108  (
    .I0(\EX/ALU/N58 ),
    .I1(\EX/ALU/N75 ),
    .I2(\EX/ALU/result_final<21>_map24 ),
    .I3(\EX/ALU/result_final<21>_map14 ),
    .O(\EX/ALU/result_final<21>_map26 )
  );
  defparam \ID/addOffset/mux_7/out<3>1_SW0 .INIT = 8'hFE;
  LUT3 \ID/addOffset/mux_7/out<3>1_SW0  (
    .I0(\if_id/q[62] ),
    .I1(\if_id/q[61] ),
    .I2(\if_id/q[60] ),
    .O(N7481)
  );
  defparam \ID/addOffset/mux_7/out<3>1_SW1 .INIT = 8'h80;
  LUT3 \ID/addOffset/mux_7/out<3>1_SW1  (
    .I0(\if_id/q[62] ),
    .I1(\if_id/q[61] ),
    .I2(\if_id/q[60] ),
    .O(N7482)
  );
  defparam \RegWriteData_wb<9>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<9>1  (
    .I0(MemDout_wb_9_OBUF_26),
    .I1(\Data_mem_wb/q [9]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[9])
  );
  defparam \RegWriteData_wb<10>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<10>1  (
    .I0(MemDout_wb_10_OBUF_25),
    .I1(\Data_mem_wb/q [10]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[10])
  );
  defparam \ID/addOffset/mux_6/out<3>1_SW0 .INIT = 8'hFE;
  LUT3 \ID/addOffset/mux_6/out<3>1_SW0  (
    .I0(\if_id/q[58] ),
    .I1(\if_id/q[57] ),
    .I2(\if_id/q[56] ),
    .O(N7490)
  );
  defparam \ID/addOffset/mux_6/out<3>1_SW1 .INIT = 8'h80;
  LUT3 \ID/addOffset/mux_6/out<3>1_SW1  (
    .I0(\if_id/q[58] ),
    .I1(\if_id/q[57] ),
    .I2(\if_id/q[56] ),
    .O(N7491)
  );
  defparam \ID/addOffset/mux_1/out<3>165 .INIT = 16'h1700;
  LUT4 \ID/addOffset/mux_1/out<3>165  (
    .I0(\if_id/q[36] ),
    .I1(\if_id/q[2] ),
    .I2(\ID/addOffset/co_0 ),
    .I3(\ID/addOffset/mux_1/out<3>1_map26 ),
    .O(\ID/addOffset/mux_1/out<3>1_map27 )
  );
  defparam \EX/ALU_B<11>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<11>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[0] ),
    .I2(MemWriteData_ex[11]),
    .O(ALU_B_11_OBUF_88)
  );
  defparam \ID/addOffset/mux_2/out<3>157 .INIT = 16'h135F;
  LUT4 \ID/addOffset/mux_2/out<3>157  (
    .I0(\if_id/q[42] ),
    .I1(\if_id/q[41] ),
    .I2(\if_id/q[15] ),
    .I3(\if_id/q[7] ),
    .O(\ID/addOffset/mux_2/out<3>1_map26 )
  );
  defparam \RegWriteData_wb<8>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<8>1  (
    .I0(MemDout_wb_8_OBUF_27),
    .I1(\Data_mem_wb/q [8]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[8])
  );
  defparam \RegWriteData_wb<7>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<7>1  (
    .I0(MemDout_wb_7_OBUF_28),
    .I1(\Data_mem_wb/q [7]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[7])
  );
  defparam \EX/ALU/result_final<23>65 .INIT = 16'hBAAA;
  LUT4 \EX/ALU/result_final<23>65  (
    .I0(\EX/ALU/result_final<23>_map14 ),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/N83 ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[55] ),
    .O(\EX/ALU/result_final<23>_map18 )
  );
  defparam \EX/ALU/result_final<23>126 .INIT = 8'hA8;
  LUT3 \EX/ALU/result_final<23>126  (
    .I0(\EX/ALU/N75 ),
    .I1(\EX/ALU/result_final<23>_map31 ),
    .I2(\EX/ALU/result_final<23>_map26 ),
    .O(\EX/ALU/result_final<23>_map33 )
  );
  defparam \EX/ALU/result_final<22>89 .INIT = 16'hBAAA;
  LUT4 \EX/ALU/result_final<22>89  (
    .I0(\EX/ALU/result_final<22>_map21 ),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/N83 ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[54] ),
    .O(\EX/ALU/result_final<22>_map25 )
  );
  defparam \EX/ALU/result_final<22>127 .INIT = 8'hA8;
  LUT3 \EX/ALU/result_final<22>127  (
    .I0(N11816),
    .I1(\EX/ALU/result_final<22>_map33 ),
    .I2(\EX/ALU/result_final<22>_map28 ),
    .O(\EX/ALU/result_final<22>_map35 )
  );
  defparam \EX/ALU_B<9>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<9>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[9]),
    .O(ALU_B_9_OBUF_90)
  );
  defparam \EX/ALU_B<10>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<10>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[10]),
    .O(ALU_B_10_OBUF_89)
  );
  defparam \EX/ALU_B<8>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<8>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[8]),
    .O(ALU_B_8_OBUF_91)
  );
  defparam \EX/ALU/result_final<24>65 .INIT = 16'hBAAA;
  LUT4 \EX/ALU/result_final<24>65  (
    .I0(\EX/ALU/result_final<24>_map14 ),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/N83 ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[56] ),
    .O(\EX/ALU/result_final<24>_map18 )
  );
  defparam \EX/ALU/result_final<25>77 .INIT = 16'hFEFA;
  LUT4 \EX/ALU/result_final<25>77  (
    .I0(\EX/ALU/result_final<25>_map14 ),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[57] ),
    .I2(\EX/ALU/result_final<0>3_160 ),
    .I3(N11763),
    .O(\EX/ALU/result_final<25>_map19 )
  );
  defparam \RegWriteData_wb<6>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<6>1  (
    .I0(MemDout_wb_6_OBUF_29),
    .I1(\Data_mem_wb/q [6]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[6])
  );
  defparam \RegWriteData_wb<5>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<5>1  (
    .I0(MemDout_wb_5_OBUF_30),
    .I1(\Data_mem_wb/q [5]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[5])
  );
  defparam \EX/ALU_B<7>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<7>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Data_id_ex/q[97] ),
    .I2(MemWriteData_ex[7]),
    .O(ALU_B_7_OBUF_92)
  );
  defparam \RegWriteData_wb<4>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<4>1  (
    .I0(MemDout_wb_4_OBUF_31),
    .I1(\Data_mem_wb/q [4]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[4])
  );
  defparam \EX/ALU_A<4>28 .INIT = 16'h0C0A;
  LUT4 \EX/ALU_A<4>28  (
    .I0(\Data_id_ex/q[36] ),
    .I1(\Data_ex_mem/q [41]),
    .I2(\EX/ForwardA [0]),
    .I3(\EX/ForwardA [1]),
    .O(\EX/ALU_A<4>_map11 )
  );
  defparam \RegWriteData_wb<3>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<3>1  (
    .I0(MemDout_wb_3_OBUF_32),
    .I1(\Data_mem_wb/q [3]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[3])
  );
  defparam \EX/ALU/result_final<27>65 .INIT = 16'hBAAA;
  LUT4 \EX/ALU/result_final<27>65  (
    .I0(\EX/ALU/result_final<27>_map14 ),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/N83 ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[59] ),
    .O(\EX/ALU/result_final<27>_map18 )
  );
  defparam \EX/ALU/result_final<26>65 .INIT = 16'hBAAA;
  LUT4 \EX/ALU/result_final<26>65  (
    .I0(\EX/ALU/result_final<26>_map14 ),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/N83 ),
    .I3(N11741),
    .O(\EX/ALU/result_final<26>_map18 )
  );
  defparam \EX/ALU_A<3>28 .INIT = 16'h0C0A;
  LUT4 \EX/ALU_A<3>28  (
    .I0(\Data_id_ex/q[35] ),
    .I1(\Data_ex_mem/q [40]),
    .I2(\EX/ForwardA [0]),
    .I3(\EX/ForwardA [1]),
    .O(\EX/ALU_A<3>_map11 )
  );
  defparam \EX/ALU_B<6>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<6>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Data_id_ex/q[96] ),
    .I2(MemWriteData_ex[6]),
    .O(ALU_B_6_OBUF_93)
  );
  defparam \EX/ALU_B<5>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<5>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[1] ),
    .I2(MemWriteData_ex[5]),
    .O(ALU_B_5_OBUF_94)
  );
  defparam \RegWriteData_wb<2>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<2>1  (
    .I0(MemDout_wb_2_OBUF_33),
    .I1(\Data_mem_wb/q [2]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[2])
  );
  defparam \EX/ALU_B<4>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<4>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[4]),
    .O(ALU_B_4_OBUF_95)
  );
  defparam \EX/ALU/result_final<0>531 .INIT = 4'h1;
  LUT2 \EX/ALU/result_final<0>531  (
    .I0(\EX_id_ex/q [3]),
    .I1(\EX_id_ex/q [4]),
    .O(\EX/ALU/N147 )
  );
  defparam \EX/ALU/result_final<28>100 .INIT = 8'hAC;
  LUT3 \EX/ALU/result_final<28>100  (
    .I0(ALU_B_26_OBUF_73),
    .I1(ALU_B_28_OBUF_71),
    .I2(ALU_A_1_OBUF_66),
    .O(\EX/ALU/result_final<28>_map26 )
  );
  defparam \RegWriteData_wb<1>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<1>1  (
    .I0(MemDout_wb_1_OBUF_34),
    .I1(\Data_mem_wb/q [1]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[1])
  );
  defparam \EX/ALU_B<3>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<3>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Data_id_ex/q[67] ),
    .I2(MemWriteData_ex[3]),
    .O(ALU_B_3_OBUF_96)
  );
  defparam \EX/ALU_A<1>28 .INIT = 16'h0C0A;
  LUT4 \EX/ALU_A<1>28  (
    .I0(\Data_id_ex/q[33] ),
    .I1(\Data_ex_mem/q [38]),
    .I2(\EX/ForwardA [0]),
    .I3(N11775),
    .O(\EX/ALU_A<1>_map11 )
  );
  defparam \EX/ALU/result_final<31>40 .INIT = 16'h2000;
  LUT4 \EX/ALU/result_final<31>40  (
    .I0(\EX/ALU/N79 ),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[31] ),
    .I3(N11852),
    .O(\EX/ALU/result_final<31>_map13 )
  );
  defparam \EX/ALU/result_final<31>70 .INIT = 16'hFEFC;
  LUT4 \EX/ALU/result_final<31>70  (
    .I0(\EX/ALU/result_final<31>_map19 ),
    .I1(\EX/ALU/result_final<31>_map9 ),
    .I2(\EX/ALU/result_final<31>_map13 ),
    .I3(\EX/ALU/result_final<31>_map17 ),
    .O(\EX/ALU/result_final<31>_map21 )
  );
  defparam \EX/ALU/result_final<31>88 .INIT = 8'hCA;
  LUT3 \EX/ALU/result_final<31>88  (
    .I0(ALU_B_30_OBUF_69),
    .I1(ALU_B_28_OBUF_71),
    .I2(ALU_A_1_OBUF_66),
    .O(\EX/ALU/result_final<30>_map31 )
  );
  defparam \EX/ALU/result_final<31>136 .INIT = 16'hEAC0;
  LUT4 \EX/ALU/result_final<31>136  (
    .I0(\EX/ALU/N148 ),
    .I1(\EX/ALU/N94 ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[23] ),
    .I3(\EX/ALU/result_final<31>_map34 ),
    .O(\EX/ALU/result_final<31>_map36 )
  );
  defparam \EX/ALU/result_final<31>175 .INIT = 16'hC8C0;
  LUT4 \EX/ALU/result_final<31>175  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/N75 ),
    .I2(\EX/ALU/result_final<31>_map38 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[47] ),
    .O(\EX/ALU/result_final<31>_map41 )
  );
  defparam \EX/ForwardA_0_and000123 .INIT = 16'h4010;
  LUT4 \EX/ForwardA_0_and000123  (
    .I0(\MM_mem_wb/q_2_18_171 ),
    .I1(\MM_mem_wb/q_0_18_152 ),
    .I2(\EX/ForwardA_0_and0001_map6 ),
    .I3(\Addr_id_ex/q[10] ),
    .O(\EX/ForwardA_0_and0001_map9 )
  );
  defparam \EX/ForwardA_0_and000178 .INIT = 16'h2000;
  LUT4 \EX/ForwardA_0_and000178  (
    .I0(\EX/ForwardA_0_and0001_map21 ),
    .I1(\EX/ForwardA_0_and0000 ),
    .I2(\EX/ForwardA_0_cmp_ne0001 ),
    .I3(\EX/ForwardA_0_and0001_map9 ),
    .O(\EX/ForwardA [0])
  );
  defparam \RegWriteData_wb<0>1 .INIT = 8'hAC;
  LUT3 \RegWriteData_wb<0>1  (
    .I0(MemDout_wb_0_OBUF_35),
    .I1(\Data_mem_wb/q [0]),
    .I2(\MM_mem_wb/q [6]),
    .O(RegWriteData_wb[0])
  );
  defparam \EX/ALU_B<2>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<2>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Data_id_ex/q[66] ),
    .I2(MemWriteData_ex[2]),
    .O(ALU_B_2_OBUF_97)
  );
  defparam \EX/ForwardA_0_cmp_ne000151 .INIT = 16'h6FF6;
  LUT4 \EX/ForwardA_0_cmp_ne000151  (
    .I0(\Data_ex_mem/q_0_1_137 ),
    .I1(\Addr_id_ex/q[10] ),
    .I2(\Data_ex_mem/q_3_1_150 ),
    .I3(\Addr_id_ex/q[13] ),
    .O(\EX/ForwardA_0_cmp_ne0001_map17 )
  );
  defparam \EX/ForwardA_0_cmp_ne000152 .INIT = 4'hE;
  LUT2 \EX/ForwardA_0_cmp_ne000152  (
    .I0(N11776),
    .I1(\EX/ForwardA_0_cmp_ne0001_map17 ),
    .O(\EX/ForwardA_0_cmp_ne0001 )
  );
  defparam \EX/ALU/result_final<30>91 .INIT = 16'hFFEA;
  LUT4 \EX/ALU/result_final<30>91  (
    .I0(\EX/ALU/result_final<30>_map14 ),
    .I1(\EX/ALU/N88 ),
    .I2(\EX/ALU/result_final<30>_map17 ),
    .I3(\EX/ALU/result_final<30>_map23 ),
    .O(\EX/ALU/result_final<30>_map24 )
  );
  defparam \EX/ALU/result_final<30>201 .INIT = 16'hFFEA;
  LUT4 \EX/ALU/result_final<30>201  (
    .I0(\EX/ALU/N58 ),
    .I1(\EX/ALU/N75 ),
    .I2(\EX/ALU/result_final<30>_map40 ),
    .I3(\EX/ALU/result_final<30>_map24 ),
    .O(\EX/ALU/result_final<30>_map42 )
  );
  defparam \EX/ForwardB_0_and000042 .INIT = 16'h8241;
  LUT4 \EX/ForwardB_0_and000042  (
    .I0(\MM_mem_wb/q_2_1_156 ),
    .I1(\MM_mem_wb/q_1_17_147 ),
    .I2(\Addr_id_ex/q[6] ),
    .I3(\Addr_id_ex/q[7] ),
    .O(\EX/ForwardB_0_and0000_map17 )
  );
  defparam \EX/ForwardB_0_and000061 .INIT = 16'h0090;
  LUT4 \EX/ForwardB_0_and000061  (
    .I0(\MM_mem_wb/q_3_5_146 ),
    .I1(\Addr_id_ex/q[8] ),
    .I2(\MM_mem_wb/q [5]),
    .I3(\MM_mem_wb/q [4]),
    .O(\EX/ForwardB_0_and0000_map25 )
  );
  defparam \EX/ALU_B<1>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<1>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Data_id_ex/q[65] ),
    .I2(MemWriteData_ex[1]),
    .O(ALU_B_1_OBUF_98)
  );
  defparam \EX/ALU/result_final<0>20 .INIT = 16'hA888;
  LUT4 \EX/ALU/result_final<0>20  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/N140 ),
    .I2(ALU_B_0_OBUF_99),
    .I3(\EX/ALU/N68 ),
    .O(\EX/ALU/result_final<0>_map8 )
  );
  defparam \EX/ALU/result_final<0>70 .INIT = 16'h2000;
  LUT4 \EX/ALU/result_final<0>70  (
    .I0(\EX/ALU/Mshift_result_final_shift0003_Sh[0] ),
    .I1(ALU_A_4_OBUF_63),
    .I2(N11719),
    .I3(\EX/ALU/result_final<0>61_165 ),
    .O(\EX/ALU/result_final<0>_map20 )
  );
  defparam \EX/ALU/result_final<0>146 .INIT = 16'h4884;
  LUT4 \EX/ALU/result_final<0>146  (
    .I0(\EX/ALU/result_final_cmp_eq0000 ),
    .I1(\EX/ALU/N0 ),
    .I2(ALU_A_0_OBUF_67),
    .I3(N11779),
    .O(\EX/ALU/result_final<0>_map36 )
  );
  defparam \EX/ALU/result_final<0>183 .INIT = 16'hE040;
  LUT4 \EX/ALU/result_final<0>183  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/N22 ),
    .I2(N11832),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[4] ),
    .O(\EX/ALU/result_final<0>_map44 )
  );
  defparam \EX/ALU/result_final<0>290 .INIT = 16'hC8C0;
  LUT4 \EX/ALU/result_final<0>290  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/N83 ),
    .I2(\EX/ALU/result_final<0>_map62 ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[48] ),
    .O(\EX/ALU/result_final<0>_map65 )
  );
  defparam \EX/ALU/result_final<0>346 .INIT = 8'h20;
  LUT3 \EX/ALU/result_final<0>346  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [5]),
    .I2(\EX_id_ex/q [3]),
    .O(\EX/ALU/result_final<0>_map81 )
  );
  defparam \EX/ALU/result_final<0>373 .INIT = 4'h4;
  LUT2 \EX/ALU/result_final<0>373  (
    .I0(\EX_id_ex/q [6]),
    .I1(\EX_id_ex/q [7]),
    .O(\EX/ALU/result_final<0>_map85 )
  );
  defparam \EX/ALU/result_final<0>391 .INIT = 16'hEEEC;
  LUT4 \EX/ALU/result_final<0>391  (
    .I0(\EX/ALU/result_final<0>_map85 ),
    .I1(\EX/ALU/result_final<0>_map66 ),
    .I2(\EX/ALU/result_final<0>_map73 ),
    .I3(\EX/ALU/result_final<0>_map82 ),
    .O(ALUResult_0_OBUF_131)
  );
  defparam \EX/ALU/adder/mux_7/out<3>124 .INIT = 16'h0157;
  LUT4 \EX/ALU/adder/mux_7/out<3>124  (
    .I0(ALU_A_30_OBUF_37),
    .I1(ALU_A_29_OBUF_38),
    .I2(\EX/ALU/_xor0000 [29]),
    .I3(N11835),
    .O(\EX/ALU/adder/mux_7/out<3>1_map10 )
  );
  defparam \EX/ALU/adder/mux_7/out<3>157 .INIT = 16'h153F;
  LUT4 \EX/ALU/adder/mux_7/out<3>157  (
    .I0(ALU_A_30_OBUF_37),
    .I1(ALU_A_29_OBUF_38),
    .I2(N11836),
    .I3(\EX/ALU/_xor0000 [30]),
    .O(\EX/ALU/adder/mux_7/out<3>1_map26 )
  );
  defparam \EX/ALU/adder/mux_6/out<3>124 .INIT = 16'h0157;
  LUT4 \EX/ALU/adder/mux_6/out<3>124  (
    .I0(ALU_A_26_OBUF_41),
    .I1(ALU_A_25_OBUF_42),
    .I2(N11829),
    .I3(\EX/ALU/_xor0000 [26]),
    .O(\EX/ALU/adder/mux_6/out<3>1_map10 )
  );
  defparam \EX/ALU/adder/mux_6/out<3>157 .INIT = 16'h153F;
  LUT4 \EX/ALU/adder/mux_6/out<3>157  (
    .I0(ALU_A_26_OBUF_41),
    .I1(ALU_A_25_OBUF_42),
    .I2(\EX/ALU/_xor0000 [25]),
    .I3(N11828),
    .O(\EX/ALU/adder/mux_6/out<3>1_map26 )
  );
  defparam \EX/ForwardB_0_cmp_ne000048 .INIT = 16'h2F22;
  LUT4 \EX/ForwardB_0_cmp_ne000048  (
    .I0(\Data_ex_mem/q_0_2_141 ),
    .I1(\Addr_id_ex/q[5] ),
    .I2(\Data_ex_mem/q_3_1_150 ),
    .I3(\Addr_id_ex/q[8] ),
    .O(\EX/ForwardB_0_cmp_ne0000_map16 )
  );
  defparam \EX/ALU_B<0>1 .INIT = 8'hD8;
  LUT3 \EX/ALU_B<0>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Data_id_ex/q[64] ),
    .I2(MemWriteData_ex[0]),
    .O(ALU_B_0_OBUF_99)
  );
  defparam \EX/ALU/adder/adder_0/C<3>1 .INIT = 8'hE8;
  LUT3 \EX/ALU/adder/adder_0/C<3>1  (
    .I0(\EX/ALU/_xor0000 [3]),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/adder/adder_0/C [2]),
    .O(\EX/ALU/adder/co_0 )
  );
  defparam \EX/ALU/adder/adder_0/C<1>1 .INIT = 8'hE8;
  LUT3 \EX/ALU/adder/adder_0/C<1>1  (
    .I0(\EX/ALU/_xor0000 [1]),
    .I1(\EX/ALU_A<1>59_155 ),
    .I2(N11786),
    .O(\EX/ALU/adder/adder_0/C [1])
  );
  defparam \EX/ForwardB_1_and0000 .INIT = 16'h0C08;
  LUT4 \EX/ForwardB_1_and0000  (
    .I0(\Data_ex_mem/q [1]),
    .I1(\WB_ex_mem/q [0]),
    .I2(\EX/ForwardB_0_cmp_ne0000 ),
    .I3(N9236),
    .O(\EX/ForwardB [1])
  );
  defparam \EX/ALU/adder/mux_5/out<3>124 .INIT = 16'h0157;
  LUT4 \EX/ALU/adder/mux_5/out<3>124  (
    .I0(ALU_A_22_OBUF_45),
    .I1(ALU_A_21_OBUF_46),
    .I2(\EX/ALU/_xor0000 [21]),
    .I3(N11807),
    .O(\EX/ALU/adder/mux_5/out<3>1_map10 )
  );
  defparam \EX/ALU/adder/mux_4/out<3>124 .INIT = 16'h0157;
  LUT4 \EX/ALU/adder/mux_4/out<3>124  (
    .I0(ALU_A_18_OBUF_49),
    .I1(ALU_A_17_OBUF_50),
    .I2(\EX/ALU/_xor0000 [17]),
    .I3(N11800),
    .O(\EX/ALU/adder/mux_4/out<3>1_map10 )
  );
  defparam \EX/ALU/adder/mux_1/out<3>124 .INIT = 16'h0157;
  LUT4 \EX/ALU/adder/mux_1/out<3>124  (
    .I0(ALU_A_6_OBUF_61),
    .I1(ALU_A_5_OBUF_62),
    .I2(\EX/ALU/_xor0000 [5]),
    .I3(N11782),
    .O(\EX/ALU/adder/mux_1/out<3>1_map10 )
  );
  defparam \EX/ALU/adder/mux_1/out<3>157 .INIT = 16'h153F;
  LUT4 \EX/ALU/adder/mux_1/out<3>157  (
    .I0(ALU_A_6_OBUF_61),
    .I1(ALU_A_5_OBUF_62),
    .I2(N11783),
    .I3(\EX/ALU/_xor0000 [6]),
    .O(\EX/ALU/adder/mux_1/out<3>1_map26 )
  );
  defparam \EX/ALU/adder/mux_3/out<3>124 .INIT = 16'h0157;
  LUT4 \EX/ALU/adder/mux_3/out<3>124  (
    .I0(ALU_A_14_OBUF_53),
    .I1(ALU_A_13_OBUF_54),
    .I2(\EX/ALU/_xor0000 [13]),
    .I3(N11796),
    .O(\EX/ALU/adder/mux_3/out<3>1_map10 )
  );
  defparam \EX/ALU/adder/mux_3/out<3>157 .INIT = 16'h153F;
  LUT4 \EX/ALU/adder/mux_3/out<3>157  (
    .I0(ALU_A_14_OBUF_53),
    .I1(ALU_A_13_OBUF_54),
    .I2(N11797),
    .I3(\EX/ALU/_xor0000 [14]),
    .O(\EX/ALU/adder/mux_3/out<3>1_map26 )
  );
  defparam \EX/ALU/adder/mux_2/out<3>124 .INIT = 16'h0157;
  LUT4 \EX/ALU/adder/mux_2/out<3>124  (
    .I0(ALU_A_10_OBUF_57),
    .I1(ALU_A_9_OBUF_58),
    .I2(\EX/ALU/_xor0000 [9]),
    .I3(N11791),
    .O(\EX/ALU/adder/mux_2/out<3>1_map10 )
  );
  defparam \EX/ALU/adder/mux_2/out<3>157 .INIT = 16'h153F;
  LUT4 \EX/ALU/adder/mux_2/out<3>157  (
    .I0(ALU_A_10_OBUF_57),
    .I1(ALU_A_9_OBUF_58),
    .I2(N11790),
    .I3(\EX/ALU/_xor0000 [10]),
    .O(\EX/ALU/adder/mux_2/out<3>1_map26 )
  );
  IBUF reset_IBUF (
    .I(reset),
    .O(reset_IBUF_1)
  );
  OBUF Stall_OBUF (
    .I(Stall_OBUF_2),
    .O(Stall)
  );
  OBUF JumpFlag_2_OBUF (
    .I(JR),
    .O(JumpFlag[2])
  );
  OBUF JumpFlag_1_OBUF (
    .I(J),
    .O(JumpFlag[1])
  );
  OBUF JumpFlag_0_OBUF (
    .I(Z),
    .O(JumpFlag[0])
  );
  OBUF PC_31_OBUF (
    .I(\IF/PC [31]),
    .O(PC[31])
  );
  OBUF PC_30_OBUF (
    .I(\IF/PC [30]),
    .O(PC[30])
  );
  OBUF PC_29_OBUF (
    .I(\IF/PC [29]),
    .O(PC[29])
  );
  OBUF PC_28_OBUF (
    .I(\IF/PC [28]),
    .O(PC[28])
  );
  OBUF PC_27_OBUF (
    .I(\IF/PC [27]),
    .O(PC[27])
  );
  OBUF PC_26_OBUF (
    .I(\IF/PC [26]),
    .O(PC[26])
  );
  OBUF PC_25_OBUF (
    .I(\IF/PC [25]),
    .O(PC[25])
  );
  OBUF PC_24_OBUF (
    .I(\IF/PC [24]),
    .O(PC[24])
  );
  OBUF PC_23_OBUF (
    .I(\IF/PC [23]),
    .O(PC[23])
  );
  OBUF PC_22_OBUF (
    .I(\IF/PC [22]),
    .O(PC[22])
  );
  OBUF PC_21_OBUF (
    .I(\IF/PC [21]),
    .O(PC[21])
  );
  OBUF PC_20_OBUF (
    .I(\IF/PC [20]),
    .O(PC[20])
  );
  OBUF PC_19_OBUF (
    .I(\IF/PC [19]),
    .O(PC[19])
  );
  OBUF PC_18_OBUF (
    .I(\IF/PC [18]),
    .O(PC[18])
  );
  OBUF PC_17_OBUF (
    .I(\IF/PC [17]),
    .O(PC[17])
  );
  OBUF PC_16_OBUF (
    .I(\IF/PC [16]),
    .O(PC[16])
  );
  OBUF PC_15_OBUF (
    .I(\IF/PC [15]),
    .O(PC[15])
  );
  OBUF PC_14_OBUF (
    .I(\IF/PC [14]),
    .O(PC[14])
  );
  OBUF PC_13_OBUF (
    .I(\IF/PC [13]),
    .O(PC[13])
  );
  OBUF PC_12_OBUF (
    .I(\IF/PC [12]),
    .O(PC[12])
  );
  OBUF PC_11_OBUF (
    .I(\IF/PC [11]),
    .O(PC[11])
  );
  OBUF PC_10_OBUF (
    .I(\IF/PC [10]),
    .O(PC[10])
  );
  OBUF PC_9_OBUF (
    .I(\IF/PC [9]),
    .O(PC[9])
  );
  OBUF PC_8_OBUF (
    .I(\IF/PC [8]),
    .O(PC[8])
  );
  OBUF PC_7_OBUF (
    .I(\IF/PC [7]),
    .O(PC[7])
  );
  OBUF PC_6_OBUF (
    .I(\IF/PC [6]),
    .O(PC[6])
  );
  OBUF PC_5_OBUF (
    .I(\IF/PC [5]),
    .O(PC[5])
  );
  OBUF PC_4_OBUF (
    .I(\IF/PC [4]),
    .O(PC[4])
  );
  OBUF PC_3_OBUF (
    .I(\IF/PC [3]),
    .O(PC[3])
  );
  OBUF PC_2_OBUF (
    .I(\IF/PC [2]),
    .O(PC[2])
  );
  OBUF PC_1_OBUF (
    .I(\IF/PC [1]),
    .O(PC[1])
  );
  OBUF PC_0_OBUF (
    .I(\IF/PC [0]),
    .O(PC[0])
  );
  OBUF Instruction_id_31_OBUF (
    .I(\if_id/q[31] ),
    .O(Instruction_id[31])
  );
  OBUF Instruction_id_30_OBUF (
    .I(Instruction_id_20_OBUF_3),
    .O(Instruction_id[30])
  );
  OBUF Instruction_id_29_OBUF (
    .I(\if_id/q[29] ),
    .O(Instruction_id[29])
  );
  OBUF Instruction_id_28_OBUF (
    .I(\if_id/q[28] ),
    .O(Instruction_id[28])
  );
  OBUF Instruction_id_27_OBUF (
    .I(\if_id/q[27] ),
    .O(Instruction_id[27])
  );
  OBUF Instruction_id_26_OBUF (
    .I(\if_id/q[26] ),
    .O(Instruction_id[26])
  );
  OBUF Instruction_id_25_OBUF (
    .I(Instruction_id_20_OBUF_3),
    .O(Instruction_id[25])
  );
  OBUF Instruction_id_24_OBUF (
    .I(\if_id/q[24] ),
    .O(Instruction_id[24])
  );
  OBUF Instruction_id_23_OBUF (
    .I(Instruction_id_20_OBUF_3),
    .O(Instruction_id[23])
  );
  OBUF Instruction_id_22_OBUF (
    .I(\if_id/q[22] ),
    .O(Instruction_id[22])
  );
  OBUF Instruction_id_21_OBUF (
    .I(\if_id/q[21] ),
    .O(Instruction_id[21])
  );
  OBUF Instruction_id_20_OBUF (
    .I(Instruction_id_20_OBUF_3),
    .O(Instruction_id[20])
  );
  OBUF Instruction_id_19_OBUF (
    .I(\if_id/q[19] ),
    .O(Instruction_id[19])
  );
  OBUF Instruction_id_18_OBUF (
    .I(\if_id/q[18] ),
    .O(Instruction_id[18])
  );
  OBUF Instruction_id_17_OBUF (
    .I(\if_id/q[17] ),
    .O(Instruction_id[17])
  );
  OBUF Instruction_id_16_OBUF (
    .I(\if_id/q[16] ),
    .O(Instruction_id[16])
  );
  OBUF Instruction_id_15_OBUF (
    .I(\if_id/q[15] ),
    .O(Instruction_id[15])
  );
  OBUF Instruction_id_14_OBUF (
    .I(\if_id/q[14] ),
    .O(Instruction_id[14])
  );
  OBUF Instruction_id_13_OBUF (
    .I(\if_id/q[15] ),
    .O(Instruction_id[13])
  );
  OBUF Instruction_id_12_OBUF (
    .I(\if_id/q[12] ),
    .O(Instruction_id[12])
  );
  OBUF Instruction_id_11_OBUF (
    .I(\if_id/q[11] ),
    .O(Instruction_id[11])
  );
  OBUF Instruction_id_10_OBUF (
    .I(\if_id/q[15] ),
    .O(Instruction_id[10])
  );
  OBUF Instruction_id_9_OBUF (
    .I(\if_id/q[15] ),
    .O(Instruction_id[9])
  );
  OBUF Instruction_id_8_OBUF (
    .I(\if_id/q[15] ),
    .O(Instruction_id[8])
  );
  OBUF Instruction_id_7_OBUF (
    .I(\if_id/q[7] ),
    .O(Instruction_id[7])
  );
  OBUF Instruction_id_6_OBUF (
    .I(\if_id/q[6] ),
    .O(Instruction_id[6])
  );
  OBUF Instruction_id_5_OBUF (
    .I(\if_id/q[12] ),
    .O(Instruction_id[5])
  );
  OBUF Instruction_id_4_OBUF (
    .I(\if_id/q[15] ),
    .O(Instruction_id[4])
  );
  OBUF Instruction_id_3_OBUF (
    .I(\if_id/q[3] ),
    .O(Instruction_id[3])
  );
  OBUF Instruction_id_2_OBUF (
    .I(\if_id/q[2] ),
    .O(Instruction_id[2])
  );
  OBUF Instruction_id_1_OBUF (
    .I(\if_id/q[1] ),
    .O(Instruction_id[1])
  );
  OBUF Instruction_id_0_OBUF (
    .I(\if_id/q[0] ),
    .O(Instruction_id[0])
  );
  OBUF MemDout_wb_31_OBUF (
    .I(MemDout_wb_31_OBUF_4),
    .O(MemDout_wb[31])
  );
  OBUF MemDout_wb_30_OBUF (
    .I(MemDout_wb_30_OBUF_5),
    .O(MemDout_wb[30])
  );
  OBUF MemDout_wb_29_OBUF (
    .I(MemDout_wb_29_OBUF_6),
    .O(MemDout_wb[29])
  );
  OBUF MemDout_wb_28_OBUF (
    .I(MemDout_wb_28_OBUF_7),
    .O(MemDout_wb[28])
  );
  OBUF MemDout_wb_27_OBUF (
    .I(MemDout_wb_27_OBUF_8),
    .O(MemDout_wb[27])
  );
  OBUF MemDout_wb_26_OBUF (
    .I(MemDout_wb_26_OBUF_9),
    .O(MemDout_wb[26])
  );
  OBUF MemDout_wb_25_OBUF (
    .I(MemDout_wb_25_OBUF_10),
    .O(MemDout_wb[25])
  );
  OBUF MemDout_wb_24_OBUF (
    .I(MemDout_wb_24_OBUF_11),
    .O(MemDout_wb[24])
  );
  OBUF MemDout_wb_23_OBUF (
    .I(MemDout_wb_23_OBUF_12),
    .O(MemDout_wb[23])
  );
  OBUF MemDout_wb_22_OBUF (
    .I(MemDout_wb_22_OBUF_13),
    .O(MemDout_wb[22])
  );
  OBUF MemDout_wb_21_OBUF (
    .I(MemDout_wb_21_OBUF_14),
    .O(MemDout_wb[21])
  );
  OBUF MemDout_wb_20_OBUF (
    .I(MemDout_wb_20_OBUF_15),
    .O(MemDout_wb[20])
  );
  OBUF MemDout_wb_19_OBUF (
    .I(MemDout_wb_19_OBUF_16),
    .O(MemDout_wb[19])
  );
  OBUF MemDout_wb_18_OBUF (
    .I(MemDout_wb_18_OBUF_17),
    .O(MemDout_wb[18])
  );
  OBUF MemDout_wb_17_OBUF (
    .I(MemDout_wb_17_OBUF_18),
    .O(MemDout_wb[17])
  );
  OBUF MemDout_wb_16_OBUF (
    .I(MemDout_wb_16_OBUF_19),
    .O(MemDout_wb[16])
  );
  OBUF MemDout_wb_15_OBUF (
    .I(MemDout_wb_15_OBUF_20),
    .O(MemDout_wb[15])
  );
  OBUF MemDout_wb_14_OBUF (
    .I(MemDout_wb_14_OBUF_21),
    .O(MemDout_wb[14])
  );
  OBUF MemDout_wb_13_OBUF (
    .I(MemDout_wb_13_OBUF_22),
    .O(MemDout_wb[13])
  );
  OBUF MemDout_wb_12_OBUF (
    .I(MemDout_wb_12_OBUF_23),
    .O(MemDout_wb[12])
  );
  OBUF MemDout_wb_11_OBUF (
    .I(MemDout_wb_11_OBUF_24),
    .O(MemDout_wb[11])
  );
  OBUF MemDout_wb_10_OBUF (
    .I(MemDout_wb_10_OBUF_25),
    .O(MemDout_wb[10])
  );
  OBUF MemDout_wb_9_OBUF (
    .I(MemDout_wb_9_OBUF_26),
    .O(MemDout_wb[9])
  );
  OBUF MemDout_wb_8_OBUF (
    .I(MemDout_wb_8_OBUF_27),
    .O(MemDout_wb[8])
  );
  OBUF MemDout_wb_7_OBUF (
    .I(MemDout_wb_7_OBUF_28),
    .O(MemDout_wb[7])
  );
  OBUF MemDout_wb_6_OBUF (
    .I(MemDout_wb_6_OBUF_29),
    .O(MemDout_wb[6])
  );
  OBUF MemDout_wb_5_OBUF (
    .I(MemDout_wb_5_OBUF_30),
    .O(MemDout_wb[5])
  );
  OBUF MemDout_wb_4_OBUF (
    .I(MemDout_wb_4_OBUF_31),
    .O(MemDout_wb[4])
  );
  OBUF MemDout_wb_3_OBUF (
    .I(MemDout_wb_3_OBUF_32),
    .O(MemDout_wb[3])
  );
  OBUF MemDout_wb_2_OBUF (
    .I(MemDout_wb_2_OBUF_33),
    .O(MemDout_wb[2])
  );
  OBUF MemDout_wb_1_OBUF (
    .I(MemDout_wb_1_OBUF_34),
    .O(MemDout_wb[1])
  );
  OBUF MemDout_wb_0_OBUF (
    .I(MemDout_wb_0_OBUF_35),
    .O(MemDout_wb[0])
  );
  OBUF ALU_A_31_OBUF (
    .I(ALU_A_31_OBUF_36),
    .O(ALU_A[31])
  );
  OBUF ALU_A_30_OBUF (
    .I(ALU_A_30_OBUF_37),
    .O(ALU_A[30])
  );
  OBUF ALU_A_29_OBUF (
    .I(ALU_A_29_OBUF_38),
    .O(ALU_A[29])
  );
  OBUF ALU_A_28_OBUF (
    .I(ALU_A_28_OBUF_39),
    .O(ALU_A[28])
  );
  OBUF ALU_A_27_OBUF (
    .I(ALU_A_27_OBUF_40),
    .O(ALU_A[27])
  );
  OBUF ALU_A_26_OBUF (
    .I(ALU_A_26_OBUF_41),
    .O(ALU_A[26])
  );
  OBUF ALU_A_25_OBUF (
    .I(ALU_A_25_OBUF_42),
    .O(ALU_A[25])
  );
  OBUF ALU_A_24_OBUF (
    .I(ALU_A_24_OBUF_43),
    .O(ALU_A[24])
  );
  OBUF ALU_A_23_OBUF (
    .I(ALU_A_23_OBUF_44),
    .O(ALU_A[23])
  );
  OBUF ALU_A_22_OBUF (
    .I(ALU_A_22_OBUF_45),
    .O(ALU_A[22])
  );
  OBUF ALU_A_21_OBUF (
    .I(ALU_A_21_OBUF_46),
    .O(ALU_A[21])
  );
  OBUF ALU_A_20_OBUF (
    .I(ALU_A_20_OBUF_47),
    .O(ALU_A[20])
  );
  OBUF ALU_A_19_OBUF (
    .I(ALU_A_19_OBUF_48),
    .O(ALU_A[19])
  );
  OBUF ALU_A_18_OBUF (
    .I(ALU_A_18_OBUF_49),
    .O(ALU_A[18])
  );
  OBUF ALU_A_17_OBUF (
    .I(ALU_A_17_OBUF_50),
    .O(ALU_A[17])
  );
  OBUF ALU_A_16_OBUF (
    .I(ALU_A_16_OBUF_51),
    .O(ALU_A[16])
  );
  OBUF ALU_A_15_OBUF (
    .I(ALU_A_15_OBUF_52),
    .O(ALU_A[15])
  );
  OBUF ALU_A_14_OBUF (
    .I(ALU_A_14_OBUF_53),
    .O(ALU_A[14])
  );
  OBUF ALU_A_13_OBUF (
    .I(ALU_A_13_OBUF_54),
    .O(ALU_A[13])
  );
  OBUF ALU_A_12_OBUF (
    .I(ALU_A_12_OBUF_55),
    .O(ALU_A[12])
  );
  OBUF ALU_A_11_OBUF (
    .I(ALU_A_11_OBUF_56),
    .O(ALU_A[11])
  );
  OBUF ALU_A_10_OBUF (
    .I(ALU_A_10_OBUF_57),
    .O(ALU_A[10])
  );
  OBUF ALU_A_9_OBUF (
    .I(ALU_A_9_OBUF_58),
    .O(ALU_A[9])
  );
  OBUF ALU_A_8_OBUF (
    .I(ALU_A_8_OBUF_59),
    .O(ALU_A[8])
  );
  OBUF ALU_A_7_OBUF (
    .I(ALU_A_7_OBUF_60),
    .O(ALU_A[7])
  );
  OBUF ALU_A_6_OBUF (
    .I(ALU_A_6_OBUF_61),
    .O(ALU_A[6])
  );
  OBUF ALU_A_5_OBUF (
    .I(ALU_A_5_OBUF_62),
    .O(ALU_A[5])
  );
  OBUF ALU_A_4_OBUF (
    .I(ALU_A_4_OBUF_63),
    .O(ALU_A[4])
  );
  OBUF ALU_A_3_OBUF (
    .I(ALU_A_3_OBUF_64),
    .O(ALU_A[3])
  );
  OBUF ALU_A_2_OBUF (
    .I(ALU_A_2_OBUF_65),
    .O(ALU_A[2])
  );
  OBUF ALU_A_1_OBUF (
    .I(ALU_A_1_OBUF_66),
    .O(ALU_A[1])
  );
  OBUF ALU_A_0_OBUF (
    .I(ALU_A_0_OBUF_67),
    .O(ALU_A[0])
  );
  OBUF ALU_B_31_OBUF (
    .I(ALU_B_31_OBUF_68),
    .O(ALU_B[31])
  );
  OBUF ALU_B_30_OBUF (
    .I(ALU_B_30_OBUF_69),
    .O(ALU_B[30])
  );
  OBUF ALU_B_29_OBUF (
    .I(ALU_B_29_OBUF_70),
    .O(ALU_B[29])
  );
  OBUF ALU_B_28_OBUF (
    .I(ALU_B_28_OBUF_71),
    .O(ALU_B[28])
  );
  OBUF ALU_B_27_OBUF (
    .I(ALU_B_27_OBUF_72),
    .O(ALU_B[27])
  );
  OBUF ALU_B_26_OBUF (
    .I(ALU_B_26_OBUF_73),
    .O(ALU_B[26])
  );
  OBUF ALU_B_25_OBUF (
    .I(ALU_B_25_OBUF_74),
    .O(ALU_B[25])
  );
  OBUF ALU_B_24_OBUF (
    .I(ALU_B_24_OBUF_75),
    .O(ALU_B[24])
  );
  OBUF ALU_B_23_OBUF (
    .I(ALU_B_23_OBUF_76),
    .O(ALU_B[23])
  );
  OBUF ALU_B_22_OBUF (
    .I(ALU_B_22_OBUF_77),
    .O(ALU_B[22])
  );
  OBUF ALU_B_21_OBUF (
    .I(ALU_B_21_OBUF_78),
    .O(ALU_B[21])
  );
  OBUF ALU_B_20_OBUF (
    .I(ALU_B_20_OBUF_79),
    .O(ALU_B[20])
  );
  OBUF ALU_B_19_OBUF (
    .I(ALU_B_19_OBUF_80),
    .O(ALU_B[19])
  );
  OBUF ALU_B_18_OBUF (
    .I(ALU_B_18_OBUF_81),
    .O(ALU_B[18])
  );
  OBUF ALU_B_17_OBUF (
    .I(ALU_B_17_OBUF_82),
    .O(ALU_B[17])
  );
  OBUF ALU_B_16_OBUF (
    .I(ALU_B_16_OBUF_83),
    .O(ALU_B[16])
  );
  OBUF ALU_B_15_OBUF (
    .I(ALU_B_15_OBUF_84),
    .O(ALU_B[15])
  );
  OBUF ALU_B_14_OBUF (
    .I(ALU_B_14_OBUF_85),
    .O(ALU_B[14])
  );
  OBUF ALU_B_13_OBUF (
    .I(ALU_B_13_OBUF_86),
    .O(ALU_B[13])
  );
  OBUF ALU_B_12_OBUF (
    .I(ALU_B_12_OBUF_87),
    .O(ALU_B[12])
  );
  OBUF ALU_B_11_OBUF (
    .I(ALU_B_11_OBUF_88),
    .O(ALU_B[11])
  );
  OBUF ALU_B_10_OBUF (
    .I(ALU_B_10_OBUF_89),
    .O(ALU_B[10])
  );
  OBUF ALU_B_9_OBUF (
    .I(ALU_B_9_OBUF_90),
    .O(ALU_B[9])
  );
  OBUF ALU_B_8_OBUF (
    .I(ALU_B_8_OBUF_91),
    .O(ALU_B[8])
  );
  OBUF ALU_B_7_OBUF (
    .I(ALU_B_7_OBUF_92),
    .O(ALU_B[7])
  );
  OBUF ALU_B_6_OBUF (
    .I(ALU_B_6_OBUF_93),
    .O(ALU_B[6])
  );
  OBUF ALU_B_5_OBUF (
    .I(ALU_B_5_OBUF_94),
    .O(ALU_B[5])
  );
  OBUF ALU_B_4_OBUF (
    .I(ALU_B_4_OBUF_95),
    .O(ALU_B[4])
  );
  OBUF ALU_B_3_OBUF (
    .I(ALU_B_3_OBUF_96),
    .O(ALU_B[3])
  );
  OBUF ALU_B_2_OBUF (
    .I(ALU_B_2_OBUF_97),
    .O(ALU_B[2])
  );
  OBUF ALU_B_1_OBUF (
    .I(ALU_B_1_OBUF_98),
    .O(ALU_B[1])
  );
  OBUF ALU_B_0_OBUF (
    .I(ALU_B_0_OBUF_99),
    .O(ALU_B[0])
  );
  OBUF ALUResult_31_OBUF (
    .I(ALUResult_31_OBUF_100),
    .O(ALUResult[31])
  );
  OBUF ALUResult_30_OBUF (
    .I(ALUResult_30_OBUF_101),
    .O(ALUResult[30])
  );
  OBUF ALUResult_29_OBUF (
    .I(ALUResult_29_OBUF_102),
    .O(ALUResult[29])
  );
  OBUF ALUResult_28_OBUF (
    .I(ALUResult_28_OBUF_103),
    .O(ALUResult[28])
  );
  OBUF ALUResult_27_OBUF (
    .I(ALUResult_27_OBUF_104),
    .O(ALUResult[27])
  );
  OBUF ALUResult_26_OBUF (
    .I(ALUResult_26_OBUF_105),
    .O(ALUResult[26])
  );
  OBUF ALUResult_25_OBUF (
    .I(ALUResult_25_OBUF_106),
    .O(ALUResult[25])
  );
  OBUF ALUResult_24_OBUF (
    .I(ALUResult_24_OBUF_107),
    .O(ALUResult[24])
  );
  OBUF ALUResult_23_OBUF (
    .I(ALUResult_23_OBUF_108),
    .O(ALUResult[23])
  );
  OBUF ALUResult_22_OBUF (
    .I(ALUResult_22_OBUF_109),
    .O(ALUResult[22])
  );
  OBUF ALUResult_21_OBUF (
    .I(ALUResult_21_OBUF_110),
    .O(ALUResult[21])
  );
  OBUF ALUResult_20_OBUF (
    .I(ALUResult_20_OBUF_111),
    .O(ALUResult[20])
  );
  OBUF ALUResult_19_OBUF (
    .I(ALUResult_19_OBUF_112),
    .O(ALUResult[19])
  );
  OBUF ALUResult_18_OBUF (
    .I(ALUResult_18_OBUF_113),
    .O(ALUResult[18])
  );
  OBUF ALUResult_17_OBUF (
    .I(ALUResult_17_OBUF_114),
    .O(ALUResult[17])
  );
  OBUF ALUResult_16_OBUF (
    .I(ALUResult_16_OBUF_115),
    .O(ALUResult[16])
  );
  OBUF ALUResult_15_OBUF (
    .I(ALUResult_15_OBUF_116),
    .O(ALUResult[15])
  );
  OBUF ALUResult_14_OBUF (
    .I(ALUResult_14_OBUF_117),
    .O(ALUResult[14])
  );
  OBUF ALUResult_13_OBUF (
    .I(ALUResult_13_OBUF_118),
    .O(ALUResult[13])
  );
  OBUF ALUResult_12_OBUF (
    .I(ALUResult_12_OBUF_119),
    .O(ALUResult[12])
  );
  OBUF ALUResult_11_OBUF (
    .I(ALUResult_11_OBUF_120),
    .O(ALUResult[11])
  );
  OBUF ALUResult_10_OBUF (
    .I(ALUResult_10_OBUF_121),
    .O(ALUResult[10])
  );
  OBUF ALUResult_9_OBUF (
    .I(ALUResult_9_OBUF_122),
    .O(ALUResult[9])
  );
  OBUF ALUResult_8_OBUF (
    .I(ALUResult_8_OBUF_123),
    .O(ALUResult[8])
  );
  OBUF ALUResult_7_OBUF (
    .I(ALUResult_7_OBUF_124),
    .O(ALUResult[7])
  );
  OBUF ALUResult_6_OBUF (
    .I(ALUResult_6_OBUF_125),
    .O(ALUResult[6])
  );
  OBUF ALUResult_5_OBUF (
    .I(ALUResult_5_OBUF_126),
    .O(ALUResult[5])
  );
  OBUF ALUResult_4_OBUF (
    .I(ALUResult_4_OBUF_127),
    .O(ALUResult[4])
  );
  OBUF ALUResult_3_OBUF (
    .I(ALUResult_3_OBUF_128),
    .O(ALUResult[3])
  );
  OBUF ALUResult_2_OBUF (
    .I(ALUResult_2_OBUF_129),
    .O(ALUResult[2])
  );
  OBUF ALUResult_1_OBUF (
    .I(ALUResult_1_OBUF_130),
    .O(ALUResult[1])
  );
  OBUF ALUResult_0_OBUF (
    .I(ALUResult_0_OBUF_131),
    .O(ALUResult[0])
  );
  defparam \EX_id_ex/q_1 .INIT = 1'b0;
  FDRS \EX_id_ex/q_1  (
    .C(clk_BUFGP_0),
    .D(\ID/N30 ),
    .R(_or0001),
    .S(\ID/Decode/I_type ),
    .Q(\EX_id_ex/q [1])
  );
  defparam \EX_id_ex/q_0 .INIT = 1'b0;
  FDRS \EX_id_ex/q_0  (
    .C(clk_BUFGP_0),
    .D(ALUSrcA_id),
    .R(_or0001),
    .S(\ID/Decode/R_type1 ),
    .Q(\EX_id_ex/q [0])
  );
  defparam \EX/ForwardB_0_cmp_ne000073_SW0 .INIT = 16'h5ADE;
  LUT4 \EX/ForwardB_0_cmp_ne000073_SW0  (
    .I0(\Addr_id_ex/q[7] ),
    .I1(\Data_ex_mem/q_3_1_150 ),
    .I2(\Data_ex_mem/q_2_1_166 ),
    .I3(\Addr_id_ex/q[8] ),
    .O(N10289)
  );
  defparam \EX/ALU_A<0>26 .INIT = 16'h0C0A;
  LUT4 \EX/ALU_A<0>26  (
    .I0(\Data_id_ex/q[32] ),
    .I1(\Data_ex_mem/q [37]),
    .I2(\EX/ForwardA_0_and000178_134 ),
    .I3(\EX/ForwardA_1_and0001_136 ),
    .O(\EX/ALU_A<0>_map11 )
  );
  defparam \EX/ALU_A<0>59 .INIT = 16'hBBB8;
  LUT4 \EX/ALU_A<0>59  (
    .I0(\Data_id_ex/q[96] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ALU_A<0>_map11 ),
    .I3(\EX/ALU_A<0>_map5 ),
    .O(ALU_A_0_OBUF_67)
  );
  defparam \EX/ALU/adder/co_21 .INIT = 16'h888E;
  LUT4 \EX/ALU/adder/co_21  (
    .I0(ALU_A_11_OBUF_56),
    .I1(\EX/ALU/_xor0000 [11]),
    .I2(\EX/ALU/adder/mux_2/out<3>1_map27 ),
    .I3(\EX/ALU/adder/mux_2/out<3>1_map10 ),
    .O(\EX/ALU/adder/co_2 )
  );
  defparam \EX/ForwardB_1_and0000_SW1 .INIT = 8'hA8;
  LUT3 \EX/ForwardB_1_and0000_SW1  (
    .I0(\WB_ex_mem/q [0]),
    .I1(\Data_ex_mem/q [1]),
    .I2(N11774),
    .O(N10295)
  );
  defparam \EX/Mmux_B_temp12_SW0 .INIT = 16'hAEA2;
  LUT4 \EX/Mmux_B_temp12_SW0  (
    .I0(\Data_id_ex/q[1] ),
    .I1(\WB_ex_mem/q [0]),
    .I2(\EX/ForwardB_0_cmp_ne0000 ),
    .I3(N10297),
    .O(N9558)
  );
  defparam \EX/ALU/adder/adder_0/C<3>1_SW0 .INIT = 16'hE8A0;
  LUT4 \EX/ALU/adder/adder_0/C<3>1_SW0  (
    .I0(\EX/ALU_A<4>59_164 ),
    .I1(\EX/ALU_A<3>59_175 ),
    .I2(\EX/ALU/_xor0000 [4]),
    .I3(N11784),
    .O(N10301)
  );
  defparam \EX/ALU/adder/adder_0/C<3>1_SW1 .INIT = 16'hFAE8;
  LUT4 \EX/ALU/adder/adder_0/C<3>1_SW1  (
    .I0(\EX/ALU_A<4>59_164 ),
    .I1(\EX/ALU_A<3>59_175 ),
    .I2(N11789),
    .I3(\EX/ALU/_xor0000 [3]),
    .O(N10302)
  );
  defparam \EX/ALU/adder/mux_1/out<3>165 .INIT = 16'h404C;
  LUT4 \EX/ALU/adder/mux_1/out<3>165  (
    .I0(N10302),
    .I1(\EX/ALU/adder/mux_1/out<3>1_map26 ),
    .I2(N11788),
    .I3(N10301),
    .O(\EX/ALU/adder/mux_1/out<3>1_map27 )
  );
  defparam \EX/ALU_A<1>59 .INIT = 16'hBBB8;
  LUT4 \EX/ALU_A<1>59  (
    .I0(\Data_id_ex/q[97] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ALU_A<1>_map11 ),
    .I3(\EX/ALU_A<1>_map5 ),
    .O(ALU_A_1_OBUF_66)
  );
  defparam \EX/ForwardB_0_cmp_ne000073 .INIT = 16'hFFFE;
  LUT4 \EX/ForwardB_0_cmp_ne000073  (
    .I0(\Data_ex_mem/q [4]),
    .I1(N10307),
    .I2(N10289),
    .I3(\EX/ForwardB_0_cmp_ne0000_map16 ),
    .O(\EX/ForwardB_0_cmp_ne0000 )
  );
  defparam \EX/ForwardB_0_and000091 .INIT = 16'h0080;
  LUT4 \EX/ForwardB_0_and000091  (
    .I0(\EX/ForwardB_0_and0000_map25 ),
    .I1(N11787),
    .I2(\EX/ForwardB_0_cmp_ne0000 ),
    .I3(\EX/ForwardA_0_and0000 ),
    .O(\EX/ForwardB [0])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<7>1 .INIT = 16'hD287;
  LUT4 \EX/ALU/Mxor__xor0000_Result<7>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Data_id_ex/q[97] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[7]),
    .O(\EX/ALU/_xor0000 [7])
  );
  defparam \ID/addOffset/co_11 .INIT = 16'hF110;
  LUT4 \ID/addOffset/co_11  (
    .I0(N11765),
    .I1(\ID/addOffset/mux_1/out<3>1_map27 ),
    .I2(\if_id/q[12] ),
    .I3(\if_id/q[39] ),
    .O(\ID/addOffset/co_1 )
  );
  defparam \ID/addOffset/co_21 .INIT = 16'hF110;
  LUT4 \ID/addOffset/co_21  (
    .I0(\ID/addOffset/mux_2/out<3>1_map10 ),
    .I1(\ID/addOffset/mux_2/out<3>1_map27 ),
    .I2(\if_id/q[15] ),
    .I3(\if_id/q[43] ),
    .O(\ID/addOffset/co_2 )
  );
  defparam \ID/addOffset/co_31 .INIT = 16'hF110;
  LUT4 \ID/addOffset/co_31  (
    .I0(\ID/addOffset/mux_3/out<3>1_map10 ),
    .I1(\ID/addOffset/mux_3/out<3>1_map27 ),
    .I2(\if_id/q[15] ),
    .I3(\if_id/q[47] ),
    .O(\ID/addOffset/co_3 )
  );
  defparam \ID/addOffset/adder_0/C<3>1 .INIT = 16'hE8A0;
  LUT4 \ID/addOffset/adder_0/C<3>1  (
    .I0(\if_id/q[35] ),
    .I1(\if_id/q[34] ),
    .I2(\if_id/q[1] ),
    .I3(\if_id/q[0] ),
    .O(\ID/addOffset/co_0 )
  );
  defparam \IF/PC_in<31>59_SW0 .INIT = 4'h9;
  LUT2 \IF/PC_in<31>59_SW0  (
    .I0(\if_id/q[15] ),
    .I1(\if_id/q[63] ),
    .O(N10315)
  );
  defparam \ID/addOffset/mux_5/out<3>1_SW2 .INIT = 8'hFE;
  LUT3 \ID/addOffset/mux_5/out<3>1_SW2  (
    .I0(\if_id/q[53] ),
    .I1(\if_id/q[52] ),
    .I2(\if_id/q[54] ),
    .O(N10317)
  );
  defparam \ID/addOffset/mux_5/out<3>1_SW3 .INIT = 8'h80;
  LUT3 \ID/addOffset/mux_5/out<3>1_SW3  (
    .I0(\if_id/q[53] ),
    .I1(\if_id/q[52] ),
    .I2(\if_id/q[54] ),
    .O(N10318)
  );
  defparam \EX/ALU_A<2>13 .INIT = 16'h0080;
  LUT4 \EX/ALU_A<2>13  (
    .I0(N10320),
    .I1(\EX/ForwardA_0_and0001_map9 ),
    .I2(\EX/ForwardA_0_cmp_ne0001 ),
    .I3(\EX/ForwardA_0_and0000 ),
    .O(\EX/ALU_A<2>_map5 )
  );
  defparam \EX/ALU/adder/co_11_SW1 .INIT = 16'hE8C0;
  LUT4 \EX/ALU/adder/co_11_SW1  (
    .I0(ALU_A_7_OBUF_60),
    .I1(ALU_A_8_OBUF_59),
    .I2(N11795),
    .I3(\EX/ALU/_xor0000 [7]),
    .O(N10330)
  );
  defparam \EX/ALU/adder/mux_3/out<3>165 .INIT = 16'h01FB;
  LUT4 \EX/ALU/adder/mux_3/out<3>165  (
    .I0(\EX/ALU/adder/mux_2/out<3>1_map10 ),
    .I1(N10341),
    .I2(N11794),
    .I3(N10342),
    .O(\EX/ALU/adder/mux_3/out<3>1_map27 )
  );
  defparam \EX/ALU_A<2>59 .INIT = 16'hDDD8;
  LUT4 \EX/ALU_A<2>59  (
    .I0(\EX_id_ex/q [2]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU_A<2>_map11 ),
    .I3(\EX/ALU_A<2>_map5 ),
    .O(ALU_A_2_OBUF_65)
  );
  defparam \EX/ALU_A<4>59 .INIT = 16'hDDD8;
  LUT4 \EX/ALU_A<4>59  (
    .I0(\EX_id_ex/q [2]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU_A<4>_map11 ),
    .I3(\EX/ALU_A<4>_map5 ),
    .O(ALU_A_4_OBUF_63)
  );
  defparam \EX/ALU_A<3>59 .INIT = 16'hDDD8;
  LUT4 \EX/ALU_A<3>59  (
    .I0(\EX_id_ex/q [2]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU_A<3>_map11 ),
    .I3(\EX/ALU_A<3>_map5 ),
    .O(ALU_A_3_OBUF_64)
  );
  defparam \EX/ALU/adder/mux_6/out<3>165_SW0 .INIT = 16'h88E8;
  LUT4 \EX/ALU/adder/mux_6/out<3>165_SW0  (
    .I0(ALU_A_27_OBUF_40),
    .I1(\EX/ALU/_xor0000 [27]),
    .I2(N11849),
    .I3(\EX/ALU/adder/mux_6/out<3>1_map10 ),
    .O(N10346)
  );
  defparam \EX/ALU/adder/mux_6/out<3>165_SW1 .INIT = 16'h88E8;
  LUT4 \EX/ALU/adder/mux_6/out<3>165_SW1  (
    .I0(ALU_A_27_OBUF_40),
    .I1(\EX/ALU/_xor0000 [27]),
    .I2(N11848),
    .I3(\EX/ALU/adder/mux_6/out<3>1_map10 ),
    .O(N10347)
  );
  defparam \EX/ALU/adder/mux_7/out<3>2_SW0 .INIT = 16'hBAAB;
  LUT4 \EX/ALU/adder/mux_7/out<3>2_SW0  (
    .I0(\EX/ALU/result_final<0>_map68 ),
    .I1(N11840),
    .I2(N10326),
    .I3(\EX/ALU/_xor0000 [31]),
    .O(N10352)
  );
  defparam \EX/ALU_A<0>13_SW0 .INIT = 16'hA0C0;
  LUT4 \EX/ALU_A<0>13_SW0  (
    .I0(MemDout_wb_0_OBUF_35),
    .I1(\Data_mem_wb/q [0]),
    .I2(N11773),
    .I3(\MM_mem_wb/q [6]),
    .O(N10324)
  );
  defparam \EX/Mmux_B_temp12 .INIT = 16'hFB08;
  LUT4 \EX/Mmux_B_temp12  (
    .I0(RegWriteData_wb[1]),
    .I1(N10309),
    .I2(N10358),
    .I3(N9558),
    .O(MemWriteData_ex[1])
  );
  defparam \EX/ALU/result_final<16>223 .INIT = 16'hFFF8;
  LUT4 \EX/ALU/result_final<16>223  (
    .I0(\EX/ALU/N0 ),
    .I1(\EX/ALU/result_final<16>_map52 ),
    .I2(\EX/ALU/result_final<16>_map37 ),
    .I3(\EX/ALU/result_final<16>_map27 ),
    .O(ALUResult_16_OBUF_115)
  );
  defparam \EX/ALU/result_final<0>300 .INIT = 16'hFFF8;
  LUT4 \EX/ALU/result_final<0>300  (
    .I0(\EX/ALU/N88 ),
    .I1(\EX/ALU/result_final<0>_map51 ),
    .I2(\EX/ALU/result_final<0>_map65 ),
    .I3(\EX/ALU/result_final<0>_map38 ),
    .O(\EX/ALU/result_final<0>_map66 )
  );
  defparam \EX/ALU/result_final<21>259 .INIT = 16'hFFEA;
  LUT4 \EX/ALU/result_final<21>259  (
    .I0(\EX/ALU/result_final<21>_map26 ),
    .I1(\EX/ALU/N0 ),
    .I2(\EX/ALU/result_final<21>_map58 ),
    .I3(\EX/ALU/result_final<21>_map40 ),
    .O(ALUResult_21_OBUF_110)
  );
  defparam \IF/PC_in<29>67 .INIT = 16'hA69A;
  LUT4 \IF/PC_in<29>67  (
    .I0(\if_id/q[61] ),
    .I1(\if_id/q[60] ),
    .I2(\if_id/q[15] ),
    .I3(\ID/addOffset/co_6 ),
    .O(\IF/PC_in<29>_map21 )
  );
  defparam \IF/pcAdd4/mux_7/out<1>1 .INIT = 16'hA6AA;
  LUT4 \IF/pcAdd4/mux_7/out<1>1  (
    .I0(\IF/PC [29]),
    .I1(\IF/PC [28]),
    .I2(\IF/pcAdd4/N22 ),
    .I3(\IF/PC [27]),
    .O(NextPC_if[29])
  );
  defparam \IF/pcAdd4/mux_6/out<0>1 .INIT = 8'h9A;
  LUT3 \IF/pcAdd4/mux_6/out<0>1  (
    .I0(\IF/PC [24]),
    .I1(\IF/pcAdd4/N23 ),
    .I2(\IF/PC [23]),
    .O(NextPC_if[24])
  );
  defparam \IF/pcAdd4/mux_7/out<0>1 .INIT = 8'hA6;
  LUT3 \IF/pcAdd4/mux_7/out<0>1  (
    .I0(\IF/PC [28]),
    .I1(\IF/PC [27]),
    .I2(\IF/pcAdd4/N22 ),
    .O(NextPC_if[28])
  );
  defparam \ID/Z327 .INIT = 16'h8241;
  LUT4 \ID/Z327  (
    .I0(JrAddr[29]),
    .I1(JrAddr[30]),
    .I2(RtData_id[30]),
    .I3(RtData_id[29]),
    .O(\ID/Z_map105 )
  );
  defparam \EX/ALU/result_final<16>148 .INIT = 16'hECA0;
  LUT4 \EX/ALU/result_final<16>148  (
    .I0(\EX/ALU/N88 ),
    .I1(\EX/ALU/result_final<17>_map17 ),
    .I2(\EX/ALU/result_final<16>_map32 ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[48] ),
    .O(\EX/ALU/result_final<16>_map37 )
  );
  defparam \IF/pcAdd4/mux_2/out<3>11_SW0 .INIT = 4'h8;
  LUT2 \IF/pcAdd4/mux_2/out<3>11_SW0  (
    .I0(\IF/PC [10]),
    .I1(\IF/PC [11]),
    .O(N10386)
  );
  defparam \IF/pcAdd4/mux_3/out<3>11_SW0 .INIT = 4'h8;
  LUT2 \IF/pcAdd4/mux_3/out<3>11_SW0  (
    .I0(\IF/PC [12]),
    .I1(\IF/PC [15]),
    .O(N10388)
  );
  defparam \IF/pcAdd4/co_31 .INIT = 16'h8000;
  LUT4 \IF/pcAdd4/co_31  (
    .I0(\IF/PC [14]),
    .I1(\IF/PC [13]),
    .I2(N11809),
    .I3(N10388),
    .O(\IF/pcAdd4/co_3 )
  );
  defparam \IF/pcAdd4/mux_4/out<3>11_SW0 .INIT = 4'h8;
  LUT2 \IF/pcAdd4/mux_4/out<3>11_SW0  (
    .I0(\IF/PC [16]),
    .I1(\IF/PC [19]),
    .O(N10390)
  );
  defparam \IF/pcAdd4/co_51_SW0 .INIT = 4'h8;
  LUT2 \IF/pcAdd4/co_51_SW0  (
    .I0(\IF/PC [25]),
    .I1(\IF/PC [24]),
    .O(N10392)
  );
  defparam \ID/addOffset/co_61 .INIT = 16'hF8A8;
  LUT4 \ID/addOffset/co_61  (
    .I0(\if_id/q[15] ),
    .I1(N10394),
    .I2(N11812),
    .I3(N10395),
    .O(\ID/addOffset/co_6 )
  );
  defparam \ID/addOffset/mux_4/out<3>1_SW1 .INIT = 8'hFE;
  LUT3 \ID/addOffset/mux_4/out<3>1_SW1  (
    .I0(\if_id/q[50] ),
    .I1(\if_id/q[49] ),
    .I2(\if_id/q[51] ),
    .O(N10400)
  );
  defparam \ID/addOffset/mux_4/out<3>1_SW2 .INIT = 8'h80;
  LUT3 \ID/addOffset/mux_4/out<3>1_SW2  (
    .I0(\if_id/q[50] ),
    .I1(\if_id/q[49] ),
    .I2(\if_id/q[51] ),
    .O(N10401)
  );
  defparam \ID/addOffset/co_41 .INIT = 16'hF8A8;
  LUT4 \ID/addOffset/co_41  (
    .I0(\if_id/q[15] ),
    .I1(N10400),
    .I2(N7576),
    .I3(N10401),
    .O(\ID/addOffset/co_4 )
  );
  defparam \IF/pcAdd4/co_61_SW0 .INIT = 4'h8;
  LUT2 \IF/pcAdd4/co_61_SW0  (
    .I0(\IF/PC [29]),
    .I1(\IF/PC [28]),
    .O(N10403)
  );
  defparam \IF/pcAdd4/co_61_SW1 .INIT = 4'h7;
  LUT2 \IF/pcAdd4/co_61_SW1  (
    .I0(\IF/PC [29]),
    .I1(\IF/PC [28]),
    .O(N10405)
  );
  defparam \IF/pcAdd4/mux_7/out<2>2 .INIT = 16'hCC9C;
  LUT4 \IF/pcAdd4/mux_7/out<2>2  (
    .I0(\IF/pcAdd4/N22 ),
    .I1(\IF/PC [30]),
    .I2(\IF/PC [27]),
    .I3(N10405),
    .O(NextPC_if[30])
  );
  defparam \ID/addOffset/co_31_SW0 .INIT = 16'hFCE8;
  LUT4 \ID/addOffset/co_31_SW0  (
    .I0(\if_id/q[15] ),
    .I1(\if_id/q[48] ),
    .I2(\if_id/q[14] ),
    .I3(\if_id/q[47] ),
    .O(N10407)
  );
  defparam \ID/addOffset/co_31_SW1 .INIT = 16'hE888;
  LUT4 \ID/addOffset/co_31_SW1  (
    .I0(\if_id/q[48] ),
    .I1(\if_id/q[14] ),
    .I2(\if_id/q[15] ),
    .I3(\if_id/q[47] ),
    .O(N10408)
  );
  defparam \ID/addOffset/mux_4/out<3>1_SW0 .INIT = 16'hABA8;
  LUT4 \ID/addOffset/mux_4/out<3>1_SW0  (
    .I0(N10408),
    .I1(\ID/addOffset/mux_3/out<3>1_map10 ),
    .I2(\ID/addOffset/mux_3/out<3>1_map27 ),
    .I3(N10407),
    .O(N7576)
  );
  defparam \ID/addOffset/co_21_SW0 .INIT = 16'hFF8F;
  LUT4 \ID/addOffset/co_21_SW0  (
    .I0(\if_id/q[44] ),
    .I1(\if_id/q[43] ),
    .I2(N11767),
    .I3(\if_id/q[15] ),
    .O(N10413)
  );
  defparam \ID/addOffset/co_21_SW1 .INIT = 16'hAF8F;
  LUT4 \ID/addOffset/co_21_SW1  (
    .I0(\if_id/q[15] ),
    .I1(\if_id/q[43] ),
    .I2(\ID/addOffset/mux_3/out<3>1_map26 ),
    .I3(\if_id/q[44] ),
    .O(N10414)
  );
  defparam \ID/addOffset/mux_3/out<3>165 .INIT = 16'h01FB;
  LUT4 \ID/addOffset/mux_3/out<3>165  (
    .I0(\ID/addOffset/mux_2/out<3>1_map10 ),
    .I1(N10413),
    .I2(N11817),
    .I3(N10414),
    .O(\ID/addOffset/mux_3/out<3>1_map27 )
  );
  defparam \ID/RsSel23_SW0 .INIT = 8'hBE;
  LUT3 \ID/RsSel23_SW0  (
    .I0(\MM_mem_wb/q_2_2_157 ),
    .I1(\MM_mem_wb/q_0_17_151 ),
    .I2(\if_id/q_21_1_173 ),
    .O(N10423)
  );
  defparam \EX/ALU/result_final<3>273 .INIT = 16'hFFFE;
  LUT4 \EX/ALU/result_final<3>273  (
    .I0(\EX/ALU/result_final<3>_map63 ),
    .I1(\EX/ALU/result_final<3>_map34 ),
    .I2(\EX/ALU/result_final<3>_map47 ),
    .I3(\EX/ALU/result_final<3>_map20 ),
    .O(ALUResult_3_OBUF_128)
  );
  defparam \EX/ALU/result_final<13>276 .INIT = 16'hFFEA;
  LUT4 \EX/ALU/result_final<13>276  (
    .I0(\EX/ALU/result_final<13>_map31 ),
    .I1(\EX/ALU/N0 ),
    .I2(\EX/ALU/result_final<13>_map61 ),
    .I3(\EX/ALU/result_final<13>_map43 ),
    .O(ALUResult_13_OBUF_118)
  );
  defparam \EX/ALU/result_final<15>235 .INIT = 16'hFFEA;
  LUT4 \EX/ALU/result_final<15>235  (
    .I0(\EX/ALU/result_final<15>_map19 ),
    .I1(\EX/ALU/N0 ),
    .I2(\EX/ALU/result_final<15>_map52 ),
    .I3(\EX/ALU/result_final<15>_map37 ),
    .O(ALUResult_15_OBUF_116)
  );
  defparam \EX/ALU/result_final<4>61 .INIT = 16'hEFEE;
  LUT4 \EX/ALU/result_final<4>61  (
    .I0(\EX/ALU/result_final<4>_map7 ),
    .I1(\EX/ALU/result_final<4>_map10 ),
    .I2(ALU_A_4_OBUF_63),
    .I3(\EX/ALU/result_final<4>_map15 ),
    .O(\EX/ALU/result_final<4>_map18 )
  );
  defparam \ID/Z5_SW0 .INIT = 16'h7DBE;
  LUT4 \ID/Z5_SW0  (
    .I0(JrAddr[29]),
    .I1(JrAddr[0]),
    .I2(RtData_id[0]),
    .I3(RtData_id[29]),
    .O(N10429)
  );
  defparam \EX/ALU/result_final<0>247 .INIT = 16'hD800;
  LUT4 \EX/ALU/result_final<0>247  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[10] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[8] ),
    .I3(N11837),
    .O(\EX/ALU/result_final<0>_map54 )
  );
  defparam \EX/ALU/result_final<12>65_SW0 .INIT = 4'h4;
  LUT2 \EX/ALU/result_final<12>65_SW0  (
    .I0(ALU_A_4_OBUF_63),
    .I1(N11851),
    .O(N10443)
  );
  defparam \EX/ALU/result_final<12>75 .INIT = 16'hFEEE;
  LUT4 \EX/ALU/result_final<12>75  (
    .I0(\EX/ALU/result_final<12>_map14 ),
    .I1(\EX/ALU/result_final<0>3_160 ),
    .I2(N10443),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[44] ),
    .O(\EX/ALU/result_final<12>_map19 )
  );
  defparam \EX/ALU/result_final<13>109 .INIT = 16'hFFEC;
  LUT4 \EX/ALU/result_final<13>109  (
    .I0(\EX/ALU/N78 ),
    .I1(\EX/ALU/result_final<13>_map28 ),
    .I2(\EX/ALU/N14 ),
    .I3(N10447),
    .O(\EX/ALU/result_final<13>_map29 )
  );
  defparam \EX/ALU/adder/mux_3/out<2>1_SW2 .INIT = 4'h6;
  LUT2 \EX/ALU/adder/mux_3/out<2>1_SW2  (
    .I0(\EX/ALU/_xor0000 [14]),
    .I1(ALU_A_14_OBUF_53),
    .O(N10449)
  );
  defparam \EX/ALU/result_final<12>235 .INIT = 16'hFFEC;
  LUT4 \EX/ALU/result_final<12>235  (
    .I0(\EX/ALU/N0 ),
    .I1(\EX/ALU/result_final<12>_map30 ),
    .I2(\EX/ALU/result_final<12>_map54 ),
    .I3(N10451),
    .O(ALUResult_12_OBUF_119)
  );
  defparam \EX/ALU/result_final<15>76 .INIT = 16'hFFEA;
  LUT4 \EX/ALU/result_final<15>76  (
    .I0(\EX/ALU/result_final<15>_map14 ),
    .I1(N10443),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[47] ),
    .I3(N11847),
    .O(\EX/ALU/result_final<15>_map19 )
  );
  defparam \IF/PC_in<30>76 .INIT = 16'hFFEC;
  LUT4 \IF/PC_in<30>76  (
    .I0(NextPC_if[30]),
    .I1(N10459),
    .I2(\IF/PC_in_or0000 ),
    .I3(\IF/PC_in<30>_map2 ),
    .O(\IF/PC_in [30])
  );
  defparam \ID/Z688_SW1 .INIT = 16'hDDDF;
  LUT4 \ID/Z688_SW1  (
    .I0(ALUCode_id[3]),
    .I1(ALUCode_id[4]),
    .I2(\ID/Z_map204 ),
    .I3(ALUCode_id[1]),
    .O(N10462)
  );
  defparam \ID/Z701 .INIT = 16'h3237;
  LUT4 \ID/Z701  (
    .I0(\ID/Z_map165 ),
    .I1(N10462),
    .I2(\ID/Z_map35 ),
    .I3(N10461),
    .O(Z)
  );
  defparam \EX/ALU/result_final<26>229 .INIT = 16'hFFCA;
  LUT4 \EX/ALU/result_final<26>229  (
    .I0(N10464),
    .I1(N10465),
    .I2(N11823),
    .I3(\EX/ALU/result_final<26>_map35 ),
    .O(ALUResult_26_OBUF_105)
  );
  defparam \EX/ALU/result_final<30>275 .INIT = 16'hFFCA;
  LUT4 \EX/ALU/result_final<30>275  (
    .I0(N10467),
    .I1(N10468),
    .I2(N11824),
    .I3(\EX/ALU/result_final<30>_map42 ),
    .O(ALUResult_30_OBUF_101)
  );
  defparam \EX/ALU/result_final<25>219_SW0 .INIT = 16'h60A0;
  LUT4 \EX/ALU/result_final<25>219_SW0  (
    .I0(N11721),
    .I1(\EX/ALU/_xor0000 [24]),
    .I2(\EX/ALU/N0 ),
    .I3(ALU_A_24_OBUF_43),
    .O(N10470)
  );
  defparam \EX/ALU/result_final<25>219_SW1 .INIT = 16'h5060;
  LUT4 \EX/ALU/result_final<25>219_SW1  (
    .I0(\EX/ALU/adder/adder_60/s_and0000 [1]),
    .I1(\EX/ALU/_xor0000 [24]),
    .I2(\EX/ALU/N0 ),
    .I3(ALU_A_24_OBUF_43),
    .O(N10471)
  );
  defparam \EX/ALU/result_final<25>236 .INIT = 16'hFFCA;
  LUT4 \EX/ALU/result_final<25>236  (
    .I0(N10470),
    .I1(N10471),
    .I2(\EX/ALU/adder/co_5 ),
    .I3(\EX/ALU/result_final<25>_map35 ),
    .O(ALUResult_25_OBUF_106)
  );
  defparam \EX/ALU/result_final<29>265_SW0 .INIT = 16'h60A0;
  LUT4 \EX/ALU/result_final<29>265_SW0  (
    .I0(N11720),
    .I1(\EX/ALU/_xor0000 [28]),
    .I2(\EX/ALU/N0 ),
    .I3(ALU_A_28_OBUF_39),
    .O(N10473)
  );
  defparam \EX/ALU/result_final<29>265_SW1 .INIT = 16'h5060;
  LUT4 \EX/ALU/result_final<29>265_SW1  (
    .I0(\EX/ALU/adder/adder_70/s_and0000 [1]),
    .I1(N11838),
    .I2(\EX/ALU/N0 ),
    .I3(ALU_A_28_OBUF_39),
    .O(N10474)
  );
  defparam \EX/ALU/result_final<29>282 .INIT = 16'hFFCA;
  LUT4 \EX/ALU/result_final<29>282  (
    .I0(N10473),
    .I1(N10474),
    .I2(\EX/ALU/adder/co_6 ),
    .I3(\EX/ALU/result_final<29>_map42 ),
    .O(ALUResult_29_OBUF_102)
  );
  defparam \IF/PC_in<30>4_SW0 .INIT = 16'h9DBF;
  LUT4 \IF/PC_in<30>4_SW0  (
    .I0(J),
    .I1(JR),
    .I2(JrAddr[30]),
    .I3(\if_id/q[62] ),
    .O(N10476)
  );
  defparam \IF/PC_in<31>4_SW0 .INIT = 16'h9DBF;
  LUT4 \IF/PC_in<31>4_SW0  (
    .I0(J),
    .I1(JR),
    .I2(JrAddr[31]),
    .I3(\if_id/q[63] ),
    .O(N10478)
  );
  defparam \IF/PC_in<31>4 .INIT = 4'h1;
  LUT2 \IF/PC_in<31>4  (
    .I0(\ID/Z701_174 ),
    .I1(N10478),
    .O(\IF/PC_in<31>_map2 )
  );
  defparam \IF/PC_in<20>8_SW0_SW0 .INIT = 16'h9DBF;
  LUT4 \IF/PC_in<20>8_SW0_SW0  (
    .I0(J),
    .I1(JR),
    .I2(JrAddr[20]),
    .I3(\if_id/q[18] ),
    .O(N10480)
  );
  defparam \IF/PC_in<21>8_SW0_SW0 .INIT = 16'h9DBF;
  LUT4 \IF/PC_in<21>8_SW0_SW0  (
    .I0(J),
    .I1(JR),
    .I2(JrAddr[21]),
    .I3(\if_id/q[19] ),
    .O(N10482)
  );
  defparam \IF/PC_in<23>8_SW0_SW0 .INIT = 16'h9DBF;
  LUT4 \IF/PC_in<23>8_SW0_SW0  (
    .I0(J),
    .I1(JR),
    .I2(JrAddr[23]),
    .I3(\if_id/q[21] ),
    .O(N10484)
  );
  defparam \EX/ALU/adder/mux_7/out<3>2_SW5 .INIT = 16'hFF82;
  LUT4 \EX/ALU/adder/mux_7/out<3>2_SW5  (
    .I0(\EX/ALU/N0 ),
    .I1(N10327),
    .I2(N11841),
    .I3(\EX/ALU/result_final<31>_map21 ),
    .O(N10487)
  );
  defparam \EX/ALU/result_final<31>199 .INIT = 16'hFFCA;
  LUT4 \EX/ALU/result_final<31>199  (
    .I0(N10486),
    .I1(N10487),
    .I2(\EX/ALU/adder/co_6 ),
    .I3(\EX/ALU/result_final<31>_map41 ),
    .O(ALUResult_31_OBUF_100)
  );
  defparam \EX/ALU/result_final<28>263 .INIT = 16'hFFCA;
  LUT4 \EX/ALU/result_final<28>263  (
    .I0(N10492),
    .I1(N10493),
    .I2(\EX/ALU/adder/co_6 ),
    .I3(\EX/ALU/result_final<28>_map37 ),
    .O(ALUResult_28_OBUF_103)
  );
  defparam \EX/ALU/result_final<24>218 .INIT = 16'hFFCA;
  LUT4 \EX/ALU/result_final<24>218  (
    .I0(N10495),
    .I1(N10496),
    .I2(\EX/ALU/adder/co_5 ),
    .I3(\EX/ALU/result_final<24>_map30 ),
    .O(ALUResult_24_OBUF_107)
  );
  defparam \EX/ALU/adder/mux_5/out<3>165_SW0 .INIT = 16'h88E8;
  LUT4 \EX/ALU/adder/mux_5/out<3>165_SW0  (
    .I0(ALU_A_23_OBUF_44),
    .I1(\EX/ALU/_xor0000 [23]),
    .I2(N10349),
    .I3(\EX/ALU/adder/mux_5/out<3>1_map10 ),
    .O(N10498)
  );
  defparam \EX/ALU/adder/mux_5/out<3>165_SW1 .INIT = 16'h88E8;
  LUT4 \EX/ALU/adder/mux_5/out<3>165_SW1  (
    .I0(ALU_A_23_OBUF_44),
    .I1(\EX/ALU/_xor0000 [23]),
    .I2(N10350),
    .I3(\EX/ALU/adder/mux_5/out<3>1_map10 ),
    .O(N10499)
  );
  defparam \EX/ALU/adder/mux_5/out<3>165_SW2 .INIT = 16'hDC8C;
  LUT4 \EX/ALU/adder/mux_5/out<3>165_SW2  (
    .I0(\EX/ALU/adder/mux_5/out<3>1_map10 ),
    .I1(N10333),
    .I2(N10349),
    .I3(N10332),
    .O(N10501)
  );
  defparam \EX/ALU/adder/mux_5/out<3>165_SW3 .INIT = 16'hDC8C;
  LUT4 \EX/ALU/adder/mux_5/out<3>165_SW3  (
    .I0(\EX/ALU/adder/mux_5/out<3>1_map10 ),
    .I1(N10333),
    .I2(N10350),
    .I3(N10332),
    .O(N10502)
  );
  defparam \EX/ALU/adder/mux_5/out<3>165_SW4 .INIT = 16'hDC8C;
  LUT4 \EX/ALU/adder/mux_5/out<3>165_SW4  (
    .I0(\EX/ALU/adder/mux_5/out<3>1_map10 ),
    .I1(N10347),
    .I2(N11802),
    .I3(N10346),
    .O(N10504)
  );
  defparam \EX/ALU/adder/mux_5/out<3>165_SW5 .INIT = 16'hDC8C;
  LUT4 \EX/ALU/adder/mux_5/out<3>165_SW5  (
    .I0(\EX/ALU/adder/mux_5/out<3>1_map10 ),
    .I1(N10347),
    .I2(N11803),
    .I3(N10346),
    .O(N10505)
  );
  defparam \IF/PC_in<31>76 .INIT = 16'hFFE2;
  LUT4 \IF/PC_in<31>76  (
    .I0(N10507),
    .I1(\IF/PC_in_or0000 ),
    .I2(N10508),
    .I3(\IF/PC_in<31>_map2 ),
    .O(\IF/PC_in [31])
  );
  defparam \ID/Z528 .INIT = 16'h13B3;
  LUT4 \ID/Z528  (
    .I0(\ID/Z_map129 ),
    .I1(N10510),
    .I2(\ID/Z_map161 ),
    .I3(N10511),
    .O(\ID/Z_map165 )
  );
  defparam \EX/ALU/result_final<7>182 .INIT = 16'hC8C0;
  LUT4 \EX/ALU/result_final<7>182  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/N83 ),
    .I2(N10513),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[55] ),
    .O(\EX/ALU/result_final<7>_map43 )
  );
  defparam \EX/ALU/result_final<6>184 .INIT = 16'hC8C0;
  LUT4 \EX/ALU/result_final<6>184  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/N83 ),
    .I2(N10515),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[54] ),
    .O(\EX/ALU/result_final<6>_map44 )
  );
  defparam \IF/PC_in<22>68_SW0 .INIT = 4'h6;
  LUT2 \IF/PC_in<22>68_SW0  (
    .I0(\if_id/q[15] ),
    .I1(\if_id/q[54] ),
    .O(N10517)
  );
  defparam \IF/PC_in<2>34 .INIT = 16'hFFEC;
  LUT4 \IF/PC_in<2>34  (
    .I0(JrAddr[2]),
    .I1(N10519),
    .I2(N11761),
    .I3(\IF/PC_in<2>_map7 ),
    .O(\IF/PC_in [2])
  );
  defparam \IF/PC_in<6>85 .INIT = 16'hFFEC;
  LUT4 \IF/PC_in<6>85  (
    .I0(JrAddr[6]),
    .I1(N10521),
    .I2(\IF/PC_in_cmp_eq0002 ),
    .I3(\IF/PC_in<6>_map19 ),
    .O(\IF/PC_in [6])
  );
  defparam \IF/PC_in<9>92 .INIT = 16'hFFEC;
  LUT4 \IF/PC_in<9>92  (
    .I0(JrAddr[9]),
    .I1(N10523),
    .I2(\IF/PC_in_cmp_eq0002 ),
    .I3(\IF/PC_in<9>_map22 ),
    .O(\IF/PC_in [9])
  );
  defparam \IF/PC_in<5>92 .INIT = 16'hFFEC;
  LUT4 \IF/PC_in<5>92  (
    .I0(JrAddr[5]),
    .I1(N10525),
    .I2(\IF/PC_in_cmp_eq0002 ),
    .I3(\IF/PC_in<5>_map22 ),
    .O(\IF/PC_in [5])
  );
  defparam \IF/PC_in<13>92 .INIT = 16'hFFEC;
  LUT4 \IF/PC_in<13>92  (
    .I0(JrAddr[13]),
    .I1(N10527),
    .I2(\IF/PC_in_cmp_eq0002 ),
    .I3(\IF/PC_in<13>_map22 ),
    .O(\IF/PC_in [13])
  );
  defparam \EX/ALU/result_final<20>217 .INIT = 16'hFFEC;
  LUT4 \EX/ALU/result_final<20>217  (
    .I0(\EX/ALU/N0 ),
    .I1(N10529),
    .I2(\EX/ALU/result_final<20>_map51 ),
    .I3(\EX/ALU/result_final<20>_map26 ),
    .O(ALUResult_20_OBUF_111)
  );
  defparam \IF/PC_in<14>74_SW0 .INIT = 8'h69;
  LUT3 \IF/PC_in<14>74_SW0  (
    .I0(\ID/addOffset/N32 ),
    .I1(\if_id/q[12] ),
    .I2(\if_id/q[46] ),
    .O(N10533)
  );
  defparam \IF/PC_in<16>64_SW0 .INIT = 8'h96;
  LUT3 \IF/PC_in<16>64_SW0  (
    .I0(\ID/addOffset/co_3 ),
    .I1(\if_id/q[48] ),
    .I2(\if_id/q[14] ),
    .O(N10535)
  );
  defparam \IF/PC_in<18>74_SW0 .INIT = 8'h69;
  LUT3 \IF/PC_in<18>74_SW0  (
    .I0(\ID/addOffset/N31 ),
    .I1(\if_id/q[15] ),
    .I2(\if_id/q[50] ),
    .O(N10539)
  );
  defparam \ID/Z373_SW0 .INIT = 16'h7DBE;
  LUT4 \ID/Z373_SW0  (
    .I0(JrAddr[23]),
    .I1(JrAddr[22]),
    .I2(RtData_id[22]),
    .I3(RtData_id[23]),
    .O(N10547)
  );
  defparam \ID/Z386_SW0 .INIT = 16'h7DBE;
  LUT4 \ID/Z386_SW0  (
    .I0(JrAddr[19]),
    .I1(JrAddr[18]),
    .I2(RtData_id[18]),
    .I3(RtData_id[19]),
    .O(N10549)
  );
  defparam \ID/Z425_SW0 .INIT = 16'h7DBE;
  LUT4 \ID/Z425_SW0  (
    .I0(JrAddr[15]),
    .I1(JrAddr[14]),
    .I2(RtData_id[14]),
    .I3(RtData_id[15]),
    .O(N10551)
  );
  defparam \ID/Z425 .INIT = 16'h0009;
  LUT4 \ID/Z425  (
    .I0(JrAddr[16]),
    .I1(RtData_id[16]),
    .I2(\ID/Z_xor0018 ),
    .I3(N10551),
    .O(\ID/Z_map137 )
  );
  defparam \ID/Z438 .INIT = 16'h0009;
  LUT4 \ID/Z438  (
    .I0(JrAddr[12]),
    .I1(RtData_id[12]),
    .I2(\ID/Z_xor0022 ),
    .I3(N10553),
    .O(\ID/Z_map144 )
  );
  defparam \ID/Z462 .INIT = 16'h0009;
  LUT4 \ID/Z462  (
    .I0(JrAddr[8]),
    .I1(RtData_id[8]),
    .I2(\ID/Z_xor0026 ),
    .I3(N10555),
    .O(\ID/Z_map152 )
  );
  defparam \ID/Z475 .INIT = 16'h0009;
  LUT4 \ID/Z475  (
    .I0(JrAddr[4]),
    .I1(RtData_id[4]),
    .I2(\ID/Z_xor0030 ),
    .I3(N10557),
    .O(\ID/Z_map159 )
  );
  defparam \ID/RsSel67 .INIT = 16'h0F0E;
  LUT4 \ID/RsSel67  (
    .I0(\MM_mem_wb/q [3]),
    .I1(\MM_mem_wb/q [2]),
    .I2(N10559),
    .I3(N3134),
    .O(\ID/RsSel )
  );
  defparam \EX/ALU/result_final<8>213 .INIT = 16'hFFF8;
  LUT4 \EX/ALU/result_final<8>213  (
    .I0(\EX/ALU/N88 ),
    .I1(\EX/ALU/result_final<8>_map35 ),
    .I2(\EX/ALU/result_final<8>_map52 ),
    .I3(\EX/ALU/result_final<8>_map28 ),
    .O(ALUResult_8_OBUF_123)
  );
  defparam \EX/ALU/result_final<26>155 .INIT = 16'hFFFE;
  LUT4 \EX/ALU/result_final<26>155  (
    .I0(\EX/ALU/result_final<26>_map22 ),
    .I1(\EX/ALU/result_final<26>_map18 ),
    .I2(\EX/ALU/N58 ),
    .I3(N10561),
    .O(\EX/ALU/result_final<26>_map35 )
  );
  defparam \ID/Decode/ALUtemp<2>34_SW0 .INIT = 8'h80;
  LUT3 \ID/Decode/ALUtemp<2>34_SW0  (
    .I0(\if_id/q[1] ),
    .I1(\if_id/q[12] ),
    .I2(\ID/Decode/ALUtemp<2>_map9 ),
    .O(N10563)
  );
  defparam \ID/Decode/ALUtemp<2>34 .INIT = 16'hFA88;
  LUT4 \ID/Decode/ALUtemp<2>34  (
    .I0(\if_id/q[26] ),
    .I1(\ID/N13 ),
    .I2(N10563),
    .I3(N11756),
    .O(\ID/Decode/ALUtemp<2>_map13 )
  );
  defparam \EX/ALU/result_final<16>125 .INIT = 16'h5410;
  LUT4 \EX/ALU/result_final<16>125  (
    .I0(\EX/ALU/N1 ),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[16] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[20] ),
    .O(\EX/ALU/result_final<16>_map29 )
  );
  defparam \EX/ALU/result_final<0>201 .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<0>201  (
    .I0(N11718),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[16] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[20] ),
    .O(\EX/ALU/result_final<0>_map48 )
  );
  defparam \EX/ALU/result_final<0>170 .INIT = 16'hD080;
  LUT4 \EX/ALU/result_final<0>170  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[6] ),
    .I2(N11833),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[2] ),
    .O(\EX/ALU/result_final<0>_map39 )
  );
  defparam \EX/ALU/result_final<5>333 .INIT = 16'hBAAA;
  LUT4 \EX/ALU/result_final<5>333  (
    .I0(N10569),
    .I1(\EX/ALU/result_final_or0002 ),
    .I2(\EX/ALU/result_final<5>_map55 ),
    .I3(\EX/ALU/N144 ),
    .O(ALUResult_5_OBUF_126)
  );
  defparam \EX/ALU/adder/mux_2/out<3>171_SW0 .INIT = 4'h9;
  LUT2 \EX/ALU/adder/mux_2/out<3>171_SW0  (
    .I0(N11799),
    .I1(ALU_A_11_OBUF_56),
    .O(N10571)
  );
  defparam \EX/ALU/result_final<18>255 .INIT = 16'hFFCA;
  LUT4 \EX/ALU/result_final<18>255  (
    .I0(N10573),
    .I1(N10574),
    .I2(\EX/ALU/adder/co_3 ),
    .I3(\EX/ALU/result_final<18>_map42 ),
    .O(ALUResult_18_OBUF_113)
  );
  defparam \EX/ALU/result_final<22>224 .INIT = 16'hFFCA;
  LUT4 \EX/ALU/result_final<22>224  (
    .I0(N10576),
    .I1(N10577),
    .I2(\EX/ALU/adder/co_4 ),
    .I3(\EX/ALU/result_final<22>_map37 ),
    .O(ALUResult_22_OBUF_109)
  );
  defparam \EX/ALU/result_final<19>238_SW0 .INIT = 16'h2882;
  LUT4 \EX/ALU/result_final<19>238_SW0  (
    .I0(\EX/ALU/N0 ),
    .I1(\EX/ALU/adder/mux_4/out<3>1_map10 ),
    .I2(\EX/ALU/_xor0000 [19]),
    .I3(ALU_A_19_OBUF_48),
    .O(N10579)
  );
  defparam \EX/ALU/result_final<19>238_SW1 .INIT = 8'h60;
  LUT3 \EX/ALU/result_final<19>238_SW1  (
    .I0(\EX/ALU/_xor0000 [19]),
    .I1(ALU_A_19_OBUF_48),
    .I2(\EX/ALU/N0 ),
    .O(N10580)
  );
  defparam \EX/ALU/result_final<19>255 .INIT = 16'hFFAC;
  LUT4 \EX/ALU/result_final<19>255  (
    .I0(N10580),
    .I1(N10579),
    .I2(\EX/ALU/adder/mux_4/out<3>1_map27 ),
    .I3(\EX/ALU/result_final<19>_map42 ),
    .O(ALUResult_19_OBUF_112)
  );
  defparam \EX/ALU/result_final<23>207_SW0 .INIT = 16'h2882;
  LUT4 \EX/ALU/result_final<23>207_SW0  (
    .I0(\EX/ALU/N0 ),
    .I1(\EX/ALU/adder/mux_5/out<3>1_map10 ),
    .I2(\EX/ALU/_xor0000 [23]),
    .I3(ALU_A_23_OBUF_44),
    .O(N10582)
  );
  defparam \EX/ALU/result_final<23>207_SW1 .INIT = 8'h60;
  LUT3 \EX/ALU/result_final<23>207_SW1  (
    .I0(\EX/ALU/_xor0000 [23]),
    .I1(ALU_A_23_OBUF_44),
    .I2(\EX/ALU/N0 ),
    .O(N10583)
  );
  defparam \EX/ALU/result_final<23>224 .INIT = 16'hFFAC;
  LUT4 \EX/ALU/result_final<23>224  (
    .I0(N10583),
    .I1(N10582),
    .I2(\EX/ALU/adder/mux_5/out<3>1_map27 ),
    .I3(\EX/ALU/result_final<23>_map35 ),
    .O(ALUResult_23_OBUF_108)
  );
  defparam \EX/ALU/result_final<17>226_SW0 .INIT = 16'h60A0;
  LUT4 \EX/ALU/result_final<17>226_SW0  (
    .I0(\EX/ALU/adder/adder_40/s_and0000 [1]),
    .I1(\EX/ALU/_xor0000 [16]),
    .I2(\EX/ALU/N0 ),
    .I3(ALU_A_16_OBUF_51),
    .O(N10585)
  );
  defparam \EX/ALU/result_final<17>226_SW1 .INIT = 16'h5060;
  LUT4 \EX/ALU/result_final<17>226_SW1  (
    .I0(\EX/ALU/adder/adder_40/s_and0000 [1]),
    .I1(\EX/ALU/_xor0000 [16]),
    .I2(\EX/ALU/N0 ),
    .I3(ALU_A_16_OBUF_51),
    .O(N10586)
  );
  defparam \EX/ALU/result_final<17>243 .INIT = 16'hFFCA;
  LUT4 \EX/ALU/result_final<17>243  (
    .I0(N10585),
    .I1(N10586),
    .I2(\EX/ALU/adder/co_3 ),
    .I3(\EX/ALU/result_final<17>_map38 ),
    .O(ALUResult_17_OBUF_114)
  );
  defparam \EX/ALU/adder/co_31_SW2 .INIT = 16'hC396;
  LUT4 \EX/ALU/adder/co_31_SW2  (
    .I0(ALU_A_15_OBUF_52),
    .I1(ALU_A_16_OBUF_51),
    .I2(N11819),
    .I3(\EX/ALU/_xor0000 [15]),
    .O(N10588)
  );
  defparam \EX/ALU/result_final<26>84 .INIT = 16'hB080;
  LUT4 \EX/ALU/result_final<26>84  (
    .I0(ALU_B_31_OBUF_68),
    .I1(\EX/ALU/N1 ),
    .I2(\EX/ALU/N88 ),
    .I3(N11746),
    .O(\EX/ALU/result_final<26>_map22 )
  );
  defparam \EX/ALU/result_final<7>119_SW0 .INIT = 16'hF4F0;
  LUT4 \EX/ALU/result_final<7>119_SW0  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/result_final<7>_map26 ),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[47] ),
    .O(N10435)
  );
  defparam \EX/ALU/result_final<6>122_SW0 .INIT = 16'hFF40;
  LUT4 \EX/ALU/result_final<6>122_SW0  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[46] ),
    .I3(\EX/ALU/result_final<6>_map27 ),
    .O(N10437)
  );
  defparam \EX/ALU/result_final<8>98 .INIT = 16'hFF02;
  LUT4 \EX/ALU/result_final<8>98  (
    .I0(\EX/ALU/N32 ),
    .I1(ALU_A_4_OBUF_63),
    .I2(ALU_A_2_OBUF_65),
    .I3(N10545),
    .O(\EX/ALU/result_final<8>_map26 )
  );
  defparam \EX/Mmux_B_temp1 .INIT = 16'hFB08;
  LUT4 \EX/Mmux_B_temp1  (
    .I0(RegWriteData_wb[0]),
    .I1(N10309),
    .I2(N10591),
    .I3(N10035),
    .O(MemWriteData_ex[0])
  );
  defparam \EX/ALU/result_final<10>156 .INIT = 16'hFF8B;
  LUT4 \EX/ALU/result_final<10>156  (
    .I0(\EX/ALU/Mshift_result_final_shift0004_Sh[58] ),
    .I1(ALU_A_4_OBUF_63),
    .I2(N10597),
    .I3(\EX/ALU/result_final<10>_map39 ),
    .O(\EX/ALU/result_final<10>_map40 )
  );
  defparam \EX/ALU/result_final<5>79 .INIT = 16'h0010;
  LUT4 \EX/ALU/result_final<5>79  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[37] ),
    .I3(ALU_A_4_OBUF_63),
    .O(\EX/ALU/result_final<5>_map19 )
  );
  defparam \EX/ALU/result_final<20>151_SW0 .INIT = 16'hAE0C;
  LUT4 \EX/ALU/result_final<20>151_SW0  (
    .I0(\EX/ALU/N88 ),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[52] ),
    .I2(N10601),
    .I3(\EX/ALU/result_final<20>_map31 ),
    .O(N10529)
  );
  defparam \EX/ALU/result_final<4>217 .INIT = 16'hFFEA;
  LUT4 \EX/ALU/result_final<4>217  (
    .I0(\EX/ALU/result_final<4>_map18 ),
    .I1(\EX/ALU/result_final<4>_map28 ),
    .I2(\EX/ALU/N88 ),
    .I3(N10607),
    .O(ALUResult_4_OBUF_127)
  );
  defparam \ID/Z332_SW0 .INIT = 16'h4FF4;
  LUT4 \ID/Z332_SW0  (
    .I0(\if_id/q[28] ),
    .I1(\ID/Decode/ALUtemp<2>_map13 ),
    .I2(RtData_id[0]),
    .I3(JrAddr[0]),
    .O(N10609)
  );
  defparam \ID/Z332 .INIT = 16'h0100;
  LUT4 \ID/Z332  (
    .I0(\ID/Decode/ALUtemp<2>_map23 ),
    .I1(N10609),
    .I2(\ID/Z_xor0000 ),
    .I3(\ID/Z_map105 ),
    .O(\ID/Z_map106 )
  );
  defparam \EX/ALU/result_final<10>262 .INIT = 16'hFFF8;
  LUT4 \EX/ALU/result_final<10>262  (
    .I0(\EX/ALU/N88 ),
    .I1(\EX/ALU/result_final<10>_map30 ),
    .I2(\EX/ALU/result_final<10>_map58 ),
    .I3(N10611),
    .O(ALUResult_10_OBUF_121)
  );
  defparam \EX/ALU/result_final<11>262 .INIT = 16'hFFFE;
  LUT4 \EX/ALU/result_final<11>262  (
    .I0(\EX/ALU/result_final<11>_map18 ),
    .I1(\EX/ALU/result_final<11>_map42 ),
    .I2(\EX/ALU/result_final<11>_map58 ),
    .I3(N10613),
    .O(ALUResult_11_OBUF_120)
  );
  defparam \EX/ALU/result_final<0>216 .INIT = 16'hFFEA;
  LUT4 \EX/ALU/result_final<0>216  (
    .I0(\EX/ALU/result_final<0>_map48 ),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[56] ),
    .I2(\EX/ALU/N95 ),
    .I3(N10625),
    .O(\EX/ALU/result_final<0>_map51 )
  );
  defparam \EX/ALU/result_final<21>160 .INIT = 16'hF4F0;
  LUT4 \EX/ALU/result_final<21>160  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/N83 ),
    .I2(\EX/ALU/result_final<21>_map36 ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[53] ),
    .O(\EX/ALU/result_final<21>_map40 )
  );
  defparam \IF/PC_in<2>33_SW0 .INIT = 16'h5441;
  LUT4 \IF/PC_in<2>33_SW0  (
    .I0(\IF/PC [2]),
    .I1(JR),
    .I2(\ID/Z701_174 ),
    .I3(J),
    .O(N10519)
  );
  defparam \EX/ALU/result_final<10>142_SW0 .INIT = 16'h2F7F;
  LUT4 \EX/ALU/result_final<10>142_SW0  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[22] ),
    .I2(ALU_A_2_OBUF_65),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[14] ),
    .O(N10597)
  );
  defparam \EX/ALU/result_final<20>73_SW0 .INIT = 16'h5D7F;
  LUT4 \EX/ALU/result_final<20>73_SW0  (
    .I0(ALU_A_2_OBUF_65),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[8] ),
    .I3(N11751),
    .O(N10599)
  );
  defparam \EX/ALU/result_final<27>93 .INIT = 16'hCCD8;
  LUT4 \EX/ALU/result_final<27>93  (
    .I0(ALU_A_2_OBUF_65),
    .I1(ALU_B_31_OBUF_68),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[27] ),
    .I3(\EX/ALU/N1 ),
    .O(\EX/ALU/result_final<27>_map22 )
  );
  defparam \EX/ALU/adder/co_41_SW2 .INIT = 16'hE817;
  LUT4 \EX/ALU/adder/co_41_SW2  (
    .I0(ALU_A_20_OBUF_47),
    .I1(\EX/ALU/_xor0000 [20]),
    .I2(N11814),
    .I3(\EX/ALU/adder/adder_50/s_and0000 [1]),
    .O(N10627)
  );
  defparam \EX/ALU/adder/co_41_SW3 .INIT = 16'hE817;
  LUT4 \EX/ALU/adder/co_41_SW3  (
    .I0(ALU_A_20_OBUF_47),
    .I1(N11821),
    .I2(N10411),
    .I3(\EX/ALU/adder/adder_50/s_and0000 [1]),
    .O(N10628)
  );
  defparam \EX/ALU/adder/co_41_SW4 .INIT = 16'h9669;
  LUT4 \EX/ALU/adder/co_41_SW4  (
    .I0(\EX/ALU/result_final_cmp_eq0000 ),
    .I1(ALU_A_20_OBUF_47),
    .I2(N10410),
    .I3(ALU_B_20_OBUF_79),
    .O(N10630)
  );
  defparam \EX/ALU/adder/co_41_SW5 .INIT = 16'h9669;
  LUT4 \EX/ALU/adder/co_41_SW5  (
    .I0(\EX/ALU/result_final_cmp_eq0000 ),
    .I1(ALU_A_20_OBUF_47),
    .I2(N11815),
    .I3(ALU_B_20_OBUF_79),
    .O(N10631)
  );
  defparam \EX/ALU/result_final<17>77_SW0 .INIT = 16'hBAAA;
  LUT4 \EX/ALU/result_final<17>77_SW0  (
    .I0(\EX/ALU/result_final<17>_map14 ),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[49] ),
    .I3(\EX/ALU/N83 ),
    .O(N10603)
  );
  defparam \EX/ALU/adder/co_61_SW0 .INIT = 16'h8A80;
  LUT4 \EX/ALU/adder/co_61_SW0  (
    .I0(\EX/ALU/result_final<0>_map72 ),
    .I1(N11804),
    .I2(N10504),
    .I3(N10352),
    .O(N10635)
  );
  defparam \EX/ALU/result_final<0>325 .INIT = 16'hCDC8;
  LUT4 \EX/ALU/result_final<0>325  (
    .I0(\EX/ALU/adder/mux_3/out<3>1_map10 ),
    .I1(N10636),
    .I2(\EX/ALU/adder/mux_3/out<3>1_map27 ),
    .I3(N10635),
    .O(\EX/ALU/result_final<0>_map73 )
  );
  defparam \EX/ALU/adder/co_61_SW2 .INIT = 16'h8A80;
  LUT4 \EX/ALU/adder/co_61_SW2  (
    .I0(\EX/ALU/result_final<0>_map81 ),
    .I1(N10356),
    .I2(N10504),
    .I3(N11805),
    .O(N10638)
  );
  defparam \EX/ALU/adder/co_61_SW3 .INIT = 16'h8A80;
  LUT4 \EX/ALU/adder/co_61_SW3  (
    .I0(\EX/ALU/result_final<0>_map81 ),
    .I1(N11806),
    .I2(N10505),
    .I3(N10355),
    .O(N10639)
  );
  defparam \EX/ALU/result_final<28>152 .INIT = 16'hFFB1;
  LUT4 \EX/ALU/result_final<28>152  (
    .I0(ALU_A_4_OBUF_63),
    .I1(N10643),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[44] ),
    .I3(\EX/ALU/result_final<28>_map31 ),
    .O(\EX/ALU/result_final<28>_map35 )
  );
  defparam \EX/ALU/result_final<29>175 .INIT = 16'hFFB1;
  LUT4 \EX/ALU/result_final<29>175  (
    .I0(ALU_A_4_OBUF_63),
    .I1(N10645),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[45] ),
    .I3(\EX/ALU/result_final<29>_map36 ),
    .O(\EX/ALU/result_final<29>_map40 )
  );
  defparam \EX/ALU/result_final<17>137 .INIT = 16'hAAA8;
  LUT4 \EX/ALU/result_final<17>137  (
    .I0(\EX/ALU/N75 ),
    .I1(\EX/ALU/result_final<17>_map28 ),
    .I2(\EX/ALU/result_final<17>_map34 ),
    .I3(N10649),
    .O(\EX/ALU/result_final<17>_map36 )
  );
  defparam \EX/ALU/result_final<24>112 .INIT = 16'hFFB1;
  LUT4 \EX/ALU/result_final<24>112  (
    .I0(ALU_A_4_OBUF_63),
    .I1(N10651),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[40] ),
    .I3(\EX/ALU/result_final<24>_map25 ),
    .O(\EX/ALU/result_final<24>_map28 )
  );
  defparam \EX/ALU/result_final<25>135 .INIT = 16'hFFB1;
  LUT4 \EX/ALU/result_final<25>135  (
    .I0(ALU_A_4_OBUF_63),
    .I1(N10653),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[41] ),
    .I3(\EX/ALU/result_final<25>_map30 ),
    .O(\EX/ALU/result_final<25>_map33 )
  );
  defparam \EX/ALU/result_final<7>267 .INIT = 16'hFFFE;
  LUT4 \EX/ALU/result_final<7>267  (
    .I0(\EX/ALU/result_final<7>_map43 ),
    .I1(\EX/ALU/result_final<7>_map59 ),
    .I2(\EX/ALU/result_final<7>_map18 ),
    .I3(N10657),
    .O(ALUResult_7_OBUF_124)
  );
  defparam \EX/ALU/result_final<6>269 .INIT = 16'hFFFE;
  LUT4 \EX/ALU/result_final<6>269  (
    .I0(\EX/ALU/result_final<6>_map18 ),
    .I1(\EX/ALU/result_final<6>_map44 ),
    .I2(\EX/ALU/result_final<6>_map60 ),
    .I3(N10659),
    .O(ALUResult_6_OBUF_125)
  );
  defparam \EX/Mmux_B_temp1_SW2 .INIT = 16'hFDFF;
  LUT4 \EX/Mmux_B_temp1_SW2  (
    .I0(\MM_mem_wb/q [5]),
    .I1(\MM_mem_wb/q [4]),
    .I2(N10663),
    .I3(\EX/ForwardB_0_cmp_ne0000 ),
    .O(N10591)
  );
  defparam \ID/Z55 .INIT = 16'hFFF6;
  LUT4 \ID/Z55  (
    .I0(JrAddr[12]),
    .I1(RtData_id[12]),
    .I2(\ID/Z_xor0022 ),
    .I3(N11825),
    .O(\ID/Z_map21 )
  );
  defparam \ID/Z67 .INIT = 16'hFFF6;
  LUT4 \ID/Z67  (
    .I0(JrAddr[8]),
    .I1(RtData_id[8]),
    .I2(\ID/Z_xor0026 ),
    .I3(N11826),
    .O(\ID/Z_map25 )
  );
  defparam \ID/Z72 .INIT = 16'hFFF6;
  LUT4 \ID/Z72  (
    .I0(JrAddr[4]),
    .I1(RtData_id[4]),
    .I2(\ID/Z_xor0030 ),
    .I3(N11827),
    .O(\ID/Z_map28 )
  );
  defparam \EX/ALU/result_final<1>235 .INIT = 16'hD800;
  LUT4 \EX/ALU/result_final<1>235  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[11] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[9] ),
    .I3(\EX/ALU/N94 ),
    .O(\EX/ALU/result_final<1>_map54 )
  );
  defparam \EX/ALU/result_final<27>46_SW1 .INIT = 16'hFCAC;
  LUT4 \EX/ALU/result_final<27>46_SW1  (
    .I0(\EX/ALU/result_final_cmp_eq0001 ),
    .I1(\EX/ALU/result_final_cmp_eq0002 ),
    .I2(ALU_A_27_OBUF_40),
    .I3(\EX/ALU/N59 ),
    .O(N10674)
  );
  defparam \EX/ALU/result_final<5>250_SW0 .INIT = 16'hFFEC;
  LUT4 \EX/ALU/result_final<5>250_SW0  (
    .I0(\EX/ALU/N0 ),
    .I1(\EX/ALU/result_final<5>_map15 ),
    .I2(\EX/ALU/result_final<5>_map76 ),
    .I3(\EX/ALU/N58 ),
    .O(N10569)
  );
  defparam \EX/ALU/result_final<1>289_SW0 .INIT = 16'hEEEA;
  LUT4 \EX/ALU/result_final<1>289_SW0  (
    .I0(\EX/ALU/result_final<1>_map37 ),
    .I1(\EX/ALU/N88 ),
    .I2(\EX/ALU/result_final<1>_map50 ),
    .I3(\EX/ALU/result_final<1>_map47 ),
    .O(N10676)
  );
  defparam \EX/ALU/result_final<1>289 .INIT = 16'hFFFE;
  LUT4 \EX/ALU/result_final<1>289  (
    .I0(\EX/ALU/result_final<1>_map21 ),
    .I1(\EX/ALU/result_final<1>_map17 ),
    .I2(\EX/ALU/result_final<1>_map65 ),
    .I3(N10676),
    .O(ALUResult_1_OBUF_130)
  );
  defparam \ID/Z22_SW0 .INIT = 16'h7DBE;
  LUT4 \ID/Z22_SW0  (
    .I0(JrAddr[22]),
    .I1(JrAddr[21]),
    .I2(RtData_id[21]),
    .I3(RtData_id[22]),
    .O(N10678)
  );
  defparam \ID/Z22 .INIT = 16'hFFF6;
  LUT4 \ID/Z22  (
    .I0(JrAddr[23]),
    .I1(RtData_id[23]),
    .I2(\ID/Z_xor0011 ),
    .I3(N10678),
    .O(\ID/Z_map10 )
  );
  defparam \ID/Z27_SW0 .INIT = 16'h7DBE;
  LUT4 \ID/Z27_SW0  (
    .I0(JrAddr[18]),
    .I1(JrAddr[17]),
    .I2(RtData_id[17]),
    .I3(RtData_id[18]),
    .O(N10680)
  );
  defparam \ID/Z27 .INIT = 16'hFFF6;
  LUT4 \ID/Z27  (
    .I0(JrAddr[19]),
    .I1(RtData_id[19]),
    .I2(\ID/Z_xor0015 ),
    .I3(N10680),
    .O(\ID/Z_map13 )
  );
  defparam \EX/ALU/result_final<3>176 .INIT = 16'hFDFC;
  LUT4 \EX/ALU/result_final<3>176  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/result_final<3>_map36 ),
    .I2(N10686),
    .I3(\EX/ALU/result_final<3>_map39 ),
    .O(\EX/ALU/result_final<3>_map44 )
  );
  defparam \EX/ALU/result_final<2>176_SW0 .INIT = 16'hD5C0;
  LUT4 \EX/ALU/result_final<2>176_SW0  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/N94 ),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[10] ),
    .I3(\EX/ALU/result_final<2>_map39 ),
    .O(N10688)
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Result<7>21 .INIT = 8'h80;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Result<7>21  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_4_OBUF_63),
    .I2(ALU_B_31_OBUF_68),
    .O(\EX/ALU/N74 )
  );
  defparam \EX/ALU/result_final<21>73_SW0 .INIT = 16'h57DF;
  LUT4 \EX/ALU/result_final<21>73_SW0  (
    .I0(ALU_A_2_OBUF_65),
    .I1(ALU_A_3_OBUF_64),
    .I2(N11749),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[9] ),
    .O(N10641)
  );
  defparam \EX/ALU/result_final<28>67 .INIT = 16'hBAAA;
  LUT4 \EX/ALU/result_final<28>67  (
    .I0(\EX/ALU/result_final<28>_map14 ),
    .I1(N11054),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[28] ),
    .I3(\EX/ALU/N83 ),
    .O(\EX/ALU/result_final<28>_map19 )
  );
  defparam \EX/ALU/result_final<7>266 .INIT = 16'h02A8;
  LUT4 \EX/ALU/result_final<7>266  (
    .I0(\EX/ALU/N0 ),
    .I1(\EX/ALU/adder/mux_1/out<3>1_map10 ),
    .I2(\EX/ALU/adder/mux_1/out<3>1_map27 ),
    .I3(N10696),
    .O(\EX/ALU/result_final<7>_map59 )
  );
  defparam \EX/ALU/result_final<30>162_SW0 .INIT = 16'h2F7F;
  LUT4 \EX/ALU/result_final<30>162_SW0  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh[18] ),
    .I2(ALU_A_2_OBUF_65),
    .I3(N10706),
    .O(N10647)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Result<17>21_SW0 .INIT = 4'hE;
  LUT2 \EX/ALU/Mshift_result_final_shift0003_Result<17>21_SW0  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_2_OBUF_65),
    .O(N10708)
  );
  defparam \IF/PC_in<24>4_SW0 .INIT = 16'h9DBF;
  LUT4 \IF/PC_in<24>4_SW0  (
    .I0(J),
    .I1(JR),
    .I2(JrAddr[24]),
    .I3(\if_id/q[22] ),
    .O(N10710)
  );
  defparam \IF/PC_in<26>4_SW0 .INIT = 16'h9DBF;
  LUT4 \IF/PC_in<26>4_SW0  (
    .I0(J),
    .I1(JR),
    .I2(JrAddr[26]),
    .I3(\if_id/q[24] ),
    .O(N10712)
  );
  defparam \IF/PC_in<28>4_SW0 .INIT = 16'h9DBF;
  LUT4 \IF/PC_in<28>4_SW0  (
    .I0(J),
    .I1(JR),
    .I2(JrAddr[28]),
    .I3(\if_id/q[60] ),
    .O(N10714)
  );
  defparam \IF/PC_in<29>4_SW0 .INIT = 16'h9DBF;
  LUT4 \IF/PC_in<29>4_SW0  (
    .I0(J),
    .I1(JR),
    .I2(JrAddr[29]),
    .I3(\if_id/q[61] ),
    .O(N10716)
  );
  defparam \EX/ALU/adder/mux_2/out<2>1_SW2 .INIT = 8'h96;
  LUT3 \EX/ALU/adder/mux_2/out<2>1_SW2  (
    .I0(N5447),
    .I1(\EX/ALU/_xor0000 [10]),
    .I2(ALU_A_10_OBUF_57),
    .O(N10718)
  );
  defparam \EX/ALU/result_final<10>261 .INIT = 16'hA808;
  LUT4 \EX/ALU/result_final<10>261  (
    .I0(\EX/ALU/N0 ),
    .I1(N10718),
    .I2(\EX/ALU/adder/co_1 ),
    .I3(N10719),
    .O(\EX/ALU/result_final<10>_map58 )
  );
  defparam \IF/PC_in<2>25_SW0 .INIT = 4'h7;
  LUT2 \IF/PC_in<2>25_SW0  (
    .I0(J),
    .I1(\if_id/q[0] ),
    .O(N10724)
  );
  defparam \IF/PC_in<2>25_SW1 .INIT = 8'hF9;
  LUT3 \IF/PC_in<2>25_SW1  (
    .I0(\if_id/q[0] ),
    .I1(\if_id/q[34] ),
    .I2(J),
    .O(N10725)
  );
  defparam \IF/PC_in<2>25 .INIT = 16'h0053;
  LUT4 \IF/PC_in<2>25  (
    .I0(N10725),
    .I1(N10724),
    .I2(\ID/Z701_174 ),
    .I3(JR),
    .O(\IF/PC_in<2>_map7 )
  );
  defparam \IF/PC_in<5>80_SW0 .INIT = 4'h7;
  LUT2 \IF/PC_in<5>80_SW0  (
    .I0(J),
    .I1(\if_id/q[3] ),
    .O(N10727)
  );
  defparam \IF/PC_in<5>80_SW1 .INIT = 4'hD;
  LUT2 \IF/PC_in<5>80_SW1  (
    .I0(\IF/PC_in<5>_map20 ),
    .I1(J),
    .O(N10728)
  );
  defparam \IF/PC_in<5>80 .INIT = 16'h0053;
  LUT4 \IF/PC_in<5>80  (
    .I0(N10728),
    .I1(N10727),
    .I2(\ID/Z701_174 ),
    .I3(JR),
    .O(\IF/PC_in<5>_map22 )
  );
  defparam \IF/PC_in<6>72_SW0 .INIT = 4'h7;
  LUT2 \IF/PC_in<6>72_SW0  (
    .I0(J),
    .I1(\if_id/q[15] ),
    .O(N10730)
  );
  defparam \IF/PC_in<6>72 .INIT = 16'h0053;
  LUT4 \IF/PC_in<6>72  (
    .I0(N10731),
    .I1(N10730),
    .I2(\ID/Z701_174 ),
    .I3(JR),
    .O(\IF/PC_in<6>_map19 )
  );
  defparam \IF/PC_in<9>80_SW0 .INIT = 4'h7;
  LUT2 \IF/PC_in<9>80_SW0  (
    .I0(J),
    .I1(\if_id/q[7] ),
    .O(N10733)
  );
  defparam \IF/PC_in<9>80 .INIT = 16'h0131;
  LUT4 \IF/PC_in<9>80  (
    .I0(N10733),
    .I1(JR),
    .I2(\ID/Z701_174 ),
    .I3(N10734),
    .O(\IF/PC_in<9>_map22 )
  );
  defparam \IF/PC_in<13>80_SW0 .INIT = 8'hF7;
  LUT3 \IF/PC_in<13>80_SW0  (
    .I0(J),
    .I1(\if_id/q[11] ),
    .I2(JR),
    .O(N10736)
  );
  defparam \IF/PC_in<13>80_SW1 .INIT = 4'hE;
  LUT2 \IF/PC_in<13>80_SW1  (
    .I0(JR),
    .I1(J),
    .O(N10737)
  );
  defparam \IF/PC_in<13>80 .INIT = 16'h3505;
  LUT4 \IF/PC_in<13>80  (
    .I0(N10736),
    .I1(N10737),
    .I2(\ID/Z701_174 ),
    .I3(\IF/PC_in<13>_map20 ),
    .O(\IF/PC_in<13>_map22 )
  );
  defparam \EX/ALU/adder/co_21_SW2 .INIT = 16'h9996;
  LUT4 \EX/ALU/adder/co_21_SW2  (
    .I0(ALU_A_12_OBUF_55),
    .I1(\EX/ALU/_xor0000 [12]),
    .I2(ALU_A_11_OBUF_56),
    .I3(\EX/ALU/_xor0000 [11]),
    .O(N10739)
  );
  defparam \EX/ALU/result_final<12>220 .INIT = 16'hCCCA;
  LUT4 \EX/ALU/result_final<12>220  (
    .I0(N10739),
    .I1(N10740),
    .I2(\EX/ALU/adder/mux_2/out<3>1_map27 ),
    .I3(\EX/ALU/adder/mux_2/out<3>1_map10 ),
    .O(\EX/ALU/result_final<12>_map54 )
  );
  defparam \IF/PC_in<3>4_SW0 .INIT = 16'hCB08;
  LUT4 \IF/PC_in<3>4_SW0  (
    .I0(JrAddr[3]),
    .I1(JR),
    .I2(J),
    .I3(NextPC_if[3]),
    .O(N10751)
  );
  defparam \IF/PC_in<15>4_SW0 .INIT = 16'hCB08;
  LUT4 \IF/PC_in<15>4_SW0  (
    .I0(\if_id/q[15] ),
    .I1(J),
    .I2(JR),
    .I3(NextPC_if[15]),
    .O(N10754)
  );
  defparam \IF/PC_in<14>4_SW0 .INIT = 16'hCB08;
  LUT4 \IF/PC_in<14>4_SW0  (
    .I0(\if_id/q[12] ),
    .I1(J),
    .I2(JR),
    .I3(NextPC_if[14]),
    .O(N10757)
  );
  defparam \IF/PC_in<16>4_SW0 .INIT = 16'hCB08;
  LUT4 \IF/PC_in<16>4_SW0  (
    .I0(\if_id/q[14] ),
    .I1(J),
    .I2(JR),
    .I3(NextPC_if[16]),
    .O(N10760)
  );
  defparam \IF/PC_in<17>4_SW0 .INIT = 16'hCB08;
  LUT4 \IF/PC_in<17>4_SW0  (
    .I0(\if_id/q[15] ),
    .I1(J),
    .I2(JR),
    .I3(NextPC_if[17]),
    .O(N10763)
  );
  defparam \IF/PC_in<4>4_SW0 .INIT = 16'hCB08;
  LUT4 \IF/PC_in<4>4_SW0  (
    .I0(JrAddr[4]),
    .I1(JR),
    .I2(J),
    .I3(NextPC_if[4]),
    .O(N10766)
  );
  defparam \IF/PC_in<19>4_SW0 .INIT = 16'hCB08;
  LUT4 \IF/PC_in<19>4_SW0  (
    .I0(\if_id/q[17] ),
    .I1(J),
    .I2(JR),
    .I3(NextPC_if[19]),
    .O(N10769)
  );
  defparam \IF/PC_in<18>4_SW0 .INIT = 16'hCB08;
  LUT4 \IF/PC_in<18>4_SW0  (
    .I0(\if_id/q[16] ),
    .I1(J),
    .I2(JR),
    .I3(NextPC_if[18]),
    .O(N10772)
  );
  defparam \IF/PC_in<8>4_SW0 .INIT = 16'hCB08;
  LUT4 \IF/PC_in<8>4_SW0  (
    .I0(JrAddr[8]),
    .I1(JR),
    .I2(J),
    .I3(NextPC_if[8]),
    .O(N10775)
  );
  defparam \IF/PC_in<7>4_SW0 .INIT = 16'hCB08;
  LUT4 \IF/PC_in<7>4_SW0  (
    .I0(JrAddr[7]),
    .I1(JR),
    .I2(J),
    .I3(NextPC_if[7]),
    .O(N10778)
  );
  defparam \IF/PC_in<12>4_SW0 .INIT = 16'hCB08;
  LUT4 \IF/PC_in<12>4_SW0  (
    .I0(JrAddr[12]),
    .I1(JR),
    .I2(J),
    .I3(NextPC_if[12]),
    .O(N10781)
  );
  defparam \IF/PC_in<11>4_SW0 .INIT = 16'hCB08;
  LUT4 \IF/PC_in<11>4_SW0  (
    .I0(JrAddr[11]),
    .I1(JR),
    .I2(J),
    .I3(NextPC_if[11]),
    .O(N10784)
  );
  defparam \IF/PC_in<10>4_SW0 .INIT = 16'hCB08;
  LUT4 \IF/PC_in<10>4_SW0  (
    .I0(JrAddr[10]),
    .I1(JR),
    .I2(J),
    .I3(NextPC_if[10]),
    .O(N10787)
  );
  defparam \IF/PC_in<27>4_SW0 .INIT = 16'hCB08;
  LUT4 \IF/PC_in<27>4_SW0  (
    .I0(JrAddr[27]),
    .I1(JR),
    .I2(J),
    .I3(NextPC_if[27]),
    .O(N10796)
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<59>1_SW1 .INIT = 16'hF1A0;
  LUT4 \EX/ALU/Mshift_result_final_shift0005_Sh<59>1_SW1  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_2_OBUF_65),
    .I2(ALU_B_31_OBUF_68),
    .I3(ALU_A_3_OBUF_64),
    .O(N10800)
  );
  defparam \EX/ALU/result_final<19>90 .INIT = 8'hCA;
  LUT3 \EX/ALU/result_final<19>90  (
    .I0(N10799),
    .I1(N10800),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[27] ),
    .O(\EX/ALU/result_final<19>_map21 )
  );
  defparam \EX/ALU/adder/mux_3/out<3>165_SW0 .INIT = 16'h88E8;
  LUT4 \EX/ALU/adder/mux_3/out<3>165_SW0  (
    .I0(ALU_A_15_OBUF_52),
    .I1(\EX/ALU/_xor0000 [15]),
    .I2(N10341),
    .I3(\EX/ALU/adder/mux_3/out<3>1_map10 ),
    .O(N10802)
  );
  defparam \EX/ALU/adder/co_31 .INIT = 16'hCDC8;
  LUT4 \EX/ALU/adder/co_31  (
    .I0(\EX/ALU/adder/mux_2/out<3>1_map10 ),
    .I1(N10803),
    .I2(\EX/ALU/adder/mux_2/out<3>1_map27 ),
    .I3(N10802),
    .O(\EX/ALU/adder/co_3 )
  );
  defparam \EX/ALU/adder/mux_3/out<3>165_SW3 .INIT = 16'hDC8C;
  LUT4 \EX/ALU/adder/mux_3/out<3>165_SW3  (
    .I0(\EX/ALU/adder/mux_3/out<3>1_map10 ),
    .I1(N10339),
    .I2(N10342),
    .I3(N10338),
    .O(N10806)
  );
  defparam \EX/ALU/adder/mux_4/out<3>165 .INIT = 16'h01FB;
  LUT4 \EX/ALU/adder/mux_4/out<3>165  (
    .I0(\EX/ALU/adder/mux_2/out<3>1_map10 ),
    .I1(N10805),
    .I2(\EX/ALU/adder/mux_2/out<3>1_map27 ),
    .I3(N10806),
    .O(\EX/ALU/adder/mux_4/out<3>1_map27 )
  );
  defparam \EX/ALU/adder/mux_3/out<3>165_SW5 .INIT = 16'hFB40;
  LUT4 \EX/ALU/adder/mux_3/out<3>165_SW5  (
    .I0(\EX/ALU/adder/mux_3/out<3>1_map10 ),
    .I1(N10342),
    .I2(N10349),
    .I3(N10350),
    .O(N10809)
  );
  defparam \EX/ALU/adder/mux_5/out<3>165 .INIT = 16'h0E1F;
  LUT4 \EX/ALU/adder/mux_5/out<3>165  (
    .I0(\EX/ALU/adder/mux_2/out<3>1_map10 ),
    .I1(\EX/ALU/adder/mux_2/out<3>1_map27 ),
    .I2(N10809),
    .I3(N10808),
    .O(\EX/ALU/adder/mux_5/out<3>1_map27 )
  );
  defparam \EX/ALU/adder/mux_3/out<3>165_SW6 .INIT = 16'hFB40;
  LUT4 \EX/ALU/adder/mux_3/out<3>165_SW6  (
    .I0(\EX/ALU/adder/mux_3/out<3>1_map10 ),
    .I1(N10341),
    .I2(N10410),
    .I3(N10411),
    .O(N10811)
  );
  defparam \EX/ALU/adder/co_41 .INIT = 16'hCDC8;
  LUT4 \EX/ALU/adder/co_41  (
    .I0(\EX/ALU/adder/mux_2/out<3>1_map10 ),
    .I1(N10812),
    .I2(\EX/ALU/adder/mux_2/out<3>1_map27 ),
    .I3(N10811),
    .O(\EX/ALU/adder/co_4 )
  );
  defparam \EX/ALU/adder/mux_3/out<3>165_SW9 .INIT = 16'h96C3;
  LUT4 \EX/ALU/adder/mux_3/out<3>165_SW9  (
    .I0(\EX/ALU/adder/mux_3/out<3>1_map10 ),
    .I1(\EX/ALU/_xor0000 [15]),
    .I2(ALU_A_15_OBUF_52),
    .I3(N10342),
    .O(N10815)
  );
  defparam \EX/ALU/result_final<15>218 .INIT = 16'h01FB;
  LUT4 \EX/ALU/result_final<15>218  (
    .I0(\EX/ALU/adder/mux_2/out<3>1_map10 ),
    .I1(N10814),
    .I2(\EX/ALU/adder/mux_2/out<3>1_map27 ),
    .I3(N10815),
    .O(\EX/ALU/result_final<15>_map52 )
  );
  defparam \EX/ALU/adder/mux_3/out<3>165_SW10 .INIT = 16'hCCAC;
  LUT4 \EX/ALU/adder/mux_3/out<3>165_SW10  (
    .I0(N10588),
    .I1(N11834),
    .I2(N10341),
    .I3(\EX/ALU/adder/mux_3/out<3>1_map10 ),
    .O(N10817)
  );
  defparam \EX/ALU/result_final<16>208 .INIT = 16'hCDC8;
  LUT4 \EX/ALU/result_final<16>208  (
    .I0(\EX/ALU/adder/mux_2/out<3>1_map10 ),
    .I1(N10818),
    .I2(\EX/ALU/adder/mux_2/out<3>1_map27 ),
    .I3(N10817),
    .O(\EX/ALU/result_final<16>_map52 )
  );
  defparam \IF/PC_in_cmp_eq00001_SW0 .INIT = 16'hFFED;
  LUT4 \IF/PC_in_cmp_eq00001_SW0  (
    .I0(N10315),
    .I1(J),
    .I2(N11764),
    .I3(JR),
    .O(N10820)
  );
  defparam \EX/ALU/result_final<14>227_SW1 .INIT = 16'hFF48;
  LUT4 \EX/ALU/result_final<14>227_SW1  (
    .I0(N6283),
    .I1(\EX/ALU/N0 ),
    .I2(N10449),
    .I3(N11822),
    .O(N10823)
  );
  defparam \EX/ALU/result_final<14>244 .INIT = 16'hFBEA;
  LUT4 \EX/ALU/result_final<14>244  (
    .I0(\EX/ALU/result_final<14>_map39 ),
    .I1(\EX/ALU/adder/co_2 ),
    .I2(N10823),
    .I3(N10822),
    .O(ALUResult_14_OBUF_117)
  );
  defparam \EX/ALU/result_final<27>100_SW1 .INIT = 16'hFF48;
  LUT4 \EX/ALU/result_final<27>100_SW1  (
    .I0(N11839),
    .I1(\EX/ALU/N0 ),
    .I2(ALU_A_27_OBUF_40),
    .I3(\EX/ALU/N58 ),
    .O(N10825)
  );
  defparam \EX/ALU/result_final<24>150 .INIT = 16'hB800;
  LUT4 \EX/ALU/result_final<24>150  (
    .I0(ALU_B_31_OBUF_68),
    .I1(\EX/ALU/N1 ),
    .I2(N11739),
    .I3(\EX/ALU/N88 ),
    .O(\EX/ALU/result_final<24>_map34 )
  );
  defparam \EX/ALU/result_final<28>195 .INIT = 16'hB080;
  LUT4 \EX/ALU/result_final<28>195  (
    .I0(ALU_B_31_OBUF_68),
    .I1(\EX/ALU/N1 ),
    .I2(N11725),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[60] ),
    .O(\EX/ALU/result_final<28>_map41 )
  );
  defparam \EX/ALU/result_final<23>97 .INIT = 16'hB800;
  LUT4 \EX/ALU/result_final<23>97  (
    .I0(ALU_B_31_OBUF_68),
    .I1(\EX/ALU/N1 ),
    .I2(N11740),
    .I3(\EX/ALU/N88 ),
    .O(\EX/ALU/result_final<23>_map23 )
  );
  defparam \EX/ALU/result_final<1>189 .INIT = 16'hFF40;
  LUT4 \EX/ALU/result_final<1>189  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[41] ),
    .I3(\EX/ALU/result_final<1>_map45 ),
    .O(\EX/ALU/result_final<1>_map47 )
  );
  defparam \ID/Z504_SW0 .INIT = 16'h4FFF;
  LUT4 \ID/Z504_SW0  (
    .I0(\if_id/q[31] ),
    .I1(\ID/Decode/ALUtemp<0>_map32 ),
    .I2(\ID/Z_map96 ),
    .I3(\ID/Z_map65 ),
    .O(N10510)
  );
  defparam \ID/Z387 .INIT = 16'h0010;
  LUT4 \ID/Z387  (
    .I0(N10547),
    .I1(\ID/Z_xor0010 ),
    .I2(\ID/Z_map128 ),
    .I3(\ID/Z_xor0007 ),
    .O(\ID/Z_map129 )
  );
  defparam \EX/ALU/result_final<29>90 .INIT = 16'hFFEA;
  LUT4 \EX/ALU/result_final<29>90  (
    .I0(\EX/ALU/result_final<29>_map14 ),
    .I1(\EX/ALU/N83 ),
    .I2(N10833),
    .I3(\EX/ALU/result_final<29>_map23 ),
    .O(\EX/ALU/result_final<29>_map24 )
  );
  defparam \EX/ALU/result_final<3>133 .INIT = 16'hAA8A;
  LUT4 \EX/ALU/result_final<3>133  (
    .I0(\EX/ALU/N88 ),
    .I1(\EX/ALU/result_final<3>_map23 ),
    .I2(N10835),
    .I3(\EX/ALU/result_final<3>_map32 ),
    .O(\EX/ALU/result_final<3>_map34 )
  );
  defparam \EX/ALU/result_final<11>127_SW0 .INIT = 16'hFFA8;
  LUT4 \EX/ALU/result_final<11>127_SW0  (
    .I0(\EX/ALU/N83 ),
    .I1(\EX/ALU/result_final<11>_map27 ),
    .I2(N10837),
    .I3(\EX/ALU/N58 ),
    .O(N10613)
  );
  defparam \ID/Z347_SW0 .INIT = 16'h7DBE;
  LUT4 \ID/Z347_SW0  (
    .I0(JrAddr[27]),
    .I1(JrAddr[26]),
    .I2(RtData_id[26]),
    .I3(RtData_id[27]),
    .O(N10841)
  );
  defparam \ID/Z347 .INIT = 16'h0009;
  LUT4 \ID/Z347  (
    .I0(RtData_id[28]),
    .I1(JrAddr[28]),
    .I2(\ID/Z_xor0006 ),
    .I3(N10841),
    .O(\ID/Z_map113 )
  );
  defparam \ID/Z227_SW0 .INIT = 16'h0001;
  LUT4 \ID/Z227_SW0  (
    .I0(\ID/MultiRegisters/_varindex0000 [26]),
    .I1(\ID/MultiRegisters/_varindex0000 [25]),
    .I2(\ID/MultiRegisters/_varindex0000 [24]),
    .I3(\ID/MultiRegisters/_varindex0000 [23]),
    .O(N10843)
  );
  defparam \ID/Z227_SW1 .INIT = 16'hFFFE;
  LUT4 \ID/Z227_SW1  (
    .I0(RegWriteData_wb[26]),
    .I1(RegWriteData_wb[25]),
    .I2(RegWriteData_wb[24]),
    .I3(RegWriteData_wb[23]),
    .O(N10844)
  );
  defparam \ID/Z240_SW1 .INIT = 16'hFFFE;
  LUT4 \ID/Z240_SW1  (
    .I0(RegWriteData_wb[28]),
    .I1(RegWriteData_wb[29]),
    .I2(RegWriteData_wb[27]),
    .I3(RegWriteData_wb[2]),
    .O(N10847)
  );
  defparam \ID/Z240 .INIT = 16'h3F3A;
  LUT4 \ID/Z240  (
    .I0(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I1(N10847),
    .I2(\ID/RsSel ),
    .I3(N10846),
    .O(\ID/Z_map79 )
  );
  defparam \ID/Z264_SW1 .INIT = 16'hFFFE;
  LUT4 \ID/Z264_SW1  (
    .I0(RegWriteData_wb[5]),
    .I1(RegWriteData_wb[4]),
    .I2(RegWriteData_wb[3]),
    .I3(RegWriteData_wb[30]),
    .O(N10850)
  );
  defparam \ID/Z264 .INIT = 16'h3F3A;
  LUT4 \ID/Z264  (
    .I0(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I1(N10850),
    .I2(\ID/RsSel ),
    .I3(N10849),
    .O(\ID/Z_map87 )
  );
  defparam \ID/Z277_SW1 .INIT = 16'hFFFE;
  LUT4 \ID/Z277_SW1  (
    .I0(RegWriteData_wb[8]),
    .I1(RegWriteData_wb[7]),
    .I2(RegWriteData_wb[6]),
    .I3(RegWriteData_wb[16]),
    .O(N10853)
  );
  defparam \ID/Z277 .INIT = 16'h3F3A;
  LUT4 \ID/Z277  (
    .I0(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I1(N10853),
    .I2(\ID/RsSel ),
    .I3(N10852),
    .O(\ID/Z_map94 )
  );
  defparam \ID/Z151_SW1 .INIT = 16'hFFFE;
  LUT4 \ID/Z151_SW1  (
    .I0(RegWriteData_wb[15]),
    .I1(RegWriteData_wb[14]),
    .I2(RegWriteData_wb[13]),
    .I3(RegWriteData_wb[10]),
    .O(N10856)
  );
  defparam \ID/Z151 .INIT = 16'h3F3A;
  LUT4 \ID/Z151  (
    .I0(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I1(N10856),
    .I2(\ID/RsSel ),
    .I3(N10855),
    .O(\ID/Z_map48 )
  );
  defparam \ID/Z175_SW1 .INIT = 16'hFFFE;
  LUT4 \ID/Z175_SW1  (
    .I0(RegWriteData_wb[18]),
    .I1(RegWriteData_wb[17]),
    .I2(RegWriteData_wb[1]),
    .I3(RegWriteData_wb[19]),
    .O(N10859)
  );
  defparam \ID/Z175 .INIT = 16'h3F3A;
  LUT4 \ID/Z175  (
    .I0(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I1(N10859),
    .I2(\ID/RsSel ),
    .I3(N10858),
    .O(\ID/Z_map56 )
  );
  defparam \ID/Z188_SW1 .INIT = 16'hFFFE;
  LUT4 \ID/Z188_SW1  (
    .I0(RegWriteData_wb[22]),
    .I1(RegWriteData_wb[21]),
    .I2(RegWriteData_wb[20]),
    .I3(RegWriteData_wb[12]),
    .O(N10862)
  );
  defparam \ID/Z188 .INIT = 16'h3F3A;
  LUT4 \ID/Z188  (
    .I0(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I1(N10862),
    .I2(\ID/RsSel ),
    .I3(N10861),
    .O(\ID/Z_map63 )
  );
  defparam \EX/ALU/result_final<10>75_SW0 .INIT = 16'hBAAA;
  LUT4 \EX/ALU/result_final<10>75_SW0  (
    .I0(\EX/ALU/result_final<10>_map14 ),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[42] ),
    .I3(\EX/ALU/N75 ),
    .O(N10831)
  );
  defparam \ID/Z10 .INIT = 16'hFFF6;
  LUT4 \ID/Z10  (
    .I0(JrAddr[27]),
    .I1(RtData_id[27]),
    .I2(\ID/Z_xor0007 ),
    .I3(N10864),
    .O(\ID/Z_map6 )
  );
  defparam \EX/ALU/result_final<1>240_SW0 .INIT = 16'h2F7F;
  LUT4 \EX/ALU/result_final<1>240_SW0  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_4_OBUF_95),
    .I2(\EX/ALU/N70 ),
    .I3(ALU_B_3_OBUF_96),
    .O(N10829)
  );
  defparam \IF/PC_in_cmp_eq00001_SW1 .INIT = 8'h69;
  LUT3 \IF/PC_in_cmp_eq00001_SW1  (
    .I0(\ID/addOffset/co_1 ),
    .I1(\if_id/q[6] ),
    .I2(\if_id/q[40] ),
    .O(N10872)
  );
  defparam \IF/PC_in_cmp_eq00001_SW3 .INIT = 8'h69;
  LUT3 \IF/PC_in_cmp_eq00001_SW3  (
    .I0(\ID/addOffset/co_0 ),
    .I1(\if_id/q[2] ),
    .I2(\if_id/q[36] ),
    .O(N10876)
  );
  defparam \IF/PC_in_cmp_eq00001_SW5 .INIT = 8'h69;
  LUT3 \IF/PC_in_cmp_eq00001_SW5  (
    .I0(\ID/addOffset/co_2 ),
    .I1(\if_id/q[15] ),
    .I2(\if_id/q[44] ),
    .O(N10880)
  );
  defparam \IF/PC_in_cmp_eq00001_SW7 .INIT = 8'h96;
  LUT3 \IF/PC_in_cmp_eq00001_SW7  (
    .I0(\ID/addOffset/N33 ),
    .I1(\if_id/q[42] ),
    .I2(\if_id/q[15] ),
    .O(N10884)
  );
  defparam \IF/PC_in_cmp_eq00001_SW8 .INIT = 8'h69;
  LUT3 \IF/PC_in_cmp_eq00001_SW8  (
    .I0(\ID/addOffset/co_4 ),
    .I1(\if_id/q[15] ),
    .I2(\if_id/q[52] ),
    .O(N10886)
  );
  defparam \IF/PC_in_cmp_eq00001_SW9 .INIT = 8'h69;
  LUT3 \IF/PC_in_cmp_eq00001_SW9  (
    .I0(\if_id/q[60] ),
    .I1(\if_id/q[15] ),
    .I2(\ID/addOffset/co_6 ),
    .O(N10888)
  );
  defparam \IF/PC_in_cmp_eq00001_SW12 .INIT = 16'hFFBE;
  LUT4 \IF/PC_in_cmp_eq00001_SW12  (
    .I0(JR),
    .I1(\if_id/q[15] ),
    .I2(\if_id/q[62] ),
    .I3(J),
    .O(N10894)
  );
  defparam \IF/PC_in_cmp_eq00001_SW13 .INIT = 16'hFFEB;
  LUT4 \IF/PC_in_cmp_eq00001_SW13  (
    .I0(JR),
    .I1(\if_id/q[15] ),
    .I2(\if_id/q[62] ),
    .I3(J),
    .O(N10895)
  );
  defparam \IF/PC_in<30>7_SW0_SW0 .INIT = 16'h3050;
  LUT4 \IF/PC_in<30>7_SW0_SW0  (
    .I0(N10894),
    .I1(N10895),
    .I2(\ID/Z701_174 ),
    .I3(\ID/addOffset/N28 ),
    .O(N10459)
  );
  defparam \IF/PC_in_cmp_eq00001_SW14 .INIT = 16'hFFBE;
  LUT4 \IF/PC_in_cmp_eq00001_SW14  (
    .I0(JR),
    .I1(\if_id/q[15] ),
    .I2(\if_id/q[63] ),
    .I3(J),
    .O(N10897)
  );
  defparam \IF/PC_in_cmp_eq00001_SW15 .INIT = 16'hFFEB;
  LUT4 \IF/PC_in_cmp_eq00001_SW15  (
    .I0(JR),
    .I1(\if_id/q[15] ),
    .I2(\if_id/q[63] ),
    .I3(J),
    .O(N10898)
  );
  defparam \IF/PC_in<31>7_SW0 .INIT = 16'h3050;
  LUT4 \IF/PC_in<31>7_SW0  (
    .I0(N10897),
    .I1(N10898),
    .I2(\ID/Z701_174 ),
    .I3(\ID/addOffset/N21 ),
    .O(N10507)
  );
  defparam \EX/ALU/result_final<9>230 .INIT = 16'hFFEC;
  LUT4 \EX/ALU/result_final<9>230  (
    .I0(\EX/ALU/N0 ),
    .I1(\EX/ALU/result_final<9>_map36 ),
    .I2(\EX/ALU/result_final<9>_map54 ),
    .I3(N10902),
    .O(ALUResult_9_OBUF_122)
  );
  defparam \EX/ALU/result_final<4>147_SW0 .INIT = 16'hFF80;
  LUT4 \EX/ALU/result_final<4>147_SW0  (
    .I0(ALU_A_4_OBUF_63),
    .I1(N11726),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[52] ),
    .I3(\EX/ALU/result_final<0>3_160 ),
    .O(N10904)
  );
  defparam \EX/ALU/result_final<4>147_SW1 .INIT = 4'hE;
  LUT2 \EX/ALU/result_final<4>147_SW1  (
    .I0(\EX/ALU/result_final<0>3_160 ),
    .I1(\EX/ALU/N83 ),
    .O(N10905)
  );
  defparam \EX/ALU/result_final<13>94_SW0 .INIT = 16'h0040;
  LUT4 \EX/ALU/result_final<13>94_SW0  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[29] ),
    .I3(ALU_A_2_OBUF_65),
    .O(N10447)
  );
  defparam \EX/ALU/result_final<21>119 .INIT = 16'hEA40;
  LUT4 \EX/ALU/result_final<21>119  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_3_OBUF_64),
    .I2(N11737),
    .I3(ALU_B_31_OBUF_68),
    .O(\EX/ALU/result_final<21>_map28 )
  );
  defparam \EX/ALU/result_final<29>65_SW0 .INIT = 16'h0010;
  LUT4 \EX/ALU/result_final<29>65_SW0  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[29] ),
    .I3(ALU_A_3_OBUF_64),
    .O(N10833)
  );
  defparam \EX/ALU/result_final<7>119_SW1 .INIT = 16'hF2F0;
  LUT4 \EX/ALU/result_final<7>119_SW1  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/result_final<7>_map21 ),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[55] ),
    .O(N10690)
  );
  defparam \EX/ALU/result_final<6>122_SW1 .INIT = 16'hF2F0;
  LUT4 \EX/ALU/result_final<6>122_SW1  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/result_final<6>_map22 ),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[54] ),
    .O(N10692)
  );
  defparam \ID/Z138_SW0 .INIT = 16'hAAAB;
  LUT4 \ID/Z138_SW0  (
    .I0(N11730),
    .I1(\ID/MultiRegisters/_varindex0000 [9]),
    .I2(\ID/MultiRegisters/_varindex0000 [11]),
    .I3(\ID/MultiRegisters/_varindex0000 [0]),
    .O(N10915)
  );
  defparam \ID/Z138_SW1 .INIT = 8'hFE;
  LUT3 \ID/Z138_SW1  (
    .I0(RegWriteData_wb[0]),
    .I1(RegWriteData_wb[9]),
    .I2(RegWriteData_wb[11]),
    .O(N10916)
  );
  defparam \EX/ALU/result_final<8>49_SW1 .INIT = 16'hEFE0;
  LUT4 \EX/ALU/result_final<8>49_SW1  (
    .I0(\EX/ALU/N68 ),
    .I1(\EX/ALU/N140 ),
    .I2(ALU_A_8_OBUF_59),
    .I3(\EX/ALU/N20 ),
    .O(N10919)
  );
  defparam \EX/ALU/result_final<9>49_SW1 .INIT = 16'hEFE0;
  LUT4 \EX/ALU/result_final<9>49_SW1  (
    .I0(\EX/ALU/N68 ),
    .I1(\EX/ALU/N140 ),
    .I2(ALU_A_9_OBUF_58),
    .I3(\EX/ALU/N20 ),
    .O(N10922)
  );
  defparam \EX/ALU/result_final<10>46_SW1 .INIT = 16'hEFE0;
  LUT4 \EX/ALU/result_final<10>46_SW1  (
    .I0(\EX/ALU/N68 ),
    .I1(\EX/ALU/N140 ),
    .I2(ALU_A_10_OBUF_57),
    .I3(\EX/ALU/N20 ),
    .O(N10925)
  );
  defparam \EX/ALU/result_final<12>46_SW1 .INIT = 16'hEFE0;
  LUT4 \EX/ALU/result_final<12>46_SW1  (
    .I0(\EX/ALU/N68 ),
    .I1(\EX/ALU/N140 ),
    .I2(ALU_A_12_OBUF_55),
    .I3(\EX/ALU/N20 ),
    .O(N10928)
  );
  defparam \EX/ALU/result_final<13>46_SW1 .INIT = 16'hEFE0;
  LUT4 \EX/ALU/result_final<13>46_SW1  (
    .I0(N11845),
    .I1(\EX/ALU/N140 ),
    .I2(ALU_A_13_OBUF_54),
    .I3(\EX/ALU/N20 ),
    .O(N10931)
  );
  defparam \EX/ALU/result_final<14>46_SW1 .INIT = 16'hEFE0;
  LUT4 \EX/ALU/result_final<14>46_SW1  (
    .I0(\EX/ALU/N68 ),
    .I1(\EX/ALU/N140 ),
    .I2(ALU_A_14_OBUF_53),
    .I3(\EX/ALU/N20 ),
    .O(N10934)
  );
  defparam \EX/ALU/result_final<17>46_SW1 .INIT = 16'hFCAC;
  LUT4 \EX/ALU/result_final<17>46_SW1  (
    .I0(\EX/ALU/result_final_cmp_eq0001 ),
    .I1(\EX/ALU/result_final_cmp_eq0002 ),
    .I2(ALU_A_17_OBUF_50),
    .I3(\EX/ALU/N59 ),
    .O(N10937)
  );
  defparam \EX/ALU/result_final<19>46_SW1 .INIT = 16'hFCAC;
  LUT4 \EX/ALU/result_final<19>46_SW1  (
    .I0(\EX/ALU/result_final_cmp_eq0001 ),
    .I1(\EX/ALU/result_final_cmp_eq0002 ),
    .I2(ALU_A_19_OBUF_48),
    .I3(\EX/ALU/N59 ),
    .O(N10940)
  );
  defparam \EX/ALU/result_final<18>46_SW1 .INIT = 16'hFCAC;
  LUT4 \EX/ALU/result_final<18>46_SW1  (
    .I0(\EX/ALU/result_final_cmp_eq0001 ),
    .I1(\EX/ALU/result_final_cmp_eq0002 ),
    .I2(ALU_A_18_OBUF_49),
    .I3(\EX/ALU/N59 ),
    .O(N10943)
  );
  defparam \EX/ALU/result_final<23>46_SW1 .INIT = 16'hFCAC;
  LUT4 \EX/ALU/result_final<23>46_SW1  (
    .I0(\EX/ALU/result_final_cmp_eq0001 ),
    .I1(\EX/ALU/result_final_cmp_eq0002 ),
    .I2(ALU_A_23_OBUF_44),
    .I3(\EX/ALU/N59 ),
    .O(N10946)
  );
  defparam \EX/ALU/result_final<22>70_SW1 .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<22>70_SW1  (
    .I0(\EX/ALU/N59 ),
    .I1(ALU_A_22_OBUF_45),
    .I2(\EX/ALU/result_final_cmp_eq0001 ),
    .I3(\EX/ALU/result_final_cmp_eq0002 ),
    .O(N10949)
  );
  defparam \EX/ALU/result_final<24>46_SW1 .INIT = 16'hFCAC;
  LUT4 \EX/ALU/result_final<24>46_SW1  (
    .I0(N11716),
    .I1(\EX/ALU/result_final_cmp_eq0002 ),
    .I2(ALU_A_24_OBUF_43),
    .I3(\EX/ALU/N59 ),
    .O(N10952)
  );
  defparam \EX/ALU/result_final<25>46_SW1 .INIT = 16'hFCAC;
  LUT4 \EX/ALU/result_final<25>46_SW1  (
    .I0(\EX/ALU/result_final_cmp_eq0001 ),
    .I1(\EX/ALU/result_final_cmp_eq0002 ),
    .I2(ALU_A_25_OBUF_42),
    .I3(\EX/ALU/N59 ),
    .O(N10955)
  );
  defparam \EX/ALU/result_final<26>46_SW1 .INIT = 16'hFCAC;
  LUT4 \EX/ALU/result_final<26>46_SW1  (
    .I0(\EX/ALU/result_final_cmp_eq0001 ),
    .I1(\EX/ALU/result_final_cmp_eq0002 ),
    .I2(ALU_A_26_OBUF_41),
    .I3(\EX/ALU/N59 ),
    .O(N10958)
  );
  defparam \EX/ALU/result_final<28>46_SW1 .INIT = 16'hFCAC;
  LUT4 \EX/ALU/result_final<28>46_SW1  (
    .I0(\EX/ALU/result_final_cmp_eq0001 ),
    .I1(\EX/ALU/result_final_cmp_eq0002 ),
    .I2(ALU_A_28_OBUF_39),
    .I3(\EX/ALU/N59 ),
    .O(N10961)
  );
  defparam \EX/ALU/result_final<29>46_SW1 .INIT = 16'hFCAC;
  LUT4 \EX/ALU/result_final<29>46_SW1  (
    .I0(\EX/ALU/result_final_cmp_eq0001 ),
    .I1(\EX/ALU/result_final_cmp_eq0002 ),
    .I2(ALU_A_29_OBUF_38),
    .I3(\EX/ALU/N59 ),
    .O(N10964)
  );
  defparam \EX/ALU/result_final<30>46_SW1 .INIT = 16'hFCAC;
  LUT4 \EX/ALU/result_final<30>46_SW1  (
    .I0(\EX/ALU/result_final_cmp_eq0001 ),
    .I1(\EX/ALU/result_final_cmp_eq0002 ),
    .I2(ALU_A_30_OBUF_37),
    .I3(\EX/ALU/N59 ),
    .O(N10967)
  );
  defparam \IF/pcAdd4/mux_6/out<1>1 .INIT = 16'hA6AA;
  LUT4 \IF/pcAdd4/mux_6/out<1>1  (
    .I0(\IF/PC [25]),
    .I1(\IF/PC [24]),
    .I2(\IF/pcAdd4/N23 ),
    .I3(\IF/PC [23]),
    .O(NextPC_if[25])
  );
  defparam \EX/ALU/result_final<3>154 .INIT = 16'hD080;
  LUT4 \EX/ALU/result_final<3>154  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[13] ),
    .I2(\EX/ALU/N94 ),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[11] ),
    .O(\EX/ALU/result_final<3>_map36 )
  );
  defparam \EX/ALU/result_final<0>332 .INIT = 16'h4070;
  LUT4 \EX/ALU/result_final<0>332  (
    .I0(\Addr_id_ex/q[4] ),
    .I1(\EX_id_ex/q [1]),
    .I2(ALU_A_31_OBUF_36),
    .I3(MemWriteData_ex[31]),
    .O(\EX/ALU/result_final<0>_map75 )
  );
  defparam \IF/PC_in<27>4_SW1 .INIT = 16'h9990;
  LUT4 \IF/PC_in<27>4_SW1  (
    .I0(\IF/PC [27]),
    .I1(\IF/pcAdd4/N22 ),
    .I2(JR),
    .I3(J),
    .O(N10797)
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Result<15>11 .INIT = 16'hB080;
  LUT4 \EX/ALU/Mshift_result_final_shift0005_Result<15>11  (
    .I0(\Addr_id_ex/q[4] ),
    .I1(\EX_id_ex/q [1]),
    .I2(ALU_A_4_OBUF_63),
    .I3(MemWriteData_ex[31]),
    .O(\EX/ALU/N80 )
  );
  defparam \EX/ALU/result_final<0>313 .INIT = 16'h0B08;
  LUT4 \EX/ALU/result_final<0>313  (
    .I0(\Addr_id_ex/q[4] ),
    .I1(\EX_id_ex/q [1]),
    .I2(ALU_A_31_OBUF_36),
    .I3(MemWriteData_ex[31]),
    .O(\EX/ALU/result_final<0>_map68 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Result<31>31 .INIT = 8'h01;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Result<31>31  (
    .I0(ALU_A_2_OBUF_65),
    .I1(ALU_A_3_OBUF_64),
    .I2(ALU_A_4_OBUF_63),
    .O(\EX/ALU/N148 )
  );
  defparam \EX/ALU/result_final<31>21_SW1 .INIT = 8'hE0;
  LUT3 \EX/ALU/result_final<31>21_SW1  (
    .I0(\EX/ALU/result_final_cmp_eq0001 ),
    .I1(\EX/ALU/N59 ),
    .I2(ALU_A_31_OBUF_36),
    .O(N10976)
  );
  defparam \IF/PC_in<22>69_SW0 .INIT = 16'h0021;
  LUT4 \IF/PC_in<22>69_SW0  (
    .I0(N10517),
    .I1(J),
    .I2(\ID/addOffset/N30 ),
    .I3(JR),
    .O(N10978)
  );
  defparam \IF/PC_in<27>70 .INIT = 16'hEFE0;
  LUT4 \IF/PC_in<27>70  (
    .I0(N10797),
    .I1(N11037),
    .I2(Z),
    .I3(N10796),
    .O(\IF/PC_in [27])
  );
  defparam \EX/ALU/result_final<14>90 .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<14>90  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[62] ),
    .I3(ALU_B_31_OBUF_68),
    .O(\EX/ALU/result_final<14>_map21 )
  );
  defparam \EX/ALU/result_final<25>97 .INIT = 16'hB080;
  LUT4 \EX/ALU/result_final<25>97  (
    .I0(ALU_B_31_OBUF_68),
    .I1(\EX/ALU/N1 ),
    .I2(\EX/ALU/N88 ),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[57] ),
    .O(\EX/ALU/result_final<25>_map23 )
  );
  defparam \EX/ALU/result_final_cmp_eq00002 .INIT = 8'h10;
  LUT3 \EX/ALU/result_final_cmp_eq00002  (
    .I0(\EX_id_ex/q [3]),
    .I1(\EX_id_ex/q [4]),
    .I2(N11771),
    .O(\EX/ALU/result_final_cmp_eq0000 )
  );
  defparam \EX/ALU_A<1>13_SW0 .INIT = 16'hA0C0;
  LUT4 \EX/ALU_A<1>13_SW0  (
    .I0(MemDout_wb_1_OBUF_34),
    .I1(\Data_mem_wb/q [1]),
    .I2(\EX/ForwardA_0_and0001_map21 ),
    .I3(\MM_mem_wb/q [6]),
    .O(N10322)
  );
  defparam \EX/ALU/result_final<4>138 .INIT = 16'h5410;
  LUT4 \EX/ALU/result_final<4>138  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/N64 ),
    .I3(\EX/ALU/N32 ),
    .O(\EX/ALU/result_final<4>_map33 )
  );
  defparam \EX/ALU/result_final<0>267_SW0 .INIT = 16'h00E4;
  LUT4 \EX/ALU/result_final<0>267_SW0  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/N22 ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[2] ),
    .I3(N11842),
    .O(N10425)
  );
  defparam \EX/ALU_A<24>_SW1 .INIT = 16'h01FD;
  LUT4 \EX/ALU_A<24>_SW1  (
    .I0(\Data_id_ex/q[56] ),
    .I1(\EX/ForwardA_0_cmp_ne0001_map6 ),
    .I2(N11843),
    .I3(RegWriteData_wb[24]),
    .O(N3781)
  );
  defparam \EX/ALU_A<22>_SW1 .INIT = 16'h01FD;
  LUT4 \EX/ALU_A<22>_SW1  (
    .I0(\Data_id_ex/q[54] ),
    .I1(\EX/ForwardA_0_cmp_ne0001_map6 ),
    .I2(N11056),
    .I3(RegWriteData_wb[22]),
    .O(N4703)
  );
  defparam \EX/ALU_A<21>_SW1 .INIT = 16'h01FD;
  LUT4 \EX/ALU_A<21>_SW1  (
    .I0(\Data_id_ex/q[53] ),
    .I1(\EX/ForwardA_0_cmp_ne0001_map6 ),
    .I2(N11056),
    .I3(RegWriteData_wb[21]),
    .O(N4706)
  );
  defparam \EX/ALU/result_final<2>78 .INIT = 16'hFFEA;
  LUT4 \EX/ALU/result_final<2>78  (
    .I0(\EX/ALU/result_final<2>_map14 ),
    .I1(\EX/ALU/N75 ),
    .I2(N11062),
    .I3(\EX/ALU/N58 ),
    .O(\EX/ALU/result_final<2>_map20 )
  );
  defparam \IF/pcAdd4/co_11 .INIT = 16'h8000;
  LUT4 \IF/pcAdd4/co_11  (
    .I0(\IF/PC [7]),
    .I1(\IF/PC [4]),
    .I2(\IF/PC [3]),
    .I3(N11064),
    .O(\IF/pcAdd4/co_1 )
  );
  defparam \EX/ALU/result_final<16>90 .INIT = 16'hFCFD;
  LUT4 \EX/ALU/result_final<16>90  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/result_final<16>_map18 ),
    .I2(\EX/ALU/result_final<16>_map24 ),
    .I3(N11066),
    .O(\EX/ALU/result_final<16>_map25 )
  );
  defparam \EX/ALU/result_final<18>157_SW0 .INIT = 16'hAEBF;
  LUT4 \EX/ALU/result_final<18>157_SW0  (
    .I0(ALU_A_2_OBUF_65),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[10] ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[18] ),
    .O(N11068)
  );
  defparam \EX/ALU/result_final<18>157 .INIT = 16'hCC04;
  LUT4 \EX/ALU/result_final<18>157  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/N75 ),
    .I2(N11068),
    .I3(N10621),
    .O(\EX/ALU/result_final<18>_map40 )
  );
  defparam \EX/ALU/result_final<21>145_SW0 .INIT = 16'hCEDF;
  LUT4 \EX/ALU/result_final<21>145_SW0  (
    .I0(ALU_A_2_OBUF_65),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[25] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[21] ),
    .O(N11070)
  );
  defparam \EX/ALU/result_final<22>19_SW0_SW0 .INIT = 16'hF2F7;
  LUT4 \EX/ALU/result_final<22>19_SW0_SW0  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[26] ),
    .I2(ALU_A_3_OBUF_64),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[22] ),
    .O(N11072)
  );
  defparam \EX/ALU/result_final<22>19_SW0 .INIT = 16'hCC04;
  LUT4 \EX/ALU/result_final<22>19_SW0  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/N88 ),
    .I2(N11072),
    .I3(\EX/ALU/result_final<22>_map1 ),
    .O(N10605)
  );
  defparam \EX/ALU/result_final<11>176 .INIT = 16'hAAA8;
  LUT4 \EX/ALU/result_final<11>176  (
    .I0(\EX/ALU/N88 ),
    .I1(\EX/ALU/result_final<11>_map37 ),
    .I2(\EX/ALU/N74 ),
    .I3(N11074),
    .O(\EX/ALU/result_final<11>_map42 )
  );
  defparam \IF/PC_in<27>70_SW0_SW0 .INIT = 4'h6;
  LUT2 \IF/PC_in<27>70_SW0_SW0  (
    .I0(\if_id/q[15] ),
    .I1(\if_id/q[59] ),
    .O(N11076)
  );
  defparam \IF/PC_in<27>4_SW2 .INIT = 16'h0021;
  LUT4 \IF/PC_in<27>4_SW2  (
    .I0(N11076),
    .I1(J),
    .I2(\ID/addOffset/N22 ),
    .I3(JR),
    .O(N11037)
  );
  defparam \EX/ALU/result_final<12>156_SW1 .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<12>156_SW1  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_3_OBUF_64),
    .I2(N11738),
    .I3(ALU_B_31_OBUF_68),
    .O(N10633)
  );
  defparam \EX/ALU/result_final<13>144 .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<13>144  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[61] ),
    .I3(ALU_B_31_OBUF_68),
    .O(\EX/ALU/result_final<13>_map33 )
  );
  defparam \EX/ALU/result_final<30>61 .INIT = 16'hFE10;
  LUT4 \EX/ALU/result_final<30>61  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[62] ),
    .I3(ALU_B_31_OBUF_68),
    .O(\EX/ALU/result_final<30>_map17 )
  );
  defparam \EX/ALU/result_final<26>128_SW1 .INIT = 8'h4E;
  LUT3 \EX/ALU/result_final<26>128_SW1  (
    .I0(ALU_A_2_OBUF_65),
    .I1(N11048),
    .I2(\EX/ALU/result_final<26>_map29 ),
    .O(N11084)
  );
  defparam \EX/ALU/result_final<15>126_SW0 .INIT = 16'hF2F7;
  LUT4 \EX/ALU/result_final<15>126_SW0  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[23] ),
    .I2(ALU_A_2_OBUF_65),
    .I3(N11735),
    .O(N11086)
  );
  defparam \EX/ALU/result_final<15>126_SW1 .INIT = 8'hEF;
  LUT3 \EX/ALU/result_final<15>126_SW1  (
    .I0(ALU_A_2_OBUF_65),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[31] ),
    .O(N11087)
  );
  defparam \EX/ALU/result_final<15>126 .INIT = 16'hF2F7;
  LUT4 \EX/ALU/result_final<15>126  (
    .I0(ALU_A_4_OBUF_63),
    .I1(N11087),
    .I2(\EX/ALU/result_final<15>_map34 ),
    .I3(N11086),
    .O(\EX/ALU/result_final<15>_map35 )
  );
  defparam \EX/ALU/result_final<14>135_SW0 .INIT = 16'hF2F7;
  LUT4 \EX/ALU/result_final<14>135_SW0  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[22] ),
    .I2(ALU_A_2_OBUF_65),
    .I3(N11736),
    .O(N11089)
  );
  defparam \EX/ALU/result_final<14>135_SW1 .INIT = 8'hEF;
  LUT3 \EX/ALU/result_final<14>135_SW1  (
    .I0(ALU_A_2_OBUF_65),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[30] ),
    .O(N11090)
  );
  defparam \EX/ALU/result_final<27>127_SW1 .INIT = 8'h1B;
  LUT3 \EX/ALU/result_final<27>127_SW1  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/N37 ),
    .I2(N11050),
    .O(N11092)
  );
  MUXF5 \EX/ALU/adder/mux_7/out<3>165_SW0  (
    .I0(N11096),
    .I1(N11097),
    .S(\EX/ALU/adder/mux_7/out<3>1_map26 ),
    .O(N10326)
  );
  defparam \EX/ALU/adder/mux_7/out<3>165_SW0_F .INIT = 4'h6;
  LUT2 \EX/ALU/adder/mux_7/out<3>165_SW0_F  (
    .I0(\EX/ALU/adder/mux_7/out<3>1_map10 ),
    .I1(ALU_A_31_OBUF_36),
    .O(N11096)
  );
  defparam \EX/ALU/adder/mux_7/out<3>165_SW0_G .INIT = 16'h5955;
  LUT4 \EX/ALU/adder/mux_7/out<3>165_SW0_G  (
    .I0(ALU_A_31_OBUF_36),
    .I1(\EX/ALU/_xor0000 [28]),
    .I2(\EX/ALU/adder/mux_7/out<3>1_map10 ),
    .I3(ALU_A_28_OBUF_39),
    .O(N11097)
  );
  MUXF5 \EX/ALU/adder/mux_7/out<3>165_SW1  (
    .I0(N11098),
    .I1(N11099),
    .S(\EX/ALU/adder/mux_7/out<3>1_map26 ),
    .O(N10327)
  );
  defparam \EX/ALU/adder/mux_7/out<3>165_SW1_F .INIT = 4'h6;
  LUT2 \EX/ALU/adder/mux_7/out<3>165_SW1_F  (
    .I0(\EX/ALU/adder/mux_7/out<3>1_map10 ),
    .I1(ALU_A_31_OBUF_36),
    .O(N11098)
  );
  defparam \EX/ALU/adder/mux_7/out<3>165_SW1_G .INIT = 16'h3C39;
  LUT4 \EX/ALU/adder/mux_7/out<3>165_SW1_G  (
    .I0(ALU_A_28_OBUF_39),
    .I1(ALU_A_31_OBUF_36),
    .I2(\EX/ALU/adder/mux_7/out<3>1_map10 ),
    .I3(\EX/ALU/_xor0000 [28]),
    .O(N11099)
  );
  MUXF5 \EX/ALU/adder/co_11_SW0  (
    .I0(N11100),
    .I1(N11101),
    .S(\EX/ALU/adder/mux_1/out<3>1_map10 ),
    .O(N10329)
  );
  defparam \EX/ALU/adder/co_11_SW0_F .INIT = 16'hFEC8;
  LUT4 \EX/ALU/adder/co_11_SW0_F  (
    .I0(ALU_A_7_OBUF_60),
    .I1(ALU_A_8_OBUF_59),
    .I2(\EX/ALU/_xor0000 [7]),
    .I3(\EX/ALU/_xor0000 [8]),
    .O(N11100)
  );
  defparam \EX/ALU/adder/co_11_SW0_G .INIT = 16'hE8C0;
  LUT4 \EX/ALU/adder/co_11_SW0_G  (
    .I0(ALU_A_7_OBUF_60),
    .I1(ALU_A_8_OBUF_59),
    .I2(\EX/ALU/_xor0000 [8]),
    .I3(\EX/ALU/_xor0000 [7]),
    .O(N11101)
  );
  defparam \EX/ALU/adder/co_51_SW0_G .INIT = 16'hFEC8;
  LUT4 \EX/ALU/adder/co_51_SW0_G  (
    .I0(ALU_A_23_OBUF_44),
    .I1(ALU_A_24_OBUF_43),
    .I2(\EX/ALU/_xor0000 [23]),
    .I3(N11831),
    .O(N11103)
  );
  defparam \EX/ALU/adder/co_51_SW1_G .INIT = 16'hE8C0;
  LUT4 \EX/ALU/adder/co_51_SW1_G  (
    .I0(ALU_A_23_OBUF_44),
    .I1(ALU_A_24_OBUF_43),
    .I2(\EX/ALU/_xor0000 [24]),
    .I3(N11830),
    .O(N11105)
  );
  defparam \EX/ALU/adder/co_41_SW1_G .INIT = 16'hE8C0;
  LUT4 \EX/ALU/adder/co_41_SW1_G  (
    .I0(ALU_A_19_OBUF_48),
    .I1(ALU_A_20_OBUF_47),
    .I2(\EX/ALU/_xor0000 [20]),
    .I3(N11818),
    .O(N11109)
  );
  defparam \EX/ALU/adder/co_31_SW1_G .INIT = 16'hE8C0;
  LUT4 \EX/ALU/adder/co_31_SW1_G  (
    .I0(ALU_A_15_OBUF_52),
    .I1(ALU_A_16_OBUF_51),
    .I2(\EX/ALU/_xor0000 [16]),
    .I3(N11820),
    .O(N11113)
  );
  MUXF5 \EX/ALU/adder/co_21_SW0  (
    .I0(N0),
    .I1(N11115),
    .S(\EX/ALU/adder/mux_3/out<3>1_map26 ),
    .O(N10341)
  );
  defparam \EX/ALU/adder/co_21_SW0_G .INIT = 16'hFCE8;
  LUT4 \EX/ALU/adder/co_21_SW0_G  (
    .I0(ALU_A_11_OBUF_56),
    .I1(ALU_A_12_OBUF_55),
    .I2(\EX/ALU/_xor0000 [12]),
    .I3(\EX/ALU/_xor0000 [11]),
    .O(N11115)
  );
  MUXF5 \EX/ALU/adder/co_21_SW1  (
    .I0(N0),
    .I1(N11117),
    .S(\EX/ALU/adder/mux_3/out<3>1_map26 ),
    .O(N10342)
  );
  defparam \EX/ALU/adder/co_21_SW1_G .INIT = 16'hE8C0;
  LUT4 \EX/ALU/adder/co_21_SW1_G  (
    .I0(ALU_A_11_OBUF_56),
    .I1(ALU_A_12_OBUF_55),
    .I2(\EX/ALU/_xor0000 [12]),
    .I3(\EX/ALU/_xor0000 [11]),
    .O(N11117)
  );
  MUXF5 \ID/addOffset/co_11_SW0  (
    .I0(N0),
    .I1(N11119),
    .S(\ID/addOffset/mux_2/out<3>1_map26 ),
    .O(N10416)
  );
  defparam \ID/addOffset/co_11_SW0_G .INIT = 16'hFCE8;
  LUT4 \ID/addOffset/co_11_SW0_G  (
    .I0(\if_id/q[39] ),
    .I1(\if_id/q[6] ),
    .I2(\if_id/q[40] ),
    .I3(\if_id/q[12] ),
    .O(N11119)
  );
  MUXF5 \ID/addOffset/co_11_SW1  (
    .I0(N0),
    .I1(N11121),
    .S(\ID/addOffset/mux_2/out<3>1_map26 ),
    .O(N10417)
  );
  defparam \ID/addOffset/co_11_SW1_G .INIT = 16'hE888;
  LUT4 \ID/addOffset/co_11_SW1_G  (
    .I0(\if_id/q[6] ),
    .I1(\if_id/q[40] ),
    .I2(\if_id/q[39] ),
    .I3(\if_id/q[12] ),
    .O(N11121)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Sh<47>31  (
    .I0(N11122),
    .I1(N11123),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[47] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<47>31_F .INIT = 8'hE4;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<47>31_F  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh[15] ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[7] ),
    .O(N11122)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<47>31_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<47>31_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh[3] ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[11] ),
    .O(N11123)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Sh<46>31  (
    .I0(N11124),
    .I1(N11125),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[46] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<46>31_F .INIT = 8'hE4;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<46>31_F  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh[14] ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[6] ),
    .O(N11124)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<46>31_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<46>31_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh[2] ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[10] ),
    .O(N11125)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0004_Result<0>231  (
    .I0(N11126),
    .I1(N11127),
    .S(ALU_A_1_OBUF_66),
    .O(\EX/ALU/N64 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Result<0>231_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Result<0>231_F  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[12] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[4] ),
    .O(N11126)
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Result<0>231_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Result<0>231_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[14] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[6] ),
    .O(N11127)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0005_Sh<40>  (
    .I0(N11128),
    .I1(N11129),
    .S(ALU_A_1_OBUF_66),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[40] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<40>_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<40>_F  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[12] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[8] ),
    .O(N11128)
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<40>_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<40>_G  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[14] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[10] ),
    .O(N11129)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0004_Result<1>231  (
    .I0(N11130),
    .I1(N11131),
    .S(ALU_A_1_OBUF_66),
    .O(\EX/ALU/N65 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Result<1>231_F .INIT = 8'hE4;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Result<1>231_F  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[5] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[13] ),
    .O(N11130)
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Result<1>231_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Result<1>231_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[15] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[7] ),
    .O(N11131)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Sh<45>31  (
    .I0(N11132),
    .I1(N11133),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[45] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<45>31_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<45>31_F  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh[5] ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[13] ),
    .O(N11132)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<45>31_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<45>31_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh[1] ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[9] ),
    .O(N11133)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Sh<44>31  (
    .I0(N11134),
    .I1(N11135),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[44] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<44>31_F .INIT = 8'hE4;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<44>31_F  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh[12] ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[4] ),
    .O(N11134)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<44>31_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<44>31_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh[0] ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[8] ),
    .O(N11135)
  );
  MUXF5 \EX/ALU/result_final<28>248_SW1  (
    .I0(N11138),
    .I1(N0),
    .S(\EX/ALU/result_final<28>_map41 ),
    .O(N10493)
  );
  defparam \EX/ALU/result_final<28>248_SW1_F .INIT = 16'h8228;
  LUT4 \EX/ALU/result_final<28>248_SW1_F  (
    .I0(\EX/ALU/N0 ),
    .I1(ALU_B_28_OBUF_71),
    .I2(ALU_A_28_OBUF_39),
    .I3(\EX/ALU/result_final_cmp_eq0000 ),
    .O(N11138)
  );
  MUXF5 \EX/ALU/result_final<24>203_SW1  (
    .I0(N11142),
    .I1(N0),
    .S(\EX/ALU/result_final<24>_map34 ),
    .O(N10496)
  );
  defparam \EX/ALU/result_final<24>203_SW1_F .INIT = 16'h8228;
  LUT4 \EX/ALU/result_final<24>203_SW1_F  (
    .I0(\EX/ALU/N0 ),
    .I1(ALU_B_24_OBUF_75),
    .I2(ALU_A_24_OBUF_43),
    .I3(\EX/ALU/result_final_cmp_eq0000 ),
    .O(N11142)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Sh<3>31  (
    .I0(N11144),
    .I1(N11145),
    .S(ALU_A_0_OBUF_67),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[3] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<3>31_F .INIT = 8'hAC;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<3>31_F  (
    .I0(ALU_B_1_OBUF_98),
    .I1(ALU_B_3_OBUF_96),
    .I2(ALU_A_1_OBUF_66),
    .O(N11144)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<3>31_G .INIT = 8'hAC;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<3>31_G  (
    .I0(ALU_B_0_OBUF_99),
    .I1(ALU_B_2_OBUF_97),
    .I2(ALU_A_1_OBUF_66),
    .O(N11145)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0004_Sh<55>  (
    .I0(N11146),
    .I1(N11147),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[55] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<55>_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<55>_F  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[31] ),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[23] ),
    .O(N11146)
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<55>_G .INIT = 16'h5410;
  LUT4 \EX/ALU/Mshift_result_final_shift0004_Sh<55>_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_1_OBUF_66),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[27] ),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[29] ),
    .O(N11147)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0004_Sh<54>  (
    .I0(N11148),
    .I1(N11149),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[54] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<54>_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<54>_F  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[30] ),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[22] ),
    .O(N11148)
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<54>_G .INIT = 16'h5410;
  LUT4 \EX/ALU/Mshift_result_final_shift0004_Sh<54>_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_1_OBUF_66),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[26] ),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[28] ),
    .O(N11149)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Sh<41>  (
    .I0(N11150),
    .I1(N11151),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[41] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<41>_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<41>_F  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh[1] ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[9] ),
    .O(N11150)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<41>_G .INIT = 16'h5410;
  LUT4 \EX/ALU/Mshift_result_final_shift0003_Sh<41>_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_0_OBUF_67),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<5>_map8 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh<4>_map8 ),
    .O(N11151)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Sh<40>  (
    .I0(N11152),
    .I1(N11153),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[40] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<40>_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<40>_F  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh[0] ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[8] ),
    .O(N11152)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<40>_G .INIT = 16'h5410;
  LUT4 \EX/ALU/Mshift_result_final_shift0003_Sh<40>_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_0_OBUF_67),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<4>_map8 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh<3>_map8 ),
    .O(N11153)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Sh<43>  (
    .I0(N11154),
    .I1(N11155),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[43] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<43>_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<43>_F  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh[3] ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[11] ),
    .O(N11154)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<43>_G .INIT = 16'h5410;
  LUT4 \EX/ALU/Mshift_result_final_shift0003_Sh<43>_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_0_OBUF_67),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<7>_map8 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh<6>_map8 ),
    .O(N11155)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Sh<42>  (
    .I0(N11156),
    .I1(N11157),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[42] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<42>_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<42>_F  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh[2] ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[10] ),
    .O(N11156)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<42>_G .INIT = 16'h5410;
  LUT4 \EX/ALU/Mshift_result_final_shift0003_Sh<42>_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_0_OBUF_67),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<6>_map8 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh<5>_map8 ),
    .O(N11157)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0004_Sh<53>  (
    .I0(N11158),
    .I1(N11159),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[53] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<53>_F .INIT = 8'hE4;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<53>_F  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[21] ),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[29] ),
    .O(N11158)
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<53>_G .INIT = 16'h5410;
  LUT4 \EX/ALU/Mshift_result_final_shift0004_Sh<53>_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_1_OBUF_66),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[25] ),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[27] ),
    .O(N11159)
  );
  MUXF5 \ID/Z504_SW1  (
    .I0(N11160),
    .I1(N11161),
    .S(\ID/Z_map113 ),
    .O(N10511)
  );
  defparam \ID/Z504_SW1_G .INIT = 16'hABAF;
  LUT4 \ID/Z504_SW1_G  (
    .I0(ALUCode_id[0]),
    .I1(\ID/Z_map65 ),
    .I2(\ID/Z_map106 ),
    .I3(\ID/Z_map96 ),
    .O(N11161)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0004_Sh<49>31  (
    .I0(N11162),
    .I1(N11163),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[49] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<49>31_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<49>31_F  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[25] ),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[17] ),
    .O(N11162)
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<49>31_G .INIT = 8'hE4;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<49>31_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[21] ),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[29] ),
    .O(N11163)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0004_Sh<48>  (
    .I0(N11164),
    .I1(N11165),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[48] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<48>_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<48>_F  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[24] ),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[16] ),
    .O(N11164)
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<48>_G .INIT = 8'hE4;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<48>_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[20] ),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[28] ),
    .O(N11165)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0004_Sh<51>  (
    .I0(N11166),
    .I1(N11167),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[51] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<51>_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<51>_F  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[27] ),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[19] ),
    .O(N11166)
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<51>_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<51>_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[31] ),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[23] ),
    .O(N11167)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0004_Sh<50>  (
    .I0(N11168),
    .I1(N11169),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[50] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<50>_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<50>_F  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[26] ),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[18] ),
    .O(N11168)
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<50>_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<50>_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[30] ),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[22] ),
    .O(N11169)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0005_Sh<11>1  (
    .I0(N11170),
    .I1(N11171),
    .S(ALU_A_0_OBUF_67),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[11] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<11>1_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<11>1_F  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[0] ),
    .I2(MemWriteData_ex[11]),
    .O(N11170)
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<11>1_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<11>1_G  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[1] ),
    .I2(MemWriteData_ex[12]),
    .O(N11171)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0005_Sh<13>1  (
    .I0(N11172),
    .I1(N11173),
    .S(ALU_A_0_OBUF_67),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[13] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<13>1_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<13>1_F  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[13]),
    .O(N11172)
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<13>1_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<13>1_G  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[3] ),
    .I2(MemWriteData_ex[14]),
    .O(N11173)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0004_Sh<28>  (
    .I0(N11174),
    .I1(N11175),
    .S(ALU_A_1_OBUF_66),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[28] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<28>_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<28>_F  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_29_OBUF_70),
    .I2(ALU_B_28_OBUF_71),
    .O(N11174)
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<28>_G .INIT = 8'hE4;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<28>_G  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_30_OBUF_69),
    .I2(\EX/ALU_B<31>1_140 ),
    .O(N11175)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0005_Sh<57>  (
    .I0(N11176),
    .I1(N11177),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[57] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<57>_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<57>_F  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[27] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[25] ),
    .O(N11176)
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<57>_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<57>_G  (
    .I0(ALU_A_1_OBUF_66),
    .I1(ALU_B_31_OBUF_68),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[29] ),
    .O(N11177)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0004_Sh<52>  (
    .I0(N11178),
    .I1(N11179),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[52] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<52>_F .INIT = 8'hE4;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<52>_F  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[20] ),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[28] ),
    .O(N11178)
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<52>_G .INIT = 16'h5410;
  LUT4 \EX/ALU/Mshift_result_final_shift0004_Sh<52>_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_1_OBUF_66),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[24] ),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[26] ),
    .O(N11179)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0004_Result<5>11  (
    .I0(N11182),
    .I1(N11183),
    .S(ALU_A_3_OBUF_64),
    .O(\EX/ALU/N311 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Result<5>11_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Result<5>11_F  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[11] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[9] ),
    .O(N11182)
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Result<5>11_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Result<5>11_G  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[19] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[17] ),
    .O(N11183)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0004_Result<4>11  (
    .I0(N11190),
    .I1(N11191),
    .S(ALU_A_3_OBUF_64),
    .O(\EX/ALU/N32 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Result<4>11_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Result<4>11_F  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[10] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[8] ),
    .O(N11190)
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Result<4>11_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Result<4>11_G  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[18] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[16] ),
    .O(N11191)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0004_Sh<27>1  (
    .I0(N11192),
    .I1(N11193),
    .S(ALU_A_1_OBUF_66),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[27] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<27>1_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<27>1_F  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_28_OBUF_71),
    .I2(ALU_B_27_OBUF_72),
    .O(N11192)
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<27>1_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<27>1_G  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_30_OBUF_69),
    .I2(ALU_B_29_OBUF_70),
    .O(N11193)
  );
  MUXF5 \EX/ALU/result_final<27>100_SW0  (
    .I0(N11194),
    .I1(N0),
    .S(\EX/ALU/result_final<0>3_160 ),
    .O(N10665)
  );
  defparam \EX/ALU/result_final<27>100_SW0_F .INIT = 16'h2882;
  LUT4 \EX/ALU/result_final<27>100_SW0_F  (
    .I0(\EX/ALU/N0 ),
    .I1(\EX/ALU/_xor0000 [27]),
    .I2(\EX/ALU/adder/mux_6/out<3>1_map10 ),
    .I3(ALU_A_27_OBUF_40),
    .O(N11194)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0005_Sh<41>31  (
    .I0(N11196),
    .I1(N11197),
    .S(ALU_A_1_OBUF_66),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[41] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<41>31_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<41>31_F  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[13] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[9] ),
    .O(N11196)
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<41>31_G .INIT = 8'hE4;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<41>31_G  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[11] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[15] ),
    .O(N11197)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0005_Sh<14>1  (
    .I0(N11198),
    .I1(N11199),
    .S(ALU_A_0_OBUF_67),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[14] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<14>1_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<14>1_F  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[3] ),
    .I2(MemWriteData_ex[14]),
    .O(N11198)
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<14>1_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<14>1_G  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[15]),
    .O(N11199)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0005_Sh<12>1  (
    .I0(N11200),
    .I1(N11201),
    .S(ALU_A_0_OBUF_67),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[12] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<12>1_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<12>1_F  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[1] ),
    .I2(MemWriteData_ex[12]),
    .O(N11200)
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<12>1_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<12>1_G  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[13]),
    .O(N11201)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Sh<9>7  (
    .I0(N11202),
    .I1(N11203),
    .S(\EX/ALU_A<1>59_155 ),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh<8>_map8 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<9>7_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<9>7_F  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[8]),
    .O(N11202)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<9>7_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<9>7_G  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Data_id_ex/q[96] ),
    .I2(MemWriteData_ex[6]),
    .O(N11203)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Sh<9>20  (
    .I0(N11204),
    .I1(N11205),
    .S(\EX/ALU_A<1>59_155 ),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh<10>_map3 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<9>20_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<9>20_F  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[9]),
    .O(N11204)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<9>20_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<9>20_G  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Data_id_ex/q[97] ),
    .I2(MemWriteData_ex[7]),
    .O(N11205)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Sh<8>7  (
    .I0(N11206),
    .I1(N11207),
    .S(\EX/ALU_A<1>59_155 ),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh<7>_map8 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<8>7_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<8>7_F  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Data_id_ex/q[97] ),
    .I2(MemWriteData_ex[7]),
    .O(N11206)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<8>7_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<8>7_G  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[1] ),
    .I2(MemWriteData_ex[5]),
    .O(N11207)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Sh<7>7  (
    .I0(N11208),
    .I1(N11209),
    .S(\EX/ALU_A<1>59_155 ),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh<6>_map8 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<7>7_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<7>7_F  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Data_id_ex/q[96] ),
    .I2(MemWriteData_ex[6]),
    .O(N11208)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<7>7_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<7>7_G  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[4]),
    .O(N11209)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Sh<6>7  (
    .I0(N11210),
    .I1(N11211),
    .S(\EX/ALU_A<1>59_155 ),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh<5>_map8 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<6>7_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<6>7_F  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[1] ),
    .I2(MemWriteData_ex[5]),
    .O(N11210)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<6>7_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<6>7_G  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Data_id_ex/q[67] ),
    .I2(MemWriteData_ex[3]),
    .O(N11211)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Sh<17>7  (
    .I0(N11212),
    .I1(N11213),
    .S(ALU_A_1_OBUF_66),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh<16>_map8 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<17>7_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<17>7_F  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[16]),
    .O(N11212)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<17>7_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<17>7_G  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[3] ),
    .I2(MemWriteData_ex[14]),
    .O(N11213)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Sh<15>7  (
    .I0(N11214),
    .I1(N11215),
    .S(\EX/ALU_A<1>59_155 ),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh<14>_map8 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<15>7_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<15>7_F  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[3] ),
    .I2(MemWriteData_ex[14]),
    .O(N11214)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<15>7_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<15>7_G  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[1] ),
    .I2(MemWriteData_ex[12]),
    .O(N11215)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Sh<14>7  (
    .I0(N11216),
    .I1(N11217),
    .S(\EX/ALU_A<1>59_155 ),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh<13>_map8 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<14>7_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<14>7_F  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[13]),
    .O(N11216)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<14>7_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<14>7_G  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[0] ),
    .I2(MemWriteData_ex[11]),
    .O(N11217)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Sh<12>7  (
    .I0(N11218),
    .I1(N11219),
    .S(\EX/ALU_A<1>59_155 ),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh<11>_map8 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<12>7_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<12>7_F  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[0] ),
    .I2(MemWriteData_ex[11]),
    .O(N11218)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<12>7_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<12>7_G  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[9]),
    .O(N11219)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0005_Sh<10>1  (
    .I0(N11220),
    .I1(N11221),
    .S(ALU_A_0_OBUF_67),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[10] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<10>1_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<10>1_F  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[10]),
    .O(N11220)
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<10>1_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<10>1_G  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[0] ),
    .I2(MemWriteData_ex[11]),
    .O(N11221)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Sh<5>7  (
    .I0(N11222),
    .I1(N11223),
    .S(\EX/ALU_A<1>59_155 ),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh<4>_map8 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<5>7_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<5>7_F  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[4]),
    .O(N11222)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<5>7_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<5>7_G  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Data_id_ex/q[66] ),
    .I2(MemWriteData_ex[2]),
    .O(N11223)
  );
  MUXF5 \EX/ALU/result_final<18>90  (
    .I0(N11224),
    .I1(N11225),
    .S(ALU_A_4_OBUF_63),
    .O(\EX/ALU/result_final<18>_map21 )
  );
  defparam \EX/ALU/result_final<18>90_F .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<18>90_F  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[26] ),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh<58>_map6 ),
    .O(N11224)
  );
  defparam \EX/ALU/result_final<18>90_G .INIT = 8'hD8;
  LUT3 \EX/ALU/result_final<18>90_G  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[31]),
    .O(N11225)
  );
  MUXF5 \EX/ALU/result_final<8>95_SW0  (
    .I0(N11228),
    .I1(N11229),
    .S(ALU_A_4_OBUF_63),
    .O(N10545)
  );
  defparam \EX/ALU/result_final<8>95_SW0_F .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<8>95_SW0_F  (
    .I0(ALU_A_2_OBUF_65),
    .I1(ALU_A_3_OBUF_64),
    .I2(N1154),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[20] ),
    .O(N11228)
  );
  defparam \EX/ALU/result_final<8>95_SW0_G .INIT = 16'h5410;
  LUT4 \EX/ALU/result_final<8>95_SW0_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[24] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[28] ),
    .O(N11229)
  );
  MUXF5 \EX/ALU/result_final<23>102  (
    .I0(N11230),
    .I1(N11231),
    .S(ALU_A_4_OBUF_63),
    .O(\EX/ALU/result_final<23>_map26 )
  );
  defparam \EX/ALU/result_final<23>102_F .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<23>102_F  (
    .I0(ALU_A_2_OBUF_65),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[19] ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[11] ),
    .O(N11230)
  );
  defparam \EX/ALU/result_final<23>102_G .INIT = 16'h5410;
  LUT4 \EX/ALU/result_final<23>102_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[7] ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[3] ),
    .O(N11231)
  );
  MUXF5 \EX/ALU/result_final<18>145  (
    .I0(N11234),
    .I1(N11235),
    .S(ALU_A_3_OBUF_64),
    .O(\EX/ALU/result_final<18>_map38 )
  );
  defparam \EX/ALU/result_final<18>145_F .INIT = 16'hD080;
  LUT4 \EX/ALU/result_final<18>145_F  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh<13>_map8 ),
    .I2(\EX/ALU/N82 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh<14>_map8 ),
    .O(N11234)
  );
  defparam \EX/ALU/result_final<18>145_G .INIT = 16'hD080;
  LUT4 \EX/ALU/result_final<18>145_G  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh<5>_map8 ),
    .I2(\EX/ALU/N82 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh<6>_map8 ),
    .O(N11235)
  );
  MUXF5 \EX/ALU/result_final<3>115  (
    .I0(N11236),
    .I1(N11237),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/result_final<3>_map32 )
  );
  MUXF5 \EX/ALU/result_final<9>99  (
    .I0(N11238),
    .I1(N11239),
    .S(ALU_A_4_OBUF_63),
    .O(\EX/ALU/result_final<9>_map26 )
  );
  defparam \EX/ALU/result_final<9>99_F .INIT = 8'hE4;
  LUT3 \EX/ALU/result_final<9>99_F  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/N311 ),
    .I2(\EX/ALU/N14 ),
    .O(N11238)
  );
  defparam \EX/ALU/result_final<9>99_G .INIT = 16'h5410;
  LUT4 \EX/ALU/result_final<9>99_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[25] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[29] ),
    .O(N11239)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Result<31>139  (
    .I0(N11240),
    .I1(N11241),
    .S(ALU_A_3_OBUF_64),
    .O(\EX/ALU/N37 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Result<31>139_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Result<31>139_F  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Result<31>1_map4 ),
    .I2(\EX/ALU/N26 ),
    .O(N11240)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Result<31>139_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Result<31>139_G  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh<18>_map8 ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<19>_map8 ),
    .O(N11241)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Sh<23>31  (
    .I0(N11242),
    .I1(N11243),
    .S(ALU_A_0_OBUF_67),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[23] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<23>31_F .INIT = 8'hAC;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<23>31_F  (
    .I0(ALU_B_21_OBUF_78),
    .I1(ALU_B_23_OBUF_76),
    .I2(ALU_A_1_OBUF_66),
    .O(N11242)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<23>31_G .INIT = 8'hCA;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<23>31_G  (
    .I0(ALU_B_22_OBUF_77),
    .I1(ALU_B_20_OBUF_79),
    .I2(ALU_A_1_OBUF_66),
    .O(N11243)
  );
  MUXF5 \EX/ALU/result_final<31>112  (
    .I0(N11244),
    .I1(N11245),
    .S(ALU_A_0_OBUF_67),
    .O(\EX/ALU/result_final<31>_map34 )
  );
  defparam \EX/ALU/result_final<31>112_F .INIT = 8'hD8;
  LUT3 \EX/ALU/result_final<31>112_F  (
    .I0(ALU_A_1_OBUF_66),
    .I1(ALU_B_29_OBUF_70),
    .I2(ALU_B_31_OBUF_68),
    .O(N11244)
  );
  defparam \EX/ALU/result_final<31>112_G .INIT = 8'hCA;
  LUT3 \EX/ALU/result_final<31>112_G  (
    .I0(ALU_B_30_OBUF_69),
    .I1(ALU_B_28_OBUF_71),
    .I2(ALU_A_1_OBUF_66),
    .O(N11245)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0005_Sh<47>1  (
    .I0(N11246),
    .I1(N11247),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[47] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<47>1_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<47>1_F  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[17] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[15] ),
    .O(N11246)
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<47>1_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<47>1_G  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[21] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[19] ),
    .O(N11247)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0005_Sh<46>1  (
    .I0(N11248),
    .I1(N11249),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[46] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<46>1_F .INIT = 8'hE4;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<46>1_F  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[14] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[16] ),
    .O(N11248)
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<46>1_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<46>1_G  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[20] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[18] ),
    .O(N11249)
  );
  MUXF5 \EX/ALU/result_final<26>120  (
    .I0(N11250),
    .I1(N11251),
    .S(ALU_A_3_OBUF_64),
    .O(\EX/ALU/result_final<26>_map29 )
  );
  defparam \EX/ALU/result_final<26>120_F .INIT = 8'hD8;
  LUT3 \EX/ALU/result_final<26>120_F  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh<21>_map8 ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<22>_map8 ),
    .O(N11250)
  );
  defparam \EX/ALU/result_final<26>120_G .INIT = 8'hD8;
  LUT3 \EX/ALU/result_final<26>120_G  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh<13>_map8 ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<14>_map8 ),
    .O(N11251)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0004_Sh<26>1  (
    .I0(N11252),
    .I1(N11253),
    .S(ALU_A_1_OBUF_66),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[26] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<26>1_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<26>1_F  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_27_OBUF_72),
    .I2(ALU_B_26_OBUF_73),
    .O(N11252)
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<26>1_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<26>1_G  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_29_OBUF_70),
    .I2(ALU_B_28_OBUF_71),
    .O(N11253)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0004_Sh<24>1  (
    .I0(N11254),
    .I1(N11255),
    .S(ALU_A_1_OBUF_66),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[24] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<24>1_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<24>1_F  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_25_OBUF_74),
    .I2(ALU_B_24_OBUF_75),
    .O(N11254)
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<24>1_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<24>1_G  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_27_OBUF_72),
    .I2(ALU_B_26_OBUF_73),
    .O(N11255)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0004_Sh<20>1  (
    .I0(N11256),
    .I1(N11257),
    .S(ALU_A_1_OBUF_66),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[20] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<20>1_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<20>1_F  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_21_OBUF_78),
    .I2(ALU_B_20_OBUF_79),
    .O(N11256)
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<20>1_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<20>1_G  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_23_OBUF_76),
    .I2(ALU_B_22_OBUF_77),
    .O(N11257)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Sh<18>31  (
    .I0(N11258),
    .I1(N11259),
    .S(ALU_A_0_OBUF_67),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[18] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<18>31_F .INIT = 8'hAC;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<18>31_F  (
    .I0(ALU_B_16_OBUF_83),
    .I1(ALU_B_18_OBUF_81),
    .I2(ALU_A_1_OBUF_66),
    .O(N11258)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<18>31_G .INIT = 8'hAC;
  LUT3 \EX/ALU/Mshift_result_final_shift0003_Sh<18>31_G  (
    .I0(ALU_B_15_OBUF_84),
    .I1(ALU_B_17_OBUF_82),
    .I2(ALU_A_1_OBUF_66),
    .O(N11259)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0004_Sh<25>1  (
    .I0(N11260),
    .I1(N11261),
    .S(ALU_A_1_OBUF_66),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[25] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<25>1_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<25>1_F  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_26_OBUF_73),
    .I2(ALU_B_25_OBUF_74),
    .O(N11260)
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<25>1_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<25>1_G  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_28_OBUF_71),
    .I2(ALU_B_27_OBUF_72),
    .O(N11261)
  );
  MUXF5 \EX/ALU/result_final<2>93  (
    .I0(N11262),
    .I1(N11263),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/result_final<2>_map23 )
  );
  defparam \EX/ALU/result_final<2>93_F .INIT = 16'hEAC0;
  LUT4 \EX/ALU/result_final<2>93_F  (
    .I0(\EX/ALU/Mshift_result_final_shift0005_Sh[4] ),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[2] ),
    .I2(\EX/ALU/N93 ),
    .I3(\EX/ALU/N70 ),
    .O(N11262)
  );
  defparam \EX/ALU/result_final<2>93_G .INIT = 16'hEAC0;
  LUT4 \EX/ALU/result_final<2>93_G  (
    .I0(\EX/ALU/Mshift_result_final_shift0005_Sh[8] ),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[6] ),
    .I2(\EX/ALU/N93 ),
    .I3(\EX/ALU/N70 ),
    .O(N11263)
  );
  MUXF5 \EX/ALU/result_final<1>182  (
    .I0(N11264),
    .I1(N11265),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/result_final<1>_map45 )
  );
  defparam \EX/ALU/result_final<1>182_F .INIT = 16'hEAC0;
  LUT4 \EX/ALU/result_final<1>182_F  (
    .I0(\EX/ALU/N23 ),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[3] ),
    .I2(\EX/ALU/N70 ),
    .I3(\EX/ALU/N93 ),
    .O(N11264)
  );
  defparam \EX/ALU/result_final<1>182_G .INIT = 16'hECA0;
  LUT4 \EX/ALU/result_final<1>182_G  (
    .I0(\EX/ALU/Mshift_result_final_shift0005_Sh[7] ),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[5] ),
    .I2(\EX/ALU/N70 ),
    .I3(\EX/ALU/N93 ),
    .O(N11265)
  );
  MUXF5 \EX/ALU/result_final<22>116  (
    .I0(N11266),
    .I1(N11267),
    .S(ALU_A_3_OBUF_64),
    .O(\EX/ALU/result_final<22>_map33 )
  );
  defparam \EX/ALU/result_final<22>116_F .INIT = 16'hE040;
  LUT4 \EX/ALU/result_final<22>116_F  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh<22>_map8 ),
    .I2(\EX/ALU/N78 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh<21>_map8 ),
    .O(N11266)
  );
  defparam \EX/ALU/result_final<22>116_G .INIT = 16'hD080;
  LUT4 \EX/ALU/result_final<22>116_G  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh<13>_map8 ),
    .I2(\EX/ALU/N78 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh<14>_map8 ),
    .O(N11267)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0004_Sh<22>1  (
    .I0(N11268),
    .I1(N11269),
    .S(ALU_A_1_OBUF_66),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[22] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<22>1_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<22>1_F  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_23_OBUF_76),
    .I2(ALU_B_22_OBUF_77),
    .O(N11268)
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<22>1_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<22>1_G  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_25_OBUF_74),
    .I2(ALU_B_24_OBUF_75),
    .O(N11269)
  );
  MUXF5 \EX/ALU/result_final<29>161_SW0  (
    .I0(N11270),
    .I1(N11271),
    .S(ALU_A_3_OBUF_64),
    .O(N10645)
  );
  defparam \EX/ALU/result_final<29>161_SW0_F .INIT = 8'h1F;
  LUT3 \EX/ALU/result_final<29>161_SW0_F  (
    .I0(\EX/ALU/Mshift_result_final_shift0003_Result<29>2_map11 ),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Result<29>2_map5 ),
    .I2(ALU_A_2_OBUF_65),
    .O(N11270)
  );
  defparam \EX/ALU/result_final<29>161_SW0_G .INIT = 16'h3B7F;
  LUT4 \EX/ALU/result_final<29>161_SW0_G  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<16>_map8 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh<17>_map8 ),
    .O(N11271)
  );
  MUXF5 \EX/ALU/result_final<25>111_SW0  (
    .I0(N11272),
    .I1(N11273),
    .S(ALU_A_3_OBUF_64),
    .O(N10653)
  );
  defparam \EX/ALU/result_final<25>111_SW0_F .INIT = 8'hF1;
  LUT3 \EX/ALU/result_final<25>111_SW0_F  (
    .I0(\EX/ALU/Mshift_result_final_shift0003_Result<29>2_map5 ),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Result<29>2_map11 ),
    .I2(ALU_A_2_OBUF_65),
    .O(N11272)
  );
  defparam \EX/ALU/result_final<25>111_SW0_G .INIT = 16'hCEDF;
  LUT4 \EX/ALU/result_final<25>111_SW0_G  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<16>_map8 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh<17>_map8 ),
    .O(N11273)
  );
  MUXF5 \EX/ALU/result_final<28>138_SW0  (
    .I0(N11274),
    .I1(N11275),
    .S(ALU_A_3_OBUF_64),
    .O(N10643)
  );
  defparam \EX/ALU/result_final<28>138_SW0_F .INIT = 8'h57;
  LUT3 \EX/ALU/result_final<28>138_SW0_F  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Result<28>3_map5 ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Result<28>3_map11 ),
    .O(N11274)
  );
  defparam \EX/ALU/result_final<28>138_SW0_G .INIT = 16'h3B7F;
  LUT4 \EX/ALU/result_final<28>138_SW0_G  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<15>_map8 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh<16>_map8 ),
    .O(N11275)
  );
  MUXF5 \EX/ALU/result_final<24>88_SW0  (
    .I0(N11276),
    .I1(N11277),
    .S(ALU_A_3_OBUF_64),
    .O(N10651)
  );
  defparam \EX/ALU/result_final<24>88_SW0_F .INIT = 8'hF1;
  LUT3 \EX/ALU/result_final<24>88_SW0_F  (
    .I0(\EX/ALU/Mshift_result_final_shift0003_Result<28>3_map5 ),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Result<28>3_map11 ),
    .I2(ALU_A_2_OBUF_65),
    .O(N11276)
  );
  defparam \EX/ALU/result_final<24>88_SW0_G .INIT = 16'hCEDF;
  LUT4 \EX/ALU/result_final<24>88_SW0_G  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<15>_map8 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh<16>_map8 ),
    .O(N11277)
  );
  MUXF5 \EX/ALU/result_final<6>268  (
    .I0(N11278),
    .I1(N11279),
    .S(\EX/ALU/adder/co_0 ),
    .O(\EX/ALU/result_final<6>_map60 )
  );
  defparam \EX/ALU/result_final<6>268_F .INIT = 16'h8228;
  LUT4 \EX/ALU/result_final<6>268_F  (
    .I0(\EX/ALU/N0 ),
    .I1(ALU_A_6_OBUF_61),
    .I2(\EX/ALU/_xor0000 [6]),
    .I3(N4232),
    .O(N11278)
  );
  defparam \EX/ALU/result_final<6>268_G .INIT = 16'h8228;
  LUT4 \EX/ALU/result_final<6>268_G  (
    .I0(\EX/ALU/N0 ),
    .I1(ALU_A_6_OBUF_61),
    .I2(\EX/ALU/_xor0000 [6]),
    .I3(N4233),
    .O(N11279)
  );
  MUXF5 \EX/ALU/result_final<11>106_SW0  (
    .I0(N11280),
    .I1(N11281),
    .S(ALU_A_4_OBUF_63),
    .O(N10837)
  );
  defparam \EX/ALU/result_final<11>106_SW0_F .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<11>106_SW0_F  (
    .I0(ALU_A_2_OBUF_65),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[15] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[23] ),
    .O(N11280)
  );
  defparam \EX/ALU/result_final<11>106_SW0_G .INIT = 16'h5410;
  LUT4 \EX/ALU/result_final<11>106_SW0_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[27] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[31] ),
    .O(N11281)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0005_Sh<43>  (
    .I0(N11282),
    .I1(N11283),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[43] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<43>_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<43>_F  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[13] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[11] ),
    .O(N11282)
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<43>_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0005_Sh<43>_G  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[17] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[15] ),
    .O(N11283)
  );
  MUXF5 \EX/ALU/result_final<12>120  (
    .I0(N11284),
    .I1(N11285),
    .S(ALU_A_4_OBUF_63),
    .O(\EX/ALU/result_final<12>_map30 )
  );
  defparam \EX/ALU/result_final<12>120_F .INIT = 16'hCC40;
  LUT4 \EX/ALU/result_final<12>120_F  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/N83 ),
    .I2(\EX/ALU/N15 ),
    .I3(\EX/ALU/result_final<12>_map28 ),
    .O(N11284)
  );
  defparam \EX/ALU/result_final<12>120_G .INIT = 16'hC8C0;
  LUT4 \EX/ALU/result_final<12>120_G  (
    .I0(\EX/ALU/N79 ),
    .I1(\EX/ALU/N83 ),
    .I2(\EX/ALU/result_final<12>_map28 ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[28] ),
    .O(N11285)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0004_Sh<21>1  (
    .I0(N11286),
    .I1(N11287),
    .S(ALU_A_1_OBUF_66),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[21] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<21>1_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<21>1_F  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_22_OBUF_77),
    .I2(ALU_B_21_OBUF_78),
    .O(N11286)
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<21>1_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<21>1_G  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_24_OBUF_75),
    .I2(ALU_B_23_OBUF_76),
    .O(N11287)
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0004_Sh<23>1  (
    .I0(N11292),
    .I1(N11293),
    .S(ALU_A_1_OBUF_66),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[23] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<23>1_F .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<23>1_F  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_24_OBUF_75),
    .I2(ALU_B_23_OBUF_76),
    .O(N11292)
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<23>1_G .INIT = 8'hD8;
  LUT3 \EX/ALU/Mshift_result_final_shift0004_Sh<23>1_G  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_26_OBUF_73),
    .I2(ALU_B_25_OBUF_74),
    .O(N11293)
  );
  defparam \IF/PC_in<15>74_SW0 .INIT = 16'h6669;
  LUT4 \IF/PC_in<15>74_SW0  (
    .I0(\if_id/q[47] ),
    .I1(\if_id/q[15] ),
    .I2(\ID/addOffset/mux_3/out<3>1_map27 ),
    .I3(N11766),
    .O(N10531)
  );
  defparam \IF/PC_in_cmp_eq00001_SW6 .INIT = 16'h9996;
  LUT4 \IF/PC_in_cmp_eq00001_SW6  (
    .I0(\if_id/q[43] ),
    .I1(\if_id/q[15] ),
    .I2(\ID/addOffset/mux_2/out<3>1_map27 ),
    .I3(N11768),
    .O(N10882)
  );
  defparam \IF/PC_in_cmp_eq00001_SW2 .INIT = 16'h9996;
  LUT4 \IF/PC_in_cmp_eq00001_SW2  (
    .I0(\if_id/q[39] ),
    .I1(\if_id/q[12] ),
    .I2(\ID/addOffset/mux_1/out<3>1_map27 ),
    .I3(\ID/addOffset/mux_1/out<3>1_map10 ),
    .O(N10874)
  );
  defparam \IF/PC_in<6>72_SW1 .INIT = 16'hFF96;
  LUT4 \IF/PC_in<6>72_SW1  (
    .I0(\if_id/q[38] ),
    .I1(\if_id/q[15] ),
    .I2(\ID/addOffset/N34 ),
    .I3(J),
    .O(N10731)
  );
  defparam \IF/pcAdd4/mux_4/out<2>2 .INIT = 16'h6AAA;
  LUT4 \IF/pcAdd4/mux_4/out<2>2  (
    .I0(\IF/PC [18]),
    .I1(\IF/pcAdd4/co_3 ),
    .I2(\IF/PC [16]),
    .I3(\IF/PC [17]),
    .O(NextPC_if[18])
  );
  defparam \IF/pcAdd4/mux_5/out<2>2 .INIT = 16'h6AAA;
  LUT4 \IF/pcAdd4/mux_5/out<2>2  (
    .I0(\IF/PC [22]),
    .I1(\IF/pcAdd4/co_4 ),
    .I2(\IF/PC [20]),
    .I3(\IF/PC [21]),
    .O(NextPC_if[22])
  );
  defparam \IF/pcAdd4/mux_3/out<2>2 .INIT = 16'h6AAA;
  LUT4 \IF/pcAdd4/mux_3/out<2>2  (
    .I0(\IF/PC [14]),
    .I1(\IF/pcAdd4/co_2 ),
    .I2(\IF/PC [12]),
    .I3(\IF/PC [13]),
    .O(NextPC_if[14])
  );
  defparam \IF/pcAdd4/mux_2/out<2>2 .INIT = 16'h6AAA;
  LUT4 \IF/pcAdd4/mux_2/out<2>2  (
    .I0(\IF/PC [10]),
    .I1(\IF/pcAdd4/co_1 ),
    .I2(\IF/PC [8]),
    .I3(\IF/PC [9]),
    .O(NextPC_if[10])
  );
  defparam \IF/pcAdd4/mux_1/out<2>2 .INIT = 16'h6AAA;
  LUT4 \IF/pcAdd4/mux_1/out<2>2  (
    .I0(\IF/PC [6]),
    .I1(\IF/pcAdd4/co_0 ),
    .I2(\IF/PC [4]),
    .I3(\IF/PC [5]),
    .O(NextPC_if[6])
  );
  defparam \ID/Decode/R_type295 .INIT = 16'h0C08;
  LUT4 \ID/Decode/R_type295  (
    .I0(\if_id/q[1] ),
    .I1(\ID/N31 ),
    .I2(\if_id/q[3] ),
    .I3(N11294),
    .O(ALUSrcA_id)
  );
  defparam \EX/ALU/result_final<21>46_SW1 .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<21>46_SW1  (
    .I0(\EX/ALU/N59 ),
    .I1(ALU_A_21_OBUF_46),
    .I2(\EX/ALU/result_final_cmp_eq0001 ),
    .I3(\EX/ALU/result_final_cmp_eq0002 ),
    .O(N11297)
  );
  defparam \EX/ALU/result_final<2>45_SW1 .INIT = 16'hEFE0;
  LUT4 \EX/ALU/result_final<2>45_SW1  (
    .I0(\EX/ALU/N68 ),
    .I1(\EX/ALU/N140 ),
    .I2(ALU_A_2_OBUF_65),
    .I3(\EX/ALU/N20 ),
    .O(N11300)
  );
  defparam \EX/ALU/result_final<3>45_SW1 .INIT = 16'hEFE0;
  LUT4 \EX/ALU/result_final<3>45_SW1  (
    .I0(\EX/ALU/N68 ),
    .I1(\EX/ALU/N140 ),
    .I2(ALU_A_3_OBUF_64),
    .I3(\EX/ALU/N20 ),
    .O(N11303)
  );
  defparam \EX/ALU/result_final<7>46_SW1 .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<7>46_SW1  (
    .I0(\EX/ALU/N140 ),
    .I1(ALU_A_7_OBUF_60),
    .I2(\EX/ALU/N68 ),
    .I3(\EX/ALU/N20 ),
    .O(N11306)
  );
  defparam \EX/ALU/result_final<6>46_SW1 .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<6>46_SW1  (
    .I0(\EX/ALU/N140 ),
    .I1(ALU_A_6_OBUF_61),
    .I2(\EX/ALU/N68 ),
    .I3(\EX/ALU/N20 ),
    .O(N11309)
  );
  defparam \EX/ALU/result_final<11>46_SW1 .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<11>46_SW1  (
    .I0(\EX/ALU/N140 ),
    .I1(ALU_A_11_OBUF_56),
    .I2(\EX/ALU/N68 ),
    .I3(\EX/ALU/N20 ),
    .O(N11312)
  );
  defparam \EX/ALU/result_final<15>46_SW1 .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<15>46_SW1  (
    .I0(\EX/ALU/N140 ),
    .I1(ALU_A_15_OBUF_52),
    .I2(\EX/ALU/N68 ),
    .I3(\EX/ALU/N20 ),
    .O(N11315)
  );
  defparam \EX/ALU/result_final<16>46_SW1 .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<16>46_SW1  (
    .I0(\EX/ALU/N59 ),
    .I1(ALU_A_16_OBUF_51),
    .I2(\EX/ALU/result_final_cmp_eq0001 ),
    .I3(\EX/ALU/result_final_cmp_eq0002 ),
    .O(N11318)
  );
  defparam \EX/ALU/result_final<20>46_SW1 .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<20>46_SW1  (
    .I0(\EX/ALU/N59 ),
    .I1(ALU_A_20_OBUF_47),
    .I2(\EX/ALU/result_final_cmp_eq0001 ),
    .I3(\EX/ALU/result_final_cmp_eq0002 ),
    .O(N11321)
  );
  defparam \IF/PC_in_cmp_eq00001_SW4 .INIT = 16'h69C3;
  LUT4 \IF/PC_in_cmp_eq00001_SW4  (
    .I0(\if_id/q[34] ),
    .I1(\if_id/q[35] ),
    .I2(\if_id/q[1] ),
    .I3(\if_id/q[0] ),
    .O(N10878)
  );
  defparam \ID/Stall54 .INIT = 16'h0090;
  LUT4 \ID/Stall54  (
    .I0(RegWriteAddr_ex[0]),
    .I1(\if_id/q[16] ),
    .I2(\ID/Stall_map15 ),
    .I3(RegWriteAddr_ex[4]),
    .O(\ID/Stall_map23 )
  );
  defparam \IF/PC_in<25>61 .INIT = 16'hA69A;
  LUT4 \IF/PC_in<25>61  (
    .I0(\if_id/q[57] ),
    .I1(\if_id/q[56] ),
    .I2(\if_id/q[15] ),
    .I3(\ID/addOffset/co_5 ),
    .O(\IF/PC_in<25>_map19 )
  );
  defparam \IF/PC_in<21>67 .INIT = 16'hA69A;
  LUT4 \IF/PC_in<21>67  (
    .I0(\if_id/q[53] ),
    .I1(\if_id/q[52] ),
    .I2(\if_id/q[15] ),
    .I3(\ID/addOffset/co_4 ),
    .O(\IF/PC_in<21>_map21 )
  );
  defparam \EX/ALU/result_final<27>228_SW0 .INIT = 16'hFFF8;
  LUT4 \EX/ALU/result_final<27>228_SW0  (
    .I0(\EX/ALU/N88 ),
    .I1(\EX/ALU/result_final<27>_map22 ),
    .I2(\EX/ALU/result_final<27>_map34 ),
    .I3(\EX/ALU/result_final<27>_map18 ),
    .O(N11325)
  );
  defparam \EX/ALU/result_final<27>228 .INIT = 16'hFFAC;
  LUT4 \EX/ALU/result_final<27>228  (
    .I0(N10825),
    .I1(N10665),
    .I2(\EX/ALU/adder/mux_6/out<3>1_map27 ),
    .I3(N11325),
    .O(ALUResult_27_OBUF_104)
  );
  defparam \ID/Decode/R_type247_SW0 .INIT = 16'hFFFE;
  LUT4 \ID/Decode/R_type247_SW0  (
    .I0(\if_id/q[17] ),
    .I1(\if_id/q[16] ),
    .I2(\if_id/q[11] ),
    .I3(\if_id/q[14] ),
    .O(N11327)
  );
  defparam \ID/Decode/R_type247 .INIT = 16'hFFFE;
  LUT4 \ID/Decode/R_type247  (
    .I0(\ID/Decode/R_type2_map14 ),
    .I1(\if_id/q[15] ),
    .I2(\if_id/q[12] ),
    .I3(N11327),
    .O(\ID/Decode/R_type2_map19 )
  );
  defparam \IF/InstructionROM/dout<24>_SW2 .INIT = 16'hF9AD;
  LUT4 \IF/InstructionROM/dout<24>_SW2  (
    .I0(\IF/PC [5]),
    .I1(\IF/PC [3]),
    .I2(\IF/PC [4]),
    .I3(\IF/PC [2]),
    .O(N11368)
  );
  defparam \IF/InstructionROM/dout<24> .INIT = 8'h01;
  LUT3 \IF/InstructionROM/dout<24>  (
    .I0(\IF/PC [6]),
    .I1(\IF/PC [7]),
    .I2(N11368),
    .O(\Instruction_if[24] )
  );
  defparam \IF/InstructionROM/dout<16>_SW2 .INIT = 16'hEBF9;
  LUT4 \IF/InstructionROM/dout<16>_SW2  (
    .I0(\IF/PC [5]),
    .I1(\IF/PC [3]),
    .I2(\IF/PC [4]),
    .I3(\IF/PC [2]),
    .O(N11370)
  );
  defparam \IF/InstructionROM/dout<16> .INIT = 8'h01;
  LUT3 \IF/InstructionROM/dout<16>  (
    .I0(\IF/PC [6]),
    .I1(\IF/PC [7]),
    .I2(N11370),
    .O(\Instruction_if[16] )
  );
  defparam \ID/Decode/ALUtemp<2>83 .INIT = 8'hCD;
  LUT3 \ID/Decode/ALUtemp<2>83  (
    .I0(\if_id/q[28] ),
    .I1(\ID/Decode/ALUtemp<2>_map23 ),
    .I2(N11381),
    .O(ALUCode_id[2])
  );
  defparam \IF/InstructionROM/Mrom_dout_mux0000281 .INIT = 16'h0643;
  LUT4 \IF/InstructionROM/Mrom_dout_mux0000281  (
    .I0(\IF/PC [5]),
    .I1(\IF/PC [4]),
    .I2(\IF/PC [2]),
    .I3(\IF/PC [3]),
    .O(\IF/InstructionROM/Mrom_dout_mux000027 )
  );
  defparam \IF/InstructionROM/dout<7>_SW1 .INIT = 8'h10;
  LUT3 \IF/InstructionROM/dout<7>_SW1  (
    .I0(\IF/PC [7]),
    .I1(\IF/PC [6]),
    .I2(\IF/PC [4]),
    .O(N39)
  );
  defparam \ID/Decode/JR1_SW1 .INIT = 16'hFFFE;
  LUT4 \ID/Decode/JR1_SW1  (
    .I0(\if_id/q[29] ),
    .I1(\if_id/q[27] ),
    .I2(\if_id/q[2] ),
    .I3(\if_id/q[31] ),
    .O(N11383)
  );
  defparam \ID/Decode/JR1 .INIT = 16'h0002;
  LUT4 \ID/Decode/JR1  (
    .I0(\ID/N32 ),
    .I1(\if_id/q[15] ),
    .I2(\if_id/q[12] ),
    .I3(N11383),
    .O(\ID/N31 )
  );
  defparam \IF/InstructionROM/dout<29>_SW0 .INIT = 8'hE3;
  LUT3 \IF/InstructionROM/dout<29>_SW0  (
    .I0(\IF/PC [4]),
    .I1(\IF/PC [2]),
    .I2(\IF/PC [3]),
    .O(N11385)
  );
  defparam \ID/Decode/ALUtemp<1>6 .INIT = 16'h0F08;
  LUT4 \ID/Decode/ALUtemp<1>6  (
    .I0(\if_id/q[27] ),
    .I1(\if_id/q[29] ),
    .I2(\if_id/q[31] ),
    .I3(\if_id/q[28] ),
    .O(\ID/Decode/ALUtemp<1>_map3 )
  );
  defparam \ID/Decode/ALUtemp<1>0 .INIT = 16'h0002;
  LUT4 \ID/Decode/ALUtemp<1>0  (
    .I0(\if_id/q[28] ),
    .I1(\if_id/q[27] ),
    .I2(\if_id/q[29] ),
    .I3(\if_id/q[31] ),
    .O(\ID/Decode/ALUtemp<1>_map0 )
  );
  defparam \ID/addOffset/mux_5/out<3>1_SW0 .INIT = 16'hFFFE;
  LUT4 \ID/addOffset/mux_5/out<3>1_SW0  (
    .I0(\if_id/q[53] ),
    .I1(\if_id/q[52] ),
    .I2(\if_id/q[54] ),
    .I3(\if_id/q[55] ),
    .O(N10397)
  );
  defparam \ID/addOffset/mux_5/out<3>1_SW1 .INIT = 16'h8000;
  LUT4 \ID/addOffset/mux_5/out<3>1_SW1  (
    .I0(\if_id/q[53] ),
    .I1(\if_id/q[52] ),
    .I2(\if_id/q[54] ),
    .I3(\if_id/q[55] ),
    .O(N10398)
  );
  defparam \ID/addOffset/mux_6/out<3>1_SW2 .INIT = 16'hFFFE;
  LUT4 \ID/addOffset/mux_6/out<3>1_SW2  (
    .I0(\if_id/q[58] ),
    .I1(\if_id/q[57] ),
    .I2(\if_id/q[56] ),
    .I3(\if_id/q[59] ),
    .O(N10394)
  );
  defparam \ID/addOffset/mux_6/out<3>1_SW3 .INIT = 16'h8000;
  LUT4 \ID/addOffset/mux_6/out<3>1_SW3  (
    .I0(\if_id/q[58] ),
    .I1(\if_id/q[57] ),
    .I2(\if_id/q[56] ),
    .I3(\if_id/q[59] ),
    .O(N10395)
  );
  defparam \ID/Stall35 .INIT = 16'hD287;
  LUT4 \ID/Stall35  (
    .I0(\EX_id_ex/q [0]),
    .I1(\Addr_id_ex/q[3] ),
    .I2(\if_id/q[19] ),
    .I3(\Addr_id_ex/q[8] ),
    .O(\ID/Stall_map15 )
  );
  defparam \ID/PC_IFWrite1 .INIT = 16'h15FF;
  LUT4 \ID/PC_IFWrite1  (
    .I0(\ID/Stall_map45 ),
    .I1(\ID/Stall_map23 ),
    .I2(\ID/Stall_map10 ),
    .I3(\MM_id_ex/q [0]),
    .O(PC_IFWrite)
  );
  defparam \IF/pcAdd4/mux_1/out<0>1 .INIT = 8'h6A;
  LUT3 \IF/pcAdd4/mux_1/out<0>1  (
    .I0(\IF/PC [4]),
    .I1(\IF/PC [3]),
    .I2(\IF/PC [2]),
    .O(NextPC_if[4])
  );
  defparam \EX/ALU/result_final<0>322 .INIT = 8'h10;
  LUT3 \EX/ALU/result_final<0>322  (
    .I0(\EX_id_ex/q [3]),
    .I1(\EX_id_ex/q [4]),
    .I2(\EX_id_ex/q [5]),
    .O(\EX/ALU/result_final<0>_map72 )
  );
  defparam \IF/pcAdd4/mux_1/out<1>1 .INIT = 16'h6AAA;
  LUT4 \IF/pcAdd4/mux_1/out<1>1  (
    .I0(\IF/PC [5]),
    .I1(\IF/PC [3]),
    .I2(\IF/PC [2]),
    .I3(\IF/PC [4]),
    .O(NextPC_if[5])
  );
  defparam \EX/ALU/result_final<16>72 .INIT = 16'h0040;
  LUT4 \EX/ALU/result_final<16>72  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[0] ),
    .I3(ALU_A_2_OBUF_65),
    .O(\EX/ALU/result_final<16>_map18 )
  );
  defparam \EX/ALU/result_final<17>108 .INIT = 16'h0040;
  LUT4 \EX/ALU/result_final<17>108  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_4_OBUF_63),
    .I2(N11724),
    .I3(ALU_A_2_OBUF_65),
    .O(\EX/ALU/result_final<17>_map28 )
  );
  defparam \EX/ALU/result_final_cmp_eq00042 .INIT = 8'h10;
  LUT3 \EX/ALU/result_final_cmp_eq00042  (
    .I0(\EX_id_ex/q [3]),
    .I1(\EX_id_ex/q [4]),
    .I2(\EX/ALU/N72 ),
    .O(\EX/ALU/result_final_cmp_eq0004 )
  );
  defparam \ID/Decode/ALUtemp<4>74 .INIT = 8'h10;
  LUT3 \ID/Decode/ALUtemp<4>74  (
    .I0(\if_id/q[31] ),
    .I1(\if_id/q[28] ),
    .I2(\ID/Decode/ALUtemp<4>_map18 ),
    .O(ALUCode_id[4])
  );
  defparam \IF/Instruction_if<10>1 .INIT = 16'h0040;
  LUT4 \IF/Instruction_if<10>1  (
    .I0(\IF/PC [7]),
    .I1(\IF/PC [5]),
    .I2(\IF/N3 ),
    .I3(\IF/PC [6]),
    .O(\Instruction_if[10] )
  );
  defparam \IF/InstructionROM/dout<27>1 .INIT = 8'h10;
  LUT3 \IF/InstructionROM/dout<27>1  (
    .I0(\IF/PC [7]),
    .I1(\IF/PC [6]),
    .I2(\IF/InstructionROM/Mrom_dout_mux000027 ),
    .O(\Instruction_if[27] )
  );
  defparam \IF/InstructionROM/dout<3>1 .INIT = 16'h1110;
  LUT4 \IF/InstructionROM/dout<3>1  (
    .I0(\IF/PC [7]),
    .I1(\IF/PC [6]),
    .I2(\IF/InstructionROM/Mrom_dout_mux000027 ),
    .I3(\IF/N2 ),
    .O(\Instruction_if[3] )
  );
  defparam \IF/InstructionROM/dout<11>1 .INIT = 8'h10;
  LUT3 \IF/InstructionROM/dout<11>1  (
    .I0(\IF/PC [7]),
    .I1(\IF/PC [6]),
    .I2(\IF/InstructionROM/Mrom_dout_mux000011 ),
    .O(\Instruction_if[11] )
  );
  defparam \IF/InstructionROM/dout<18>1 .INIT = 16'h2000;
  LUT4 \IF/InstructionROM/dout<18>1  (
    .I0(\IF/PC [3]),
    .I1(\IF/PC [5]),
    .I2(\IF/PC [4]),
    .I3(\IF/InstructionROM/dout_and0000 ),
    .O(\Instruction_if[18] )
  );
  defparam \EX/ALU/result_final<26>212_SW0 .INIT = 16'h8228;
  LUT4 \EX/ALU/result_final<26>212_SW0  (
    .I0(\EX/ALU/N0 ),
    .I1(N8605),
    .I2(\EX/ALU/_xor0000 [26]),
    .I3(ALU_A_26_OBUF_41),
    .O(N10464)
  );
  defparam \EX/ALU/result_final<26>212_SW1 .INIT = 16'h8228;
  LUT4 \EX/ALU/result_final<26>212_SW1  (
    .I0(\EX/ALU/N0 ),
    .I1(N8606),
    .I2(\EX/ALU/_xor0000 [26]),
    .I3(ALU_A_26_OBUF_41),
    .O(N10465)
  );
  defparam \EX/ALU/result_final<30>258_SW0 .INIT = 16'h8228;
  LUT4 \EX/ALU/result_final<30>258_SW0  (
    .I0(\EX/ALU/N0 ),
    .I1(N9484),
    .I2(\EX/ALU/_xor0000 [30]),
    .I3(ALU_A_30_OBUF_37),
    .O(N10467)
  );
  defparam \EX/ALU/result_final<30>258_SW1 .INIT = 16'h8228;
  LUT4 \EX/ALU/result_final<30>258_SW1  (
    .I0(\EX/ALU/N0 ),
    .I1(N9485),
    .I2(\EX/ALU/_xor0000 [30]),
    .I3(ALU_A_30_OBUF_37),
    .O(N10468)
  );
  defparam \EX/ALU/result_final<18>238_SW0 .INIT = 16'h8228;
  LUT4 \EX/ALU/result_final<18>238_SW0  (
    .I0(\EX/ALU/N0 ),
    .I1(N7121),
    .I2(\EX/ALU/_xor0000 [18]),
    .I3(ALU_A_18_OBUF_49),
    .O(N10573)
  );
  defparam \EX/ALU/result_final<18>238_SW1 .INIT = 16'h8228;
  LUT4 \EX/ALU/result_final<18>238_SW1  (
    .I0(\EX/ALU/N0 ),
    .I1(N7122),
    .I2(\EX/ALU/_xor0000 [18]),
    .I3(ALU_A_18_OBUF_49),
    .O(N10574)
  );
  defparam \EX/ALU/result_final<22>207_SW0 .INIT = 16'h8228;
  LUT4 \EX/ALU/result_final<22>207_SW0  (
    .I0(\EX/ALU/N0 ),
    .I1(N7987),
    .I2(\EX/ALU/_xor0000 [22]),
    .I3(ALU_A_22_OBUF_45),
    .O(N10576)
  );
  defparam \EX/ALU/result_final<22>207_SW1 .INIT = 16'h8228;
  LUT4 \EX/ALU/result_final<22>207_SW1  (
    .I0(\EX/ALU/N0 ),
    .I1(N7988),
    .I2(\EX/ALU/_xor0000 [22]),
    .I3(ALU_A_22_OBUF_45),
    .O(N10577)
  );
  defparam \EX/ALU/result_final<3>115_F .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<3>115_F  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[19] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[27] ),
    .O(N11236)
  );
  defparam \EX/ALU/result_final<3>115_G .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<3>115_G  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[23] ),
    .I3(ALU_B_31_OBUF_68),
    .O(N11237)
  );
  defparam \EX/ALU/result_final<12>156_SW0 .INIT = 16'h5410;
  LUT4 \EX/ALU/result_final<12>156_SW0  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_3_OBUF_64),
    .I2(N11743),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[52] ),
    .O(N10565)
  );
  defparam \EX/ALU/result_final<2>133_SW0_SW0 .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<2>133_SW0_SW0  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_4_OBUF_63),
    .I2(N11744),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[58] ),
    .O(N10913)
  );
  defparam \EX/ALU/result_final<19>157_SW0 .INIT = 16'hAEBF;
  LUT4 \EX/ALU/result_final<19>157_SW0  (
    .I0(ALU_A_2_OBUF_65),
    .I1(ALU_A_3_OBUF_64),
    .I2(N11755),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[19] ),
    .O(N11387)
  );
  defparam \EX/ALU/result_final<19>157 .INIT = 16'hCC04;
  LUT4 \EX/ALU/result_final<19>157  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/N75 ),
    .I2(N11387),
    .I3(N10619),
    .O(\EX/ALU/result_final<19>_map40 )
  );
  defparam \EX/ALU/result_final<19>116 .INIT = 16'hCC04;
  LUT4 \EX/ALU/result_final<19>116  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/N88 ),
    .I2(N11389),
    .I3(\EX/ALU/result_final<19>_map21 ),
    .O(\EX/ALU/result_final<19>_map29 )
  );
  defparam \IF/InstructionROM/dout<17>_SW1 .INIT = 8'h9D;
  LUT3 \IF/InstructionROM/dout<17>_SW1  (
    .I0(\IF/PC [5]),
    .I1(\IF/PC [4]),
    .I2(\IF/PC [2]),
    .O(N11391)
  );
  defparam \IF/InstructionROM/dout<17> .INIT = 16'h0001;
  LUT4 \IF/InstructionROM/dout<17>  (
    .I0(\IF/PC [6]),
    .I1(\IF/PC [7]),
    .I2(\IF/PC [3]),
    .I3(N11391),
    .O(\Instruction_if[17] )
  );
  defparam \IF/Instruction_if<12>_SW1 .INIT = 16'hFC9F;
  LUT4 \IF/Instruction_if<12>_SW1  (
    .I0(\IF/PC [5]),
    .I1(\IF/PC [3]),
    .I2(\IF/PC [2]),
    .I3(\IF/PC [4]),
    .O(N11393)
  );
  defparam \IF/Instruction_if<12> .INIT = 8'h01;
  LUT3 \IF/Instruction_if<12>  (
    .I0(\IF/PC [6]),
    .I1(\IF/PC [7]),
    .I2(N11393),
    .O(\Instruction_if[12] )
  );
  defparam \IF/InstructionROM/dout<28>_SW1 .INIT = 8'hBD;
  LUT3 \IF/InstructionROM/dout<28>_SW1  (
    .I0(\IF/PC [4]),
    .I1(\IF/PC [3]),
    .I2(\IF/PC [2]),
    .O(N11395)
  );
  defparam \IF/InstructionROM/dout<28> .INIT = 16'h0002;
  LUT4 \IF/InstructionROM/dout<28>  (
    .I0(\IF/PC [5]),
    .I1(\IF/PC [6]),
    .I2(\IF/PC [7]),
    .I3(N11395),
    .O(\Instruction_if[28] )
  );
  defparam \IF/InstructionROM/dout<21>_SW1 .INIT = 16'hEFE7;
  LUT4 \IF/InstructionROM/dout<21>_SW1  (
    .I0(\IF/PC [3]),
    .I1(\IF/PC [4]),
    .I2(\IF/PC [5]),
    .I3(\IF/PC [2]),
    .O(N11397)
  );
  defparam \IF/InstructionROM/dout<21> .INIT = 8'h01;
  LUT3 \IF/InstructionROM/dout<21>  (
    .I0(\IF/PC [6]),
    .I1(\IF/PC [7]),
    .I2(N11397),
    .O(\Instruction_if[21] )
  );
  defparam \IF/InstructionROM/dout<6>_SW1 .INIT = 8'hBD;
  LUT3 \IF/InstructionROM/dout<6>_SW1  (
    .I0(\IF/PC [2]),
    .I1(\IF/PC [4]),
    .I2(\IF/PC [5]),
    .O(N11399)
  );
  defparam \IF/InstructionROM/dout<6> .INIT = 16'h0001;
  LUT4 \IF/InstructionROM/dout<6>  (
    .I0(\IF/PC [6]),
    .I1(\IF/PC [7]),
    .I2(\IF/PC [3]),
    .I3(N11399),
    .O(\Instruction_if[6] )
  );
  defparam \EX/ALU/result_final<0>3_SW0 .INIT = 16'hFFEF;
  LUT4 \EX/ALU/result_final<0>3_SW0  (
    .I0(\EX_id_ex/q [6]),
    .I1(\EX_id_ex/q [5]),
    .I2(\EX_id_ex/q [4]),
    .I3(\EX_id_ex/q [3]),
    .O(N11401)
  );
  defparam \IF/InstructionROM/dout<26>_SW1 .INIT = 16'hDEB7;
  LUT4 \IF/InstructionROM/dout<26>_SW1  (
    .I0(\IF/PC [2]),
    .I1(\IF/PC [4]),
    .I2(\IF/PC [3]),
    .I3(\IF/PC [5]),
    .O(N11403)
  );
  defparam \IF/InstructionROM/dout<26> .INIT = 8'h01;
  LUT3 \IF/InstructionROM/dout<26>  (
    .I0(\IF/PC [6]),
    .I1(\IF/PC [7]),
    .I2(N11403),
    .O(\Instruction_if[26] )
  );
  defparam \ID/Z504_SW1_F .INIT = 16'h4FFF;
  LUT4 \ID/Z504_SW1_F  (
    .I0(\if_id/q[31] ),
    .I1(\ID/Decode/ALUtemp<0>_map32 ),
    .I2(\ID/Z_map96 ),
    .I3(\ID/Z_map65 ),
    .O(N11160)
  );
  defparam \ID/Decode/R_type138 .INIT = 16'h0002;
  LUT4 \ID/Decode/R_type138  (
    .I0(\ID/N11 ),
    .I1(\if_id/q[15] ),
    .I2(\if_id/q[28] ),
    .I3(\if_id/q[26] ),
    .O(\ID/Decode/R_type1_map12 )
  );
  defparam \IF/InstructionROM/dout<19>_SW1 .INIT = 16'hA8A9;
  LUT4 \IF/InstructionROM/dout<19>_SW1  (
    .I0(\IF/PC [5]),
    .I1(\IF/PC [4]),
    .I2(\IF/PC [3]),
    .I3(\IF/PC [2]),
    .O(N11405)
  );
  defparam \IF/InstructionROM/dout<19> .INIT = 8'h01;
  LUT3 \IF/InstructionROM/dout<19>  (
    .I0(\IF/PC [6]),
    .I1(\IF/PC [7]),
    .I2(N11405),
    .O(\Instruction_if[19] )
  );
  defparam \IF/InstructionROM/dout<22>1 .INIT = 16'h0002;
  LUT4 \IF/InstructionROM/dout<22>1  (
    .I0(\IF/N3 ),
    .I1(\IF/PC [5]),
    .I2(\IF/PC [7]),
    .I3(\IF/PC [6]),
    .O(\Instruction_if[22] )
  );
  defparam \ID/Decode/R_type295_SW0 .INIT = 16'h3332;
  LUT4 \ID/Decode/R_type295_SW0  (
    .I0(\ID/Decode/R_type2_map5 ),
    .I1(\if_id/q[0] ),
    .I2(\ID/Decode/R_type2_map2 ),
    .I3(\ID/Decode/R_type2_map19 ),
    .O(N11294)
  );
  defparam \ID/Z688_SW0 .INIT = 16'h777F;
  LUT4 \ID/Z688_SW0  (
    .I0(N11407),
    .I1(\ID/Z_map203 ),
    .I2(\ID/Z_map198 ),
    .I3(\ID/Z_map182 ),
    .O(N10461)
  );
  defparam \IF/InstructionROM/dout<1>_SW0 .INIT = 8'hFE;
  LUT3 \IF/InstructionROM/dout<1>_SW0  (
    .I0(\IF/PC [7]),
    .I1(\IF/PC [6]),
    .I2(\IF/PC [4]),
    .O(N36)
  );
  defparam \IF/InstructionROM/dout<29> .INIT = 16'h0001;
  LUT4 \IF/InstructionROM/dout<29>  (
    .I0(\IF/PC [5]),
    .I1(N11385),
    .I2(\IF/PC [7]),
    .I3(\IF/PC [6]),
    .O(\Instruction_if[29] )
  );
  defparam \MM_mem_wb/q_0_1 .INIT = 1'b0;
  FDR \MM_mem_wb/q_0_1  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [0]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_0_1_132 )
  );
  defparam \EX/ALU/adder/co_31_SW0 .INIT = 4'hD;
  LUT2 \EX/ALU/adder/co_31_SW0  (
    .I0(\EX/ALU/adder/mux_4/out<3>1_map26 ),
    .I1(N11111),
    .O(N10338)
  );
  defparam \EX/ALU/adder/co_31_SW1 .INIT = 4'hD;
  LUT2 \EX/ALU/adder/co_31_SW1  (
    .I0(N11778),
    .I1(N11113),
    .O(N10339)
  );
  defparam \EX/ALU/adder/co_41_SW1 .INIT = 4'hD;
  LUT2 \EX/ALU/adder/co_41_SW1  (
    .I0(N11777),
    .I1(N11109),
    .O(N10336)
  );
  defparam \EX/ALU/adder/co_41_SW0 .INIT = 4'hD;
  LUT2 \EX/ALU/adder/co_41_SW0  (
    .I0(\EX/ALU/adder/mux_5/out<3>1_map26 ),
    .I1(N11107),
    .O(N10335)
  );
  defparam \MM_mem_wb/q_1_1 .INIT = 1'b0;
  FDR \MM_mem_wb/q_1_1  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [1]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_1_1_133 )
  );
  defparam \EX/ForwardA_0_and000178_1 .INIT = 16'h2000;
  LUT4 \EX/ForwardA_0_and000178_1  (
    .I0(\EX/ForwardA_0_and0001_map21 ),
    .I1(\EX/ForwardA_0_and0000 ),
    .I2(\EX/ForwardA_0_cmp_ne0001 ),
    .I3(\EX/ForwardA_0_and0001_map9 ),
    .O(\EX/ForwardA_0_and000178_134 )
  );
  defparam \MM_mem_wb/q_5_1 .INIT = 1'b0;
  FDR \MM_mem_wb/q_5_1  (
    .C(clk_BUFGP_0),
    .D(\WB_ex_mem/q [0]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_5_1_135 )
  );
  defparam \Data_ex_mem/q_0_1 .INIT = 1'b0;
  FDR \Data_ex_mem/q_0_1  (
    .C(clk_BUFGP_0),
    .D(RegWriteAddr_ex[0]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q_0_1_137 )
  );
  defparam \MM_mem_wb/q_4_1 .INIT = 1'b0;
  FDR \MM_mem_wb/q_4_1  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [4]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_4_1_138 )
  );
  defparam \Data_ex_mem/q_1_1 .INIT = 1'b0;
  FDR \Data_ex_mem/q_1_1  (
    .C(clk_BUFGP_0),
    .D(RegWriteAddr_ex[1]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q_1_1_139 )
  );
  defparam \Data_ex_mem/q_0_2 .INIT = 1'b0;
  FDR \Data_ex_mem/q_0_2  (
    .C(clk_BUFGP_0),
    .D(RegWriteAddr_ex[0]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q_0_2_141 )
  );
  defparam \EX/ALU/result_final<28>248_SW0 .INIT = 4'hE;
  LUT2 \EX/ALU/result_final<28>248_SW0  (
    .I0(\EX/ALU/result_final<28>_map41 ),
    .I1(N11136),
    .O(N10492)
  );
  defparam \EX/ALU/result_final<24>203_SW0 .INIT = 4'hE;
  LUT2 \EX/ALU/result_final<24>203_SW0  (
    .I0(\EX/ALU/result_final<24>_map34 ),
    .I1(N11140),
    .O(N10495)
  );
  defparam \MM_mem_wb/q_3_1 .INIT = 1'b0;
  FDR \MM_mem_wb/q_3_1  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [3]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_3_1_142 )
  );
  defparam \MM_mem_wb/q_3_2 .INIT = 1'b0;
  FDR \MM_mem_wb/q_3_2  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [3]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_3_2_143 )
  );
  defparam \MM_mem_wb/q_3_3 .INIT = 1'b0;
  FDR \MM_mem_wb/q_3_3  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [3]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_3_3_144 )
  );
  defparam \MM_mem_wb/q_3_4 .INIT = 1'b0;
  FDR \MM_mem_wb/q_3_4  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [3]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_3_4_145 )
  );
  defparam \MM_mem_wb/q_3_5 .INIT = 1'b0;
  FDR \MM_mem_wb/q_3_5  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [3]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_3_5_146 )
  );
  defparam \MM_mem_wb/q_1_17 .INIT = 1'b0;
  FDR \MM_mem_wb/q_1_17  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [1]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_1_17_147 )
  );
  defparam \MM_mem_wb/q_1_18 .INIT = 1'b0;
  FDR \MM_mem_wb/q_1_18  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [1]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_1_18_148 )
  );
  defparam \MM_mem_wb/q_1_19 .INIT = 1'b0;
  FDR \MM_mem_wb/q_1_19  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [1]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_1_19_149 )
  );
  defparam \Data_ex_mem/q_3_1 .INIT = 1'b0;
  FDR \Data_ex_mem/q_3_1  (
    .C(clk_BUFGP_0),
    .D(RegWriteAddr_ex[3]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q_3_1_150 )
  );
  defparam \MM_mem_wb/q_0_17 .INIT = 1'b0;
  FDR \MM_mem_wb/q_0_17  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [0]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_0_17_151 )
  );
  defparam \MM_mem_wb/q_0_18 .INIT = 1'b0;
  FDR \MM_mem_wb/q_0_18  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [0]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_0_18_152 )
  );
  defparam \MM_mem_wb/q_0_19 .INIT = 1'b0;
  FDR \MM_mem_wb/q_0_19  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [0]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_0_19_153 )
  );
  defparam \EX/ALU_A<0>59_1 .INIT = 16'hBBB8;
  LUT4 \EX/ALU_A<0>59_1  (
    .I0(\Data_id_ex/q[96] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ALU_A<0>_map11 ),
    .I3(N11793),
    .O(\EX/ALU_A<0>59_154 )
  );
  defparam \EX/ALU_A<1>59_1 .INIT = 16'hBBB8;
  LUT4 \EX/ALU_A<1>59_1  (
    .I0(\Data_id_ex/q[97] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ALU_A<1>_map11 ),
    .I3(N11792),
    .O(\EX/ALU_A<1>59_155 )
  );
  defparam \MM_mem_wb/q_2_1 .INIT = 1'b0;
  FDR \MM_mem_wb/q_2_1  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [2]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_2_1_156 )
  );
  defparam \MM_mem_wb/q_2_2 .INIT = 1'b0;
  FDR \MM_mem_wb/q_2_2  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [2]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_2_2_157 )
  );
  defparam \MM_mem_wb/q_2_3 .INIT = 1'b0;
  FDR \MM_mem_wb/q_2_3  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [2]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_2_3_158 )
  );
  defparam \MM_mem_wb/q_0_33 .INIT = 1'b0;
  FDR \MM_mem_wb/q_0_33  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [0]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_0_33_159 )
  );
  defparam \EX/ALU/result_final<0>3_1 .INIT = 16'h2000;
  LUT4 \EX/ALU/result_final<0>3_1  (
    .I0(\EX/ALU/result_final_or0002 ),
    .I1(N11401),
    .I2(\EX_id_ex/q [7]),
    .I3(N11732),
    .O(\EX/ALU/result_final<0>3_160 )
  );
  defparam \MM_mem_wb/q_3_16 .INIT = 1'b0;
  FDR \MM_mem_wb/q_3_16  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [3]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_3_16_161 )
  );
  defparam \MM_mem_wb/q_1_33 .INIT = 1'b0;
  FDR \MM_mem_wb/q_1_33  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [1]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_1_33_162 )
  );
  defparam \EX/ALU_A<2>59_1 .INIT = 16'hDDD8;
  LUT4 \EX/ALU_A<2>59_1  (
    .I0(\EX_id_ex/q [2]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(N11772),
    .I3(\EX/ALU_A<2>_map5 ),
    .O(\EX/ALU_A<2>59_163 )
  );
  defparam \EX/ALU_A<4>59_1 .INIT = 16'hDDD8;
  LUT4 \EX/ALU_A<4>59_1  (
    .I0(\EX_id_ex/q [2]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU_A<4>_map11 ),
    .I3(N11769),
    .O(\EX/ALU_A<4>59_164 )
  );
  defparam \Data_ex_mem/q_2_1 .INIT = 1'b0;
  FDR \Data_ex_mem/q_2_1  (
    .C(clk_BUFGP_0),
    .D(RegWriteAddr_ex[2]),
    .R(reset_IBUF_1),
    .Q(\Data_ex_mem/q_2_1_166 )
  );
  defparam \if_id/q_24_1 .INIT = 1'b0;
  FDRE \if_id/q_24_1  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[24] ),
    .R(_or0000),
    .Q(\if_id/q_24_1_167 )
  );
  defparam \if_id/q_22_1 .INIT = 1'b0;
  FDRE \if_id/q_22_1  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[22] ),
    .R(_or0000),
    .Q(\if_id/q_22_1_169 )
  );
  defparam \MM_mem_wb/q_2_17 .INIT = 1'b0;
  FDR \MM_mem_wb/q_2_17  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [2]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_2_17_170 )
  );
  defparam \MM_mem_wb/q_2_18 .INIT = 1'b0;
  FDR \MM_mem_wb/q_2_18  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [2]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_2_18_171 )
  );
  defparam \MM_mem_wb/q_2_19 .INIT = 1'b0;
  FDR \MM_mem_wb/q_2_19  (
    .C(clk_BUFGP_0),
    .D(\Data_ex_mem/q [2]),
    .R(reset_IBUF_1),
    .Q(\MM_mem_wb/q_2_19_172 )
  );
  defparam \if_id/q_21_1 .INIT = 1'b0;
  FDRE \if_id/q_21_1  (
    .C(clk_BUFGP_0),
    .CE(PC_IFWrite),
    .D(\Instruction_if[21] ),
    .R(_or0000),
    .Q(\if_id/q_21_1_173 )
  );
  MUXF5 \EX/Mmux_B_temp30  (
    .I0(N11411),
    .I1(N11412),
    .S(\EX/ForwardB [1]),
    .O(MemWriteData_ex[7])
  );
  defparam \EX/Mmux_B_temp30_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp30_F  (
    .I0(\Data_id_ex/q[7] ),
    .I1(RegWriteData_wb[7]),
    .I2(\EX/ForwardB [0]),
    .O(N11411)
  );
  defparam \EX/Mmux_B_temp30_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp30_G  (
    .I0(\Data_id_ex/q[7] ),
    .I1(\Data_ex_mem/q [44]),
    .I2(\EX/ForwardB [0]),
    .O(N11412)
  );
  MUXF5 \EX/Mmux_B_temp29  (
    .I0(N11413),
    .I1(N11414),
    .S(\EX/ForwardB [1]),
    .O(MemWriteData_ex[6])
  );
  defparam \EX/Mmux_B_temp29_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp29_F  (
    .I0(\Data_id_ex/q[6] ),
    .I1(RegWriteData_wb[6]),
    .I2(\EX/ForwardB [0]),
    .O(N11413)
  );
  defparam \EX/Mmux_B_temp29_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp29_G  (
    .I0(\Data_id_ex/q[6] ),
    .I1(\Data_ex_mem/q [43]),
    .I2(\EX/ForwardB [0]),
    .O(N11414)
  );
  MUXF5 \EX/Mmux_B_temp28  (
    .I0(N11415),
    .I1(N11416),
    .S(\EX/ForwardB [1]),
    .O(MemWriteData_ex[5])
  );
  defparam \EX/Mmux_B_temp28_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp28_F  (
    .I0(\Data_id_ex/q[5] ),
    .I1(RegWriteData_wb[5]),
    .I2(\EX/ForwardB [0]),
    .O(N11415)
  );
  defparam \EX/Mmux_B_temp28_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp28_G  (
    .I0(\Data_id_ex/q[5] ),
    .I1(\Data_ex_mem/q [42]),
    .I2(\EX/ForwardB [0]),
    .O(N11416)
  );
  MUXF5 \EX/Mmux_B_temp27  (
    .I0(N11417),
    .I1(N11418),
    .S(\EX/ForwardB [1]),
    .O(MemWriteData_ex[4])
  );
  defparam \EX/Mmux_B_temp27_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp27_F  (
    .I0(\Data_id_ex/q[4] ),
    .I1(RegWriteData_wb[4]),
    .I2(\EX/ForwardB [0]),
    .O(N11417)
  );
  defparam \EX/Mmux_B_temp27_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp27_G  (
    .I0(\Data_id_ex/q[4] ),
    .I1(\Data_ex_mem/q [41]),
    .I2(\EX/ForwardB [0]),
    .O(N11418)
  );
  MUXF5 \EX/Mmux_B_temp26  (
    .I0(N11419),
    .I1(N11420),
    .S(\EX/ForwardB [1]),
    .O(MemWriteData_ex[3])
  );
  defparam \EX/Mmux_B_temp26_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp26_F  (
    .I0(\Data_id_ex/q[3] ),
    .I1(RegWriteData_wb[3]),
    .I2(\EX/ForwardB [0]),
    .O(N11419)
  );
  defparam \EX/Mmux_B_temp26_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp26_G  (
    .I0(\Data_id_ex/q[3] ),
    .I1(\Data_ex_mem/q [40]),
    .I2(\EX/ForwardB [0]),
    .O(N11420)
  );
  MUXF5 \EX/Mmux_B_temp25  (
    .I0(N11421),
    .I1(N11422),
    .S(\EX/ForwardB [1]),
    .O(MemWriteData_ex[31])
  );
  defparam \EX/Mmux_B_temp25_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp25_F  (
    .I0(\Data_id_ex/q[31] ),
    .I1(RegWriteData_wb[31]),
    .I2(\EX/ForwardB [0]),
    .O(N11421)
  );
  defparam \EX/Mmux_B_temp25_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp25_G  (
    .I0(\Data_id_ex/q[31] ),
    .I1(\Data_ex_mem/q [68]),
    .I2(\EX/ForwardB [0]),
    .O(N11422)
  );
  MUXF5 \EX/Mmux_B_temp6  (
    .I0(N11423),
    .I1(N11424),
    .S(\EX/ForwardB [1]),
    .O(MemWriteData_ex[14])
  );
  defparam \EX/Mmux_B_temp6_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp6_F  (
    .I0(\Data_id_ex/q[14] ),
    .I1(RegWriteData_wb[14]),
    .I2(\EX/ForwardB [0]),
    .O(N11423)
  );
  defparam \EX/Mmux_B_temp6_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp6_G  (
    .I0(\Data_id_ex/q[14] ),
    .I1(\Data_ex_mem/q [51]),
    .I2(\EX/ForwardB [0]),
    .O(N11424)
  );
  MUXF5 \EX/Mmux_B_temp3  (
    .I0(N11425),
    .I1(N11426),
    .S(\EX/ForwardB [1]),
    .O(MemWriteData_ex[11])
  );
  defparam \EX/Mmux_B_temp3_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp3_F  (
    .I0(\Data_id_ex/q[11] ),
    .I1(RegWriteData_wb[11]),
    .I2(\EX/ForwardB [0]),
    .O(N11425)
  );
  defparam \EX/Mmux_B_temp3_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp3_G  (
    .I0(\Data_id_ex/q[11] ),
    .I1(\Data_ex_mem/q [48]),
    .I2(\EX/ForwardB [0]),
    .O(N11426)
  );
  MUXF5 \EX/Mmux_B_temp23  (
    .I0(N11427),
    .I1(N11428),
    .S(\EX/ForwardB [1]),
    .O(MemWriteData_ex[2])
  );
  defparam \EX/Mmux_B_temp23_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp23_F  (
    .I0(\Data_id_ex/q[2] ),
    .I1(RegWriteData_wb[2]),
    .I2(\EX/ForwardB [0]),
    .O(N11427)
  );
  defparam \EX/Mmux_B_temp23_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp23_G  (
    .I0(\Data_id_ex/q[2] ),
    .I1(\Data_ex_mem/q [39]),
    .I2(\EX/ForwardB [0]),
    .O(N11428)
  );
  MUXF5 \IF/PC_in<28>66  (
    .I0(N11429),
    .I1(N11430),
    .S(Z),
    .O(\IF/PC_in [28])
  );
  defparam \IF/PC_in<28>66_F .INIT = 16'h90FF;
  LUT4 \IF/PC_in<28>66_F  (
    .I0(JR),
    .I1(J),
    .I2(NextPC_if[28]),
    .I3(N10714),
    .O(N11429)
  );
  defparam \IF/PC_in<28>66_G .INIT = 16'hAA8B;
  LUT4 \IF/PC_in<28>66_G  (
    .I0(NextPC_if[28]),
    .I1(JR),
    .I2(N10888),
    .I3(J),
    .O(N11430)
  );
  MUXF5 \IF/PC_in<26>76  (
    .I0(N11431),
    .I1(N11432),
    .S(Z),
    .O(\IF/PC_in [26])
  );
  defparam \IF/PC_in<26>76_F .INIT = 16'h90FF;
  LUT4 \IF/PC_in<26>76_F  (
    .I0(JR),
    .I1(J),
    .I2(NextPC_if[26]),
    .I3(N10712),
    .O(N11431)
  );
  defparam \IF/PC_in<26>76_G .INIT = 16'hAA8B;
  LUT4 \IF/PC_in<26>76_G  (
    .I0(NextPC_if[26]),
    .I1(JR),
    .I2(N10890),
    .I3(J),
    .O(N11432)
  );
  MUXF5 \IF/PC_in<29>84  (
    .I0(N11433),
    .I1(N11434),
    .S(Z),
    .O(\IF/PC_in [29])
  );
  defparam \IF/PC_in<29>84_F .INIT = 16'h90FF;
  LUT4 \IF/PC_in<29>84_F  (
    .I0(JR),
    .I1(J),
    .I2(NextPC_if[29]),
    .I3(N10716),
    .O(N11433)
  );
  defparam \IF/PC_in<29>84_G .INIT = 16'hFE10;
  LUT4 \IF/PC_in<29>84_G  (
    .I0(J),
    .I1(JR),
    .I2(\IF/PC_in<29>_map21 ),
    .I3(NextPC_if[29]),
    .O(N11434)
  );
  MUXF5 \ID/addOffset/mux_1/out<2>1  (
    .I0(N11435),
    .I1(N11436),
    .S(\ID/addOffset/co_0 ),
    .O(\ID/addOffset/N34 )
  );
  defparam \ID/addOffset/mux_1/out<2>1_F .INIT = 16'h157F;
  LUT4 \ID/addOffset/mux_1/out<2>1_F  (
    .I0(\if_id/q[37] ),
    .I1(\if_id/q[36] ),
    .I2(\if_id/q[2] ),
    .I3(\if_id/q[3] ),
    .O(N11435)
  );
  defparam \ID/addOffset/mux_1/out<2>1_G .INIT = 16'h0157;
  LUT4 \ID/addOffset/mux_1/out<2>1_G  (
    .I0(\if_id/q[37] ),
    .I1(\if_id/q[36] ),
    .I2(\if_id/q[2] ),
    .I3(\if_id/q[3] ),
    .O(N11436)
  );
  MUXF5 \ID/addOffset/mux_2/out<2>1  (
    .I0(N11437),
    .I1(N11438),
    .S(\ID/addOffset/co_1 ),
    .O(\ID/addOffset/N33 )
  );
  defparam \ID/addOffset/mux_2/out<2>1_F .INIT = 16'h157F;
  LUT4 \ID/addOffset/mux_2/out<2>1_F  (
    .I0(\if_id/q[41] ),
    .I1(\if_id/q[40] ),
    .I2(\if_id/q[6] ),
    .I3(\if_id/q[7] ),
    .O(N11437)
  );
  defparam \ID/addOffset/mux_2/out<2>1_G .INIT = 16'h0157;
  LUT4 \ID/addOffset/mux_2/out<2>1_G  (
    .I0(\if_id/q[41] ),
    .I1(\if_id/q[40] ),
    .I2(\if_id/q[6] ),
    .I3(\if_id/q[7] ),
    .O(N11438)
  );
  MUXF5 \ID/addOffset/mux_3/out<2>1  (
    .I0(N11439),
    .I1(N11440),
    .S(\ID/addOffset/co_2 ),
    .O(\ID/addOffset/N32 )
  );
  defparam \ID/addOffset/mux_3/out<2>1_F .INIT = 16'h157F;
  LUT4 \ID/addOffset/mux_3/out<2>1_F  (
    .I0(\if_id/q[45] ),
    .I1(\if_id/q[44] ),
    .I2(\if_id/q[15] ),
    .I3(\if_id/q[11] ),
    .O(N11439)
  );
  defparam \ID/addOffset/mux_3/out<2>1_G .INIT = 16'h0157;
  LUT4 \ID/addOffset/mux_3/out<2>1_G  (
    .I0(\if_id/q[45] ),
    .I1(\if_id/q[44] ),
    .I2(\if_id/q[15] ),
    .I3(\if_id/q[11] ),
    .O(N11440)
  );
  MUXF5 \ID/addOffset/mux_4/out<2>1  (
    .I0(N11441),
    .I1(N11442),
    .S(\ID/addOffset/co_3 ),
    .O(\ID/addOffset/N31 )
  );
  defparam \ID/addOffset/mux_4/out<2>1_F .INIT = 16'h157F;
  LUT4 \ID/addOffset/mux_4/out<2>1_F  (
    .I0(\if_id/q[49] ),
    .I1(\if_id/q[48] ),
    .I2(\if_id/q[14] ),
    .I3(\if_id/q[15] ),
    .O(N11441)
  );
  defparam \ID/addOffset/mux_4/out<2>1_G .INIT = 16'h0157;
  LUT4 \ID/addOffset/mux_4/out<2>1_G  (
    .I0(\if_id/q[49] ),
    .I1(\if_id/q[48] ),
    .I2(\if_id/q[14] ),
    .I3(\if_id/q[15] ),
    .O(N11442)
  );
  MUXF5 \IF/PC_in<23>76  (
    .I0(N11443),
    .I1(N11444),
    .S(Z),
    .O(\IF/PC_in [23])
  );
  defparam \IF/PC_in<23>76_F .INIT = 16'h90FF;
  LUT4 \IF/PC_in<23>76_F  (
    .I0(JR),
    .I1(J),
    .I2(NextPC_if[23]),
    .I3(N10484),
    .O(N11443)
  );
  defparam \IF/PC_in<23>76_G .INIT = 16'hAA8B;
  LUT4 \IF/PC_in<23>76_G  (
    .I0(NextPC_if[23]),
    .I1(JR),
    .I2(N10892),
    .I3(J),
    .O(N11444)
  );
  MUXF5 \IF/PC_in<20>65  (
    .I0(N11445),
    .I1(N11446),
    .S(Z),
    .O(\IF/PC_in [20])
  );
  defparam \IF/PC_in<20>65_F .INIT = 16'h90FF;
  LUT4 \IF/PC_in<20>65_F  (
    .I0(JR),
    .I1(J),
    .I2(NextPC_if[20]),
    .I3(N10480),
    .O(N11445)
  );
  defparam \IF/PC_in<20>65_G .INIT = 16'hAA8B;
  LUT4 \IF/PC_in<20>65_G  (
    .I0(NextPC_if[20]),
    .I1(JR),
    .I2(N10886),
    .I3(J),
    .O(N11446)
  );
  MUXF5 \IF/PC_in<24>66  (
    .I0(N11447),
    .I1(N11448),
    .S(Z),
    .O(\IF/PC_in [24])
  );
  defparam \IF/PC_in<24>66_F .INIT = 16'h90FF;
  LUT4 \IF/PC_in<24>66_F  (
    .I0(JR),
    .I1(J),
    .I2(NextPC_if[24]),
    .I3(N10710),
    .O(N11447)
  );
  defparam \IF/PC_in<24>66_G .INIT = 16'hFE02;
  LUT4 \IF/PC_in<24>66_G  (
    .I0(\IF/PC_in<24>_map18 ),
    .I1(JR),
    .I2(J),
    .I3(NextPC_if[24]),
    .O(N11448)
  );
  MUXF5 \IF/PC_in<21>84  (
    .I0(N11449),
    .I1(N11450),
    .S(Z),
    .O(\IF/PC_in [21])
  );
  defparam \IF/PC_in<21>84_F .INIT = 16'h90FF;
  LUT4 \IF/PC_in<21>84_F  (
    .I0(JR),
    .I1(J),
    .I2(NextPC_if[21]),
    .I3(N10482),
    .O(N11449)
  );
  defparam \IF/PC_in<21>84_G .INIT = 16'hFE02;
  LUT4 \IF/PC_in<21>84_G  (
    .I0(\IF/PC_in<21>_map21 ),
    .I1(JR),
    .I2(J),
    .I3(NextPC_if[21]),
    .O(N11450)
  );
  MUXF5 \IF/PC_in<22>69  (
    .I0(N11451),
    .I1(N11452),
    .S(Z),
    .O(\IF/PC_in [22])
  );
  defparam \IF/PC_in<22>69_F .INIT = 16'hCB08;
  LUT4 \IF/PC_in<22>69_F  (
    .I0(JrAddr[22]),
    .I1(JR),
    .I2(J),
    .I3(NextPC_if[22]),
    .O(N11451)
  );
  defparam \IF/PC_in<22>69_G .INIT = 16'hFFA8;
  LUT4 \IF/PC_in<22>69_G  (
    .I0(NextPC_if[22]),
    .I1(JR),
    .I2(J),
    .I3(N10978),
    .O(N11452)
  );
  MUXF5 \EX/ALU/result_final<0>711_SW0  (
    .I0(N11453),
    .I1(N11454),
    .S(ALU_B_0_OBUF_99),
    .O(N10567)
  );
  defparam \EX/ALU/result_final<0>711_SW0_F .INIT = 16'hFFD8;
  LUT4 \EX/ALU/result_final<0>711_SW0_F  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/N20 ),
    .I2(\EX/ALU/result_final_cmp_eq0004 ),
    .I3(\EX/ALU/result_final<0>_map36 ),
    .O(N11453)
  );
  defparam \EX/ALU/result_final<0>711_SW0_G .INIT = 16'hFAFE;
  LUT4 \EX/ALU/result_final<0>711_SW0_G  (
    .I0(\EX/ALU/result_final_cmp_eq0003 ),
    .I1(\EX/ALU/N20 ),
    .I2(\EX/ALU/result_final<0>_map36 ),
    .I3(ALU_A_0_OBUF_67),
    .O(N11454)
  );
  MUXF5 \EX/ALU/result_final<5>51  (
    .I0(N11455),
    .I1(N11456),
    .S(ALU_B_5_OBUF_94),
    .O(\EX/ALU/result_final<5>_map15 )
  );
  defparam \EX/ALU/result_final<5>51_F .INIT = 16'hEA40;
  LUT4 \EX/ALU/result_final<5>51_F  (
    .I0(ALU_A_5_OBUF_62),
    .I1(\EX/ALU/N147 ),
    .I2(\EX/ALU/N72 ),
    .I3(\EX/ALU/result_final<5>_map13 ),
    .O(N11455)
  );
  defparam \EX/ALU/result_final<5>51_G .INIT = 16'hFAEE;
  LUT4 \EX/ALU/result_final<5>51_G  (
    .I0(\EX/ALU/result_final_cmp_eq0003 ),
    .I1(\EX/ALU/N20 ),
    .I2(\EX/ALU/result_final<5>_map13 ),
    .I3(ALU_A_5_OBUF_62),
    .O(N11456)
  );
  MUXF5 \EX/ALU/result_final<3>93  (
    .I0(N11457),
    .I1(N11458),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/result_final<3>_map23 )
  );
  defparam \EX/ALU/result_final<3>93_F .INIT = 16'hEAC0;
  LUT4 \EX/ALU/result_final<3>93_F  (
    .I0(\EX/ALU/Mshift_result_final_shift0005_Sh[5] ),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[3] ),
    .I2(\EX/ALU/N93 ),
    .I3(\EX/ALU/N70 ),
    .O(N11457)
  );
  defparam \EX/ALU/result_final<3>93_G .INIT = 16'hECA0;
  LUT4 \EX/ALU/result_final<3>93_G  (
    .I0(\EX/ALU/Mshift_result_final_shift0005_Sh[7] ),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[9] ),
    .I2(\EX/ALU/N93 ),
    .I3(\EX/ALU/N70 ),
    .O(N11458)
  );
  MUXF5 \EX/ALU/result_final<4>87  (
    .I0(N11459),
    .I1(N11460),
    .S(ALU_A_2_OBUF_65),
    .O(\EX/ALU/result_final<4>_map22 )
  );
  defparam \EX/ALU/result_final<4>87_F .INIT = 16'hECA0;
  LUT4 \EX/ALU/result_final<4>87_F  (
    .I0(\EX/ALU/Mshift_result_final_shift0005_Sh[4] ),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[6] ),
    .I2(\EX/ALU/N93 ),
    .I3(\EX/ALU/N70 ),
    .O(N11459)
  );
  defparam \EX/ALU/result_final<4>87_G .INIT = 16'hEAC0;
  LUT4 \EX/ALU/result_final<4>87_G  (
    .I0(\EX/ALU/Mshift_result_final_shift0005_Sh[10] ),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[8] ),
    .I2(\EX/ALU/N93 ),
    .I3(\EX/ALU/N70 ),
    .O(N11460)
  );
  MUXF5 \EX/ALU/result_final<10>116  (
    .I0(N11461),
    .I1(N11462),
    .S(ALU_A_4_OBUF_63),
    .O(\EX/ALU/result_final<10>_map30 )
  );
  defparam \EX/ALU/result_final<10>116_F .INIT = 8'hDC;
  LUT3 \EX/ALU/result_final<10>116_F  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/result_final<10>_map26 ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[42] ),
    .O(N11461)
  );
  defparam \EX/ALU/result_final<10>116_G .INIT = 16'hFFD8;
  LUT4 \EX/ALU/result_final<10>116_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_B_31_OBUF_68),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[58] ),
    .I3(\EX/ALU/result_final<10>_map26 ),
    .O(N11462)
  );
  MUXF5 \EX/ALU/result_final<22>70  (
    .I0(N11463),
    .I1(N11464),
    .S(ALU_B_22_OBUF_77),
    .O(\EX/ALU/result_final<22>_map21 )
  );
  defparam \EX/ALU/result_final<22>70_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<22>70_F  (
    .I0(\EX/ALU/N59 ),
    .I1(ALU_A_22_OBUF_45),
    .I2(\EX/ALU/result_final_cmp_eq0002 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11463)
  );
  defparam \EX/ALU/result_final<22>70_G .INIT = 16'hEAAA;
  LUT4 \EX/ALU/result_final<22>70_G  (
    .I0(N10949),
    .I1(\EX/ALU/N73 ),
    .I2(\EX_id_ex/q [4]),
    .I3(\EX_id_ex/q [3]),
    .O(N11464)
  );
  MUXF5 \EX/ALU/result_final<24>46  (
    .I0(N11465),
    .I1(N11466),
    .S(ALU_B_24_OBUF_75),
    .O(\EX/ALU/result_final<24>_map14 )
  );
  defparam \EX/ALU/result_final<24>46_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<24>46_F  (
    .I0(\EX/ALU/N59 ),
    .I1(ALU_A_24_OBUF_43),
    .I2(\EX/ALU/result_final_cmp_eq0002 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11465)
  );
  defparam \EX/ALU/result_final<24>46_G .INIT = 16'hEAAA;
  LUT4 \EX/ALU/result_final<24>46_G  (
    .I0(N10952),
    .I1(\EX/ALU/N73 ),
    .I2(\EX_id_ex/q [4]),
    .I3(\EX_id_ex/q [3]),
    .O(N11466)
  );
  MUXF5 \ID/Decode/ALUtemp<4>57  (
    .I0(N11467),
    .I1(N11468),
    .S(\ID/Decode/ALUtemp<4>_map6 ),
    .O(\ID/Decode/ALUtemp<4>_map18 )
  );
  defparam \ID/Decode/ALUtemp<4>57_F .INIT = 16'h8988;
  LUT4 \ID/Decode/ALUtemp<4>57_F  (
    .I0(\if_id/q[29] ),
    .I1(\if_id/q[27] ),
    .I2(\if_id/q[26] ),
    .I3(\ID/Decode/ALUtemp<4>_map10 ),
    .O(N11467)
  );
  defparam \ID/Decode/ALUtemp<4>57_G .INIT = 8'hC1;
  LUT3 \ID/Decode/ALUtemp<4>57_G  (
    .I0(\if_id/q[26] ),
    .I1(\if_id/q[27] ),
    .I2(\if_id/q[29] ),
    .O(N11468)
  );
  MUXF5 \EX/ALU/result_final<8>49  (
    .I0(N11469),
    .I1(N11470),
    .S(ALU_B_8_OBUF_91),
    .O(\EX/ALU/result_final<8>_map16 )
  );
  defparam \EX/ALU/result_final<8>49_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<8>49_F  (
    .I0(\EX/ALU/N140 ),
    .I1(ALU_A_8_OBUF_59),
    .I2(\EX/ALU/N20 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11469)
  );
  defparam \EX/ALU/result_final<8>49_G .INIT = 16'hF8F0;
  LUT4 \EX/ALU/result_final<8>49_G  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(N10919),
    .I3(\EX/ALU/N73 ),
    .O(N11470)
  );
  MUXF5 \EX/ALU/result_final<9>49  (
    .I0(N11471),
    .I1(N11472),
    .S(ALU_B_9_OBUF_90),
    .O(\EX/ALU/result_final<9>_map16 )
  );
  defparam \EX/ALU/result_final<9>49_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<9>49_F  (
    .I0(\EX/ALU/N140 ),
    .I1(ALU_A_9_OBUF_58),
    .I2(\EX/ALU/N20 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11471)
  );
  defparam \EX/ALU/result_final<9>49_G .INIT = 16'hF8F0;
  LUT4 \EX/ALU/result_final<9>49_G  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(N10922),
    .I3(\EX/ALU/N73 ),
    .O(N11472)
  );
  MUXF5 \EX/ALU/result_final<10>46  (
    .I0(N11473),
    .I1(N11474),
    .S(ALU_B_10_OBUF_89),
    .O(\EX/ALU/result_final<10>_map14 )
  );
  defparam \EX/ALU/result_final<10>46_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<10>46_F  (
    .I0(\EX/ALU/N140 ),
    .I1(ALU_A_10_OBUF_57),
    .I2(\EX/ALU/N20 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11473)
  );
  defparam \EX/ALU/result_final<10>46_G .INIT = 16'hF8F0;
  LUT4 \EX/ALU/result_final<10>46_G  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(N10925),
    .I3(\EX/ALU/N73 ),
    .O(N11474)
  );
  MUXF5 \EX/ALU/result_final<12>46  (
    .I0(N11475),
    .I1(N11476),
    .S(ALU_B_12_OBUF_87),
    .O(\EX/ALU/result_final<12>_map14 )
  );
  defparam \EX/ALU/result_final<12>46_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<12>46_F  (
    .I0(\EX/ALU/N140 ),
    .I1(ALU_A_12_OBUF_55),
    .I2(\EX/ALU/N20 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11475)
  );
  defparam \EX/ALU/result_final<12>46_G .INIT = 16'hF8F0;
  LUT4 \EX/ALU/result_final<12>46_G  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(N10928),
    .I3(\EX/ALU/N73 ),
    .O(N11476)
  );
  MUXF5 \EX/ALU/result_final<13>46  (
    .I0(N11477),
    .I1(N11478),
    .S(ALU_B_13_OBUF_86),
    .O(\EX/ALU/result_final<13>_map14 )
  );
  defparam \EX/ALU/result_final<13>46_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<13>46_F  (
    .I0(\EX/ALU/N140 ),
    .I1(ALU_A_13_OBUF_54),
    .I2(\EX/ALU/N20 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11477)
  );
  defparam \EX/ALU/result_final<13>46_G .INIT = 16'hF8F0;
  LUT4 \EX/ALU/result_final<13>46_G  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(N10931),
    .I3(\EX/ALU/N73 ),
    .O(N11478)
  );
  MUXF5 \EX/ALU/result_final<14>46  (
    .I0(N11479),
    .I1(N11480),
    .S(ALU_B_14_OBUF_85),
    .O(\EX/ALU/result_final<14>_map14 )
  );
  defparam \EX/ALU/result_final<14>46_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<14>46_F  (
    .I0(\EX/ALU/N140 ),
    .I1(ALU_A_14_OBUF_53),
    .I2(\EX/ALU/N20 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11479)
  );
  defparam \EX/ALU/result_final<14>46_G .INIT = 16'hF8F0;
  LUT4 \EX/ALU/result_final<14>46_G  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(N10934),
    .I3(\EX/ALU/N73 ),
    .O(N11480)
  );
  MUXF5 \EX/ALU/result_final<27>46  (
    .I0(N11481),
    .I1(N11482),
    .S(ALU_B_27_OBUF_72),
    .O(\EX/ALU/result_final<27>_map14 )
  );
  defparam \EX/ALU/result_final<27>46_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<27>46_F  (
    .I0(\EX/ALU/N59 ),
    .I1(ALU_A_27_OBUF_40),
    .I2(\EX/ALU/result_final_cmp_eq0002 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11481)
  );
  defparam \EX/ALU/result_final<27>46_G .INIT = 16'hF8F0;
  LUT4 \EX/ALU/result_final<27>46_G  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(N10674),
    .I3(\EX/ALU/N73 ),
    .O(N11482)
  );
  MUXF5 \EX/ALU/result_final<17>46  (
    .I0(N11483),
    .I1(N11484),
    .S(ALU_B_17_OBUF_82),
    .O(\EX/ALU/result_final<17>_map14 )
  );
  defparam \EX/ALU/result_final<17>46_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<17>46_F  (
    .I0(\EX/ALU/N59 ),
    .I1(ALU_A_17_OBUF_50),
    .I2(\EX/ALU/result_final_cmp_eq0002 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11483)
  );
  defparam \EX/ALU/result_final<17>46_G .INIT = 16'hF8F0;
  LUT4 \EX/ALU/result_final<17>46_G  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(N10937),
    .I3(\EX/ALU/N73 ),
    .O(N11484)
  );
  MUXF5 \EX/ALU/result_final<19>46  (
    .I0(N11485),
    .I1(N11486),
    .S(ALU_B_19_OBUF_80),
    .O(\EX/ALU/result_final<19>_map14 )
  );
  defparam \EX/ALU/result_final<19>46_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<19>46_F  (
    .I0(\EX/ALU/N59 ),
    .I1(ALU_A_19_OBUF_48),
    .I2(\EX/ALU/result_final_cmp_eq0002 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11485)
  );
  defparam \EX/ALU/result_final<19>46_G .INIT = 16'hF8F0;
  LUT4 \EX/ALU/result_final<19>46_G  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(N10940),
    .I3(\EX/ALU/N73 ),
    .O(N11486)
  );
  MUXF5 \EX/ALU/result_final<18>46  (
    .I0(N11487),
    .I1(N11488),
    .S(ALU_B_18_OBUF_81),
    .O(\EX/ALU/result_final<18>_map14 )
  );
  defparam \EX/ALU/result_final<18>46_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<18>46_F  (
    .I0(\EX/ALU/N59 ),
    .I1(ALU_A_18_OBUF_49),
    .I2(\EX/ALU/result_final_cmp_eq0002 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11487)
  );
  defparam \EX/ALU/result_final<18>46_G .INIT = 16'hF8F0;
  LUT4 \EX/ALU/result_final<18>46_G  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(N10943),
    .I3(\EX/ALU/N73 ),
    .O(N11488)
  );
  MUXF5 \EX/ALU/result_final<23>46  (
    .I0(N11489),
    .I1(N11490),
    .S(ALU_B_23_OBUF_76),
    .O(\EX/ALU/result_final<23>_map14 )
  );
  defparam \EX/ALU/result_final<23>46_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<23>46_F  (
    .I0(\EX/ALU/N59 ),
    .I1(ALU_A_23_OBUF_44),
    .I2(\EX/ALU/result_final_cmp_eq0002 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11489)
  );
  defparam \EX/ALU/result_final<23>46_G .INIT = 16'hF8F0;
  LUT4 \EX/ALU/result_final<23>46_G  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(N10946),
    .I3(\EX/ALU/N73 ),
    .O(N11490)
  );
  MUXF5 \EX/ALU/result_final<25>46  (
    .I0(N11491),
    .I1(N11492),
    .S(ALU_B_25_OBUF_74),
    .O(\EX/ALU/result_final<25>_map14 )
  );
  defparam \EX/ALU/result_final<25>46_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<25>46_F  (
    .I0(\EX/ALU/N59 ),
    .I1(ALU_A_25_OBUF_42),
    .I2(\EX/ALU/result_final_cmp_eq0002 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11491)
  );
  defparam \EX/ALU/result_final<25>46_G .INIT = 16'hF8F0;
  LUT4 \EX/ALU/result_final<25>46_G  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(N10955),
    .I3(\EX/ALU/N73 ),
    .O(N11492)
  );
  MUXF5 \EX/ALU/result_final<26>46  (
    .I0(N11493),
    .I1(N11494),
    .S(ALU_B_26_OBUF_73),
    .O(\EX/ALU/result_final<26>_map14 )
  );
  defparam \EX/ALU/result_final<26>46_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<26>46_F  (
    .I0(\EX/ALU/N59 ),
    .I1(ALU_A_26_OBUF_41),
    .I2(\EX/ALU/result_final_cmp_eq0002 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11493)
  );
  defparam \EX/ALU/result_final<26>46_G .INIT = 16'hF8F0;
  LUT4 \EX/ALU/result_final<26>46_G  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(N10958),
    .I3(\EX/ALU/N73 ),
    .O(N11494)
  );
  MUXF5 \EX/ALU/result_final<28>46  (
    .I0(N11495),
    .I1(N11496),
    .S(ALU_B_28_OBUF_71),
    .O(\EX/ALU/result_final<28>_map14 )
  );
  defparam \EX/ALU/result_final<28>46_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<28>46_F  (
    .I0(\EX/ALU/N59 ),
    .I1(ALU_A_28_OBUF_39),
    .I2(\EX/ALU/result_final_cmp_eq0002 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11495)
  );
  defparam \EX/ALU/result_final<28>46_G .INIT = 16'hF8F0;
  LUT4 \EX/ALU/result_final<28>46_G  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(N10961),
    .I3(\EX/ALU/N73 ),
    .O(N11496)
  );
  MUXF5 \EX/ALU/result_final<29>46  (
    .I0(N11497),
    .I1(N11498),
    .S(ALU_B_29_OBUF_70),
    .O(\EX/ALU/result_final<29>_map14 )
  );
  defparam \EX/ALU/result_final<29>46_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<29>46_F  (
    .I0(\EX/ALU/N59 ),
    .I1(ALU_A_29_OBUF_38),
    .I2(\EX/ALU/result_final_cmp_eq0002 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11497)
  );
  defparam \EX/ALU/result_final<29>46_G .INIT = 16'hF8F0;
  LUT4 \EX/ALU/result_final<29>46_G  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(N10964),
    .I3(\EX/ALU/N73 ),
    .O(N11498)
  );
  MUXF5 \EX/ALU/result_final<30>46  (
    .I0(N11499),
    .I1(N11500),
    .S(ALU_B_30_OBUF_69),
    .O(\EX/ALU/result_final<30>_map14 )
  );
  defparam \EX/ALU/result_final<30>46_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<30>46_F  (
    .I0(\EX/ALU/N59 ),
    .I1(ALU_A_30_OBUF_37),
    .I2(\EX/ALU/result_final_cmp_eq0002 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11499)
  );
  defparam \EX/ALU/result_final<30>46_G .INIT = 16'hF8F0;
  LUT4 \EX/ALU/result_final<30>46_G  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(N10967),
    .I3(\EX/ALU/N73 ),
    .O(N11500)
  );
  MUXF5 \EX/ALU/result_final<31>21  (
    .I0(N11501),
    .I1(N11502),
    .S(ALU_B_31_OBUF_68),
    .O(\EX/ALU/result_final<31>_map9 )
  );
  defparam \EX/ALU/result_final<31>21_F .INIT = 8'hD8;
  LUT3 \EX/ALU/result_final<31>21_F  (
    .I0(ALU_A_31_OBUF_36),
    .I1(\EX/ALU/N59 ),
    .I2(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11501)
  );
  defparam \EX/ALU/result_final<31>21_G .INIT = 16'hF8F0;
  LUT4 \EX/ALU/result_final<31>21_G  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(N10976),
    .I3(\EX/ALU/N73 ),
    .O(N11502)
  );
  MUXF5 \EX/ALU/result_final<9>139  (
    .I0(N11503),
    .I1(N11504),
    .S(ALU_A_4_OBUF_63),
    .O(\EX/ALU/result_final<9>_map36 )
  );
  defparam \EX/ALU/result_final<9>139_F .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<9>139_F  (
    .I0(\EX/ALU/N88 ),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[41] ),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[49] ),
    .O(N11503)
  );
  defparam \EX/ALU/result_final<9>139_G .INIT = 16'hD800;
  LUT4 \EX/ALU/result_final<9>139_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_B_31_OBUF_68),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[57] ),
    .I3(\EX/ALU/N88 ),
    .O(N11504)
  );
  MUXF5 \IF/PC_in<25>78  (
    .I0(N11505),
    .I1(N11506),
    .S(Z),
    .O(\IF/PC_in [25])
  );
  defparam \IF/PC_in<25>78_F .INIT = 16'hCB08;
  LUT4 \IF/PC_in<25>78_F  (
    .I0(JrAddr[25]),
    .I1(JR),
    .I2(J),
    .I3(NextPC_if[25]),
    .O(N11505)
  );
  defparam \IF/PC_in<25>78_G .INIT = 16'hFE02;
  LUT4 \IF/PC_in<25>78_G  (
    .I0(\IF/PC_in<25>_map19 ),
    .I1(JR),
    .I2(J),
    .I3(NextPC_if[25]),
    .O(N11506)
  );
  MUXF5 \IF/PC_in<1>  (
    .I0(N11507),
    .I1(N11508),
    .S(Z),
    .O(\IF/PC_in [1])
  );
  defparam \IF/PC_in<1>_F .INIT = 16'hCB08;
  LUT4 \IF/PC_in<1>_F  (
    .I0(JrAddr[1]),
    .I1(JR),
    .I2(J),
    .I3(\IF/PC [1]),
    .O(N11507)
  );
  defparam \IF/PC_in<1>_G .INIT = 16'hFE02;
  LUT4 \IF/PC_in<1>_G  (
    .I0(\if_id/q[33] ),
    .I1(JR),
    .I2(J),
    .I3(\IF/PC [1]),
    .O(N11508)
  );
  MUXF5 \IF/PC_in<0>  (
    .I0(N11509),
    .I1(N11510),
    .S(Z),
    .O(\IF/PC_in [0])
  );
  defparam \IF/PC_in<0>_F .INIT = 16'hCB08;
  LUT4 \IF/PC_in<0>_F  (
    .I0(JrAddr[0]),
    .I1(JR),
    .I2(J),
    .I3(\IF/PC [0]),
    .O(N11509)
  );
  defparam \IF/PC_in<0>_G .INIT = 16'hFE02;
  LUT4 \IF/PC_in<0>_G  (
    .I0(\if_id/q[32] ),
    .I1(JR),
    .I2(J),
    .I3(\IF/PC [0]),
    .O(N11510)
  );
  MUXF5 \IF/PC_in<18>75  (
    .I0(N11511),
    .I1(N11512),
    .S(Z),
    .O(\IF/PC_in [18])
  );
  defparam \IF/PC_in<18>75_F .INIT = 16'hBAAA;
  LUT4 \IF/PC_in<18>75_F  (
    .I0(N10772),
    .I1(J),
    .I2(JR),
    .I3(JrAddr[18]),
    .O(N11511)
  );
  defparam \IF/PC_in<18>75_G .INIT = 16'hFE02;
  LUT4 \IF/PC_in<18>75_G  (
    .I0(N10539),
    .I1(JR),
    .I2(J),
    .I3(NextPC_if[18]),
    .O(N11512)
  );
  MUXF5 \IF/PC_in<14>75  (
    .I0(N11513),
    .I1(N11514),
    .S(Z),
    .O(\IF/PC_in [14])
  );
  defparam \IF/PC_in<14>75_F .INIT = 16'hBAAA;
  LUT4 \IF/PC_in<14>75_F  (
    .I0(N10757),
    .I1(J),
    .I2(JR),
    .I3(JrAddr[14]),
    .O(N11513)
  );
  defparam \IF/PC_in<14>75_G .INIT = 16'hFE02;
  LUT4 \IF/PC_in<14>75_G  (
    .I0(N10533),
    .I1(JR),
    .I2(J),
    .I3(NextPC_if[14]),
    .O(N11514)
  );
  MUXF5 \IF/PC_in<19>75  (
    .I0(N11515),
    .I1(N11516),
    .S(Z),
    .O(\IF/PC_in [19])
  );
  defparam \IF/PC_in<19>75_F .INIT = 16'hBAAA;
  LUT4 \IF/PC_in<19>75_F  (
    .I0(N10769),
    .I1(J),
    .I2(JR),
    .I3(JrAddr[19]),
    .O(N11515)
  );
  defparam \IF/PC_in<19>75_G .INIT = 16'hFE02;
  LUT4 \IF/PC_in<19>75_G  (
    .I0(N10537),
    .I1(JR),
    .I2(J),
    .I3(NextPC_if[19]),
    .O(N11516)
  );
  MUXF5 \IF/PC_in<17>84  (
    .I0(N11517),
    .I1(N11518),
    .S(Z),
    .O(\IF/PC_in [17])
  );
  defparam \IF/PC_in<17>84_F .INIT = 16'hBAAA;
  LUT4 \IF/PC_in<17>84_F  (
    .I0(N10763),
    .I1(J),
    .I2(JR),
    .I3(JrAddr[17]),
    .O(N11517)
  );
  defparam \IF/PC_in<17>84_G .INIT = 16'hFE02;
  LUT4 \IF/PC_in<17>84_G  (
    .I0(\IF/PC_in<17>_map21 ),
    .I1(JR),
    .I2(J),
    .I3(NextPC_if[17]),
    .O(N11518)
  );
  MUXF5 \IF/PC_in<16>65  (
    .I0(N11519),
    .I1(N11520),
    .S(Z),
    .O(\IF/PC_in [16])
  );
  defparam \IF/PC_in<16>65_F .INIT = 16'hBAAA;
  LUT4 \IF/PC_in<16>65_F  (
    .I0(N10760),
    .I1(J),
    .I2(JR),
    .I3(JrAddr[16]),
    .O(N11519)
  );
  defparam \IF/PC_in<16>65_G .INIT = 16'hFE02;
  LUT4 \IF/PC_in<16>65_G  (
    .I0(N10535),
    .I1(JR),
    .I2(J),
    .I3(NextPC_if[16]),
    .O(N11520)
  );
  MUXF5 \IF/PC_in<15>75  (
    .I0(N11521),
    .I1(N11522),
    .S(Z),
    .O(\IF/PC_in [15])
  );
  defparam \IF/PC_in<15>75_F .INIT = 16'hBAAA;
  LUT4 \IF/PC_in<15>75_F  (
    .I0(N10754),
    .I1(J),
    .I2(JR),
    .I3(JrAddr[15]),
    .O(N11521)
  );
  defparam \IF/PC_in<15>75_G .INIT = 16'hFE02;
  LUT4 \IF/PC_in<15>75_G  (
    .I0(N10531),
    .I1(JR),
    .I2(J),
    .I3(NextPC_if[15]),
    .O(N11522)
  );
  MUXF5 \IF/PC_in<12>74  (
    .I0(N11523),
    .I1(N11524),
    .S(Z),
    .O(\IF/PC_in [12])
  );
  defparam \IF/PC_in<12>74_F .INIT = 16'hBAAA;
  LUT4 \IF/PC_in<12>74_F  (
    .I0(N10781),
    .I1(JR),
    .I2(J),
    .I3(\if_id/q[15] ),
    .O(N11523)
  );
  defparam \IF/PC_in<12>74_G .INIT = 16'hAA8B;
  LUT4 \IF/PC_in<12>74_G  (
    .I0(NextPC_if[12]),
    .I1(JR),
    .I2(N10880),
    .I3(J),
    .O(N11524)
  );
  MUXF5 \IF/PC_in<10>85  (
    .I0(N11525),
    .I1(N11526),
    .S(Z),
    .O(\IF/PC_in [10])
  );
  defparam \IF/PC_in<10>85_F .INIT = 16'hBAAA;
  LUT4 \IF/PC_in<10>85_F  (
    .I0(N10787),
    .I1(JR),
    .I2(J),
    .I3(\if_id/q[15] ),
    .O(N11525)
  );
  defparam \IF/PC_in<10>85_G .INIT = 16'hAA8B;
  LUT4 \IF/PC_in<10>85_G  (
    .I0(NextPC_if[10]),
    .I1(JR),
    .I2(N10884),
    .I3(J),
    .O(N11526)
  );
  MUXF5 \IF/PC_in<11>85  (
    .I0(N11527),
    .I1(N11528),
    .S(Z),
    .O(\IF/PC_in [11])
  );
  defparam \IF/PC_in<11>85_F .INIT = 16'hBAAA;
  LUT4 \IF/PC_in<11>85_F  (
    .I0(N10784),
    .I1(JR),
    .I2(J),
    .I3(\if_id/q[15] ),
    .O(N11527)
  );
  defparam \IF/PC_in<11>85_G .INIT = 16'hAA8B;
  LUT4 \IF/PC_in<11>85_G  (
    .I0(NextPC_if[11]),
    .I1(JR),
    .I2(N10882),
    .I3(J),
    .O(N11528)
  );
  MUXF5 \IF/PC_in<8>74  (
    .I0(N11529),
    .I1(N11530),
    .S(Z),
    .O(\IF/PC_in [8])
  );
  defparam \IF/PC_in<8>74_F .INIT = 16'hBAAA;
  LUT4 \IF/PC_in<8>74_F  (
    .I0(N10775),
    .I1(JR),
    .I2(J),
    .I3(\if_id/q[6] ),
    .O(N11529)
  );
  defparam \IF/PC_in<8>74_G .INIT = 16'hAA8B;
  LUT4 \IF/PC_in<8>74_G  (
    .I0(NextPC_if[8]),
    .I1(JR),
    .I2(N10872),
    .I3(J),
    .O(N11530)
  );
  MUXF5 \IF/PC_in<7>85  (
    .I0(N11531),
    .I1(N11532),
    .S(Z),
    .O(\IF/PC_in [7])
  );
  defparam \IF/PC_in<7>85_F .INIT = 16'hBAAA;
  LUT4 \IF/PC_in<7>85_F  (
    .I0(N10778),
    .I1(JR),
    .I2(J),
    .I3(\if_id/q[12] ),
    .O(N11531)
  );
  defparam \IF/PC_in<7>85_G .INIT = 16'hAA8B;
  LUT4 \IF/PC_in<7>85_G  (
    .I0(NextPC_if[7]),
    .I1(JR),
    .I2(N10874),
    .I3(J),
    .O(N11532)
  );
  MUXF5 \IF/PC_in<4>74  (
    .I0(N11533),
    .I1(N11534),
    .S(Z),
    .O(\IF/PC_in [4])
  );
  defparam \IF/PC_in<4>74_F .INIT = 16'hBAAA;
  LUT4 \IF/PC_in<4>74_F  (
    .I0(N10766),
    .I1(JR),
    .I2(J),
    .I3(\if_id/q[2] ),
    .O(N11533)
  );
  defparam \IF/PC_in<4>74_G .INIT = 16'hAA8B;
  LUT4 \IF/PC_in<4>74_G  (
    .I0(NextPC_if[4]),
    .I1(J),
    .I2(N10876),
    .I3(JR),
    .O(N11534)
  );
  MUXF5 \IF/PC_in<3>74  (
    .I0(N11535),
    .I1(N11536),
    .S(Z),
    .O(\IF/PC_in [3])
  );
  defparam \IF/PC_in<3>74_F .INIT = 16'hBAAA;
  LUT4 \IF/PC_in<3>74_F  (
    .I0(N10751),
    .I1(JR),
    .I2(J),
    .I3(\if_id/q[1] ),
    .O(N11535)
  );
  defparam \IF/PC_in<3>74_G .INIT = 16'hAA8B;
  LUT4 \IF/PC_in<3>74_G  (
    .I0(NextPC_if[3]),
    .I1(J),
    .I2(N10878),
    .I3(JR),
    .O(N11536)
  );
  MUXF5 \ID/Z118  (
    .I0(N11537),
    .I1(JrAddr[31]),
    .S(ALUCode_id[2]),
    .O(\ID/Z_map35 )
  );
  defparam \ID/Z118_F .INIT = 16'h4440;
  LUT4 \ID/Z118_F  (
    .I0(\if_id/q[31] ),
    .I1(\ID/Decode/ALUtemp<0>_map32 ),
    .I2(\ID/Z_map30 ),
    .I3(\ID/Z_map15 ),
    .O(N11537)
  );
  MUXF5 \EX/ALU/result_final<8>135  (
    .I0(N11539),
    .I1(N11540),
    .S(ALU_A_3_OBUF_64),
    .O(\EX/ALU/result_final<8>_map35 )
  );
  defparam \EX/ALU/result_final<8>135_F .INIT = 8'hE4;
  LUT3 \EX/ALU/result_final<8>135_F  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[40] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[56] ),
    .O(N11539)
  );
  defparam \EX/ALU/result_final<8>135_G .INIT = 8'hD8;
  LUT3 \EX/ALU/result_final<8>135_G  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_B_31_OBUF_68),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[48] ),
    .O(N11540)
  );
  MUXF5 \EX/ALU/result_final<4>105  (
    .I0(N11541),
    .I1(N11542),
    .S(ALU_A_4_OBUF_63),
    .O(\EX/ALU/result_final<4>_map28 )
  );
  defparam \EX/ALU/result_final<4>105_F .INIT = 8'hEC;
  LUT3 \EX/ALU/result_final<4>105_F  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/result_final<4>_map22 ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[44] ),
    .O(N11541)
  );
  defparam \EX/ALU/result_final<4>105_G .INIT = 16'hFFD8;
  LUT4 \EX/ALU/result_final<4>105_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[60] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[52] ),
    .I3(\EX/ALU/result_final<4>_map22 ),
    .O(N11542)
  );
  MUXF5 \EX/ALU/result_final<17>100  (
    .I0(N11543),
    .I1(N11544),
    .S(ALU_A_4_OBUF_63),
    .O(\EX/ALU/result_final<17>_map25 )
  );
  defparam \EX/ALU/result_final<17>100_F .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<17>100_F  (
    .I0(\EX/ALU/N88 ),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[49] ),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[57] ),
    .O(N11543)
  );
  defparam \EX/ALU/result_final<17>100_G .INIT = 16'hB080;
  LUT4 \EX/ALU/result_final<17>100_G  (
    .I0(\Addr_id_ex/q[4] ),
    .I1(\EX_id_ex/q [1]),
    .I2(\EX/ALU/N88 ),
    .I3(MemWriteData_ex[31]),
    .O(N11544)
  );
  MUXF5 \EX/ALU/result_final<21>46  (
    .I0(N11545),
    .I1(N11546),
    .S(ALU_B_21_OBUF_78),
    .O(\EX/ALU/result_final<21>_map14 )
  );
  defparam \EX/ALU/result_final<21>46_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<21>46_F  (
    .I0(\EX/ALU/N59 ),
    .I1(ALU_A_21_OBUF_46),
    .I2(\EX/ALU/result_final_cmp_eq0002 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11545)
  );
  defparam \EX/ALU/result_final<21>46_G .INIT = 16'hEAAA;
  LUT4 \EX/ALU/result_final<21>46_G  (
    .I0(N11297),
    .I1(\EX/ALU/N73 ),
    .I2(\EX_id_ex/q [4]),
    .I3(\EX_id_ex/q [3]),
    .O(N11546)
  );
  MUXF5 \EX/ALU/result_final<2>45  (
    .I0(N11547),
    .I1(N11548),
    .S(ALU_B_2_OBUF_97),
    .O(\EX/ALU/result_final<2>_map14 )
  );
  defparam \EX/ALU/result_final<2>45_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<2>45_F  (
    .I0(\EX/ALU/N140 ),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/N20 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11547)
  );
  defparam \EX/ALU/result_final<2>45_G .INIT = 16'hF8F0;
  LUT4 \EX/ALU/result_final<2>45_G  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(N11300),
    .I3(\EX/ALU/N73 ),
    .O(N11548)
  );
  MUXF5 \EX/ALU/result_final<3>45  (
    .I0(N11549),
    .I1(N11550),
    .S(ALU_B_3_OBUF_96),
    .O(\EX/ALU/result_final<3>_map14 )
  );
  defparam \EX/ALU/result_final<3>45_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<3>45_F  (
    .I0(\EX/ALU/N140 ),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/N20 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11549)
  );
  defparam \EX/ALU/result_final<3>45_G .INIT = 16'hF8F0;
  LUT4 \EX/ALU/result_final<3>45_G  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(N11303),
    .I3(\EX/ALU/N73 ),
    .O(N11550)
  );
  MUXF5 \EX/ALU/result_final<7>46  (
    .I0(N11551),
    .I1(N11552),
    .S(ALU_B_7_OBUF_92),
    .O(\EX/ALU/result_final<7>_map14 )
  );
  defparam \EX/ALU/result_final<7>46_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<7>46_F  (
    .I0(\EX/ALU/N140 ),
    .I1(ALU_A_7_OBUF_60),
    .I2(\EX/ALU/N20 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11551)
  );
  defparam \EX/ALU/result_final<7>46_G .INIT = 16'hEAAA;
  LUT4 \EX/ALU/result_final<7>46_G  (
    .I0(N11306),
    .I1(\EX/ALU/N73 ),
    .I2(\EX_id_ex/q [4]),
    .I3(\EX_id_ex/q [3]),
    .O(N11552)
  );
  MUXF5 \EX/ALU/result_final<6>46  (
    .I0(N11553),
    .I1(N11554),
    .S(ALU_B_6_OBUF_93),
    .O(\EX/ALU/result_final<6>_map14 )
  );
  defparam \EX/ALU/result_final<6>46_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<6>46_F  (
    .I0(\EX/ALU/N140 ),
    .I1(ALU_A_6_OBUF_61),
    .I2(\EX/ALU/N20 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11553)
  );
  defparam \EX/ALU/result_final<6>46_G .INIT = 16'hEAAA;
  LUT4 \EX/ALU/result_final<6>46_G  (
    .I0(N11309),
    .I1(\EX/ALU/N73 ),
    .I2(\EX_id_ex/q [4]),
    .I3(\EX_id_ex/q [3]),
    .O(N11554)
  );
  MUXF5 \EX/ALU/result_final<11>46  (
    .I0(N11555),
    .I1(N11556),
    .S(ALU_B_11_OBUF_88),
    .O(\EX/ALU/result_final<11>_map14 )
  );
  defparam \EX/ALU/result_final<11>46_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<11>46_F  (
    .I0(\EX/ALU/N140 ),
    .I1(ALU_A_11_OBUF_56),
    .I2(\EX/ALU/N20 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11555)
  );
  defparam \EX/ALU/result_final<11>46_G .INIT = 16'hEAAA;
  LUT4 \EX/ALU/result_final<11>46_G  (
    .I0(N11312),
    .I1(\EX/ALU/N73 ),
    .I2(\EX_id_ex/q [4]),
    .I3(\EX_id_ex/q [3]),
    .O(N11556)
  );
  MUXF5 \EX/ALU/result_final<15>46  (
    .I0(N11557),
    .I1(N11558),
    .S(ALU_B_15_OBUF_84),
    .O(\EX/ALU/result_final<15>_map14 )
  );
  defparam \EX/ALU/result_final<15>46_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<15>46_F  (
    .I0(\EX/ALU/N140 ),
    .I1(ALU_A_15_OBUF_52),
    .I2(\EX/ALU/N20 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11557)
  );
  defparam \EX/ALU/result_final<15>46_G .INIT = 16'hEAAA;
  LUT4 \EX/ALU/result_final<15>46_G  (
    .I0(N11315),
    .I1(\EX/ALU/N73 ),
    .I2(\EX_id_ex/q [4]),
    .I3(\EX_id_ex/q [3]),
    .O(N11558)
  );
  MUXF5 \EX/ALU/result_final<16>46  (
    .I0(N11559),
    .I1(N11560),
    .S(ALU_B_16_OBUF_83),
    .O(\EX/ALU/result_final<16>_map14 )
  );
  defparam \EX/ALU/result_final<16>46_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<16>46_F  (
    .I0(\EX/ALU/N59 ),
    .I1(ALU_A_16_OBUF_51),
    .I2(\EX/ALU/result_final_cmp_eq0002 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11559)
  );
  defparam \EX/ALU/result_final<16>46_G .INIT = 16'hEAAA;
  LUT4 \EX/ALU/result_final<16>46_G  (
    .I0(N11318),
    .I1(\EX/ALU/N73 ),
    .I2(\EX_id_ex/q [4]),
    .I3(\EX_id_ex/q [3]),
    .O(N11560)
  );
  MUXF5 \EX/ALU/result_final<20>46  (
    .I0(N11561),
    .I1(N11562),
    .S(ALU_B_20_OBUF_79),
    .O(\EX/ALU/result_final<20>_map14 )
  );
  defparam \EX/ALU/result_final<20>46_F .INIT = 16'hFBC8;
  LUT4 \EX/ALU/result_final<20>46_F  (
    .I0(\EX/ALU/N59 ),
    .I1(ALU_A_20_OBUF_47),
    .I2(\EX/ALU/result_final_cmp_eq0002 ),
    .I3(\EX/ALU/result_final_cmp_eq0004 ),
    .O(N11561)
  );
  defparam \EX/ALU/result_final<20>46_G .INIT = 16'hEAAA;
  LUT4 \EX/ALU/result_final<20>46_G  (
    .I0(N11321),
    .I1(\EX/ALU/N73 ),
    .I2(\EX_id_ex/q [4]),
    .I3(\EX_id_ex/q [3]),
    .O(N11562)
  );
  MUXF5 \EX/Mmux_B_temp9  (
    .I0(N11563),
    .I1(N11564),
    .S(\EX/ForwardB [0]),
    .O(MemWriteData_ex[17])
  );
  defparam \EX/Mmux_B_temp9_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp9_F  (
    .I0(\Data_id_ex/q[17] ),
    .I1(\Data_ex_mem/q [54]),
    .I2(\EX/ForwardB [1]),
    .O(N11563)
  );
  defparam \EX/Mmux_B_temp9_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp9_G  (
    .I0(\Data_id_ex/q[17] ),
    .I1(RegWriteData_wb[17]),
    .I2(\EX/ForwardB [1]),
    .O(N11564)
  );
  MUXF5 \EX/Mmux_B_temp10  (
    .I0(N11565),
    .I1(N11566),
    .S(\EX/ForwardB [0]),
    .O(MemWriteData_ex[18])
  );
  defparam \EX/Mmux_B_temp10_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp10_F  (
    .I0(\Data_id_ex/q[18] ),
    .I1(\Data_ex_mem/q [55]),
    .I2(\EX/ForwardB [1]),
    .O(N11565)
  );
  defparam \EX/Mmux_B_temp10_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp10_G  (
    .I0(\Data_id_ex/q[18] ),
    .I1(RegWriteData_wb[18]),
    .I2(\EX/ForwardB [1]),
    .O(N11566)
  );
  MUXF5 \EX/Mmux_B_temp18  (
    .I0(N11567),
    .I1(N11568),
    .S(\EX/ForwardB [0]),
    .O(MemWriteData_ex[25])
  );
  defparam \EX/Mmux_B_temp18_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp18_F  (
    .I0(\Data_id_ex/q[25] ),
    .I1(\Data_ex_mem/q [62]),
    .I2(\EX/ForwardB [1]),
    .O(N11567)
  );
  defparam \EX/Mmux_B_temp18_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp18_G  (
    .I0(\Data_id_ex/q[25] ),
    .I1(RegWriteData_wb[25]),
    .I2(\EX/ForwardB [1]),
    .O(N11568)
  );
  MUXF5 \EX/Mmux_B_temp14  (
    .I0(N11569),
    .I1(N11570),
    .S(\EX/ForwardB [0]),
    .O(MemWriteData_ex[21])
  );
  defparam \EX/Mmux_B_temp14_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp14_F  (
    .I0(\Data_id_ex/q[21] ),
    .I1(\Data_ex_mem/q [58]),
    .I2(\EX/ForwardB [1]),
    .O(N11569)
  );
  defparam \EX/Mmux_B_temp14_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp14_G  (
    .I0(\Data_id_ex/q[21] ),
    .I1(RegWriteData_wb[21]),
    .I2(\EX/ForwardB [1]),
    .O(N11570)
  );
  MUXF5 \EX/Mmux_B_temp19  (
    .I0(N11571),
    .I1(N11572),
    .S(\EX/ForwardB [0]),
    .O(MemWriteData_ex[26])
  );
  defparam \EX/Mmux_B_temp19_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp19_F  (
    .I0(\Data_id_ex/q[26] ),
    .I1(\Data_ex_mem/q [63]),
    .I2(\EX/ForwardB [1]),
    .O(N11571)
  );
  defparam \EX/Mmux_B_temp19_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp19_G  (
    .I0(\Data_id_ex/q[26] ),
    .I1(RegWriteData_wb[26]),
    .I2(\EX/ForwardB [1]),
    .O(N11572)
  );
  MUXF5 \EX/Mmux_B_temp15  (
    .I0(N11573),
    .I1(N11574),
    .S(\EX/ForwardB [0]),
    .O(MemWriteData_ex[22])
  );
  defparam \EX/Mmux_B_temp15_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp15_F  (
    .I0(\Data_id_ex/q[22] ),
    .I1(\Data_ex_mem/q [59]),
    .I2(\EX/ForwardB [1]),
    .O(N11573)
  );
  defparam \EX/Mmux_B_temp15_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp15_G  (
    .I0(\Data_id_ex/q[22] ),
    .I1(RegWriteData_wb[22]),
    .I2(\EX/ForwardB [1]),
    .O(N11574)
  );
  MUXF5 \EX/Mmux_B_temp7  (
    .I0(N11575),
    .I1(N11576),
    .S(\EX/ForwardB [0]),
    .O(MemWriteData_ex[15])
  );
  defparam \EX/Mmux_B_temp7_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp7_F  (
    .I0(\Data_id_ex/q[15] ),
    .I1(\Data_ex_mem/q [52]),
    .I2(\EX/ForwardB [1]),
    .O(N11575)
  );
  defparam \EX/Mmux_B_temp7_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp7_G  (
    .I0(\Data_id_ex/q[15] ),
    .I1(RegWriteData_wb[15]),
    .I2(\EX/ForwardB [1]),
    .O(N11576)
  );
  MUXF5 \EX/Mmux_B_temp5  (
    .I0(N11577),
    .I1(N11578),
    .S(\EX/ForwardB [0]),
    .O(MemWriteData_ex[13])
  );
  defparam \EX/Mmux_B_temp5_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp5_F  (
    .I0(\Data_id_ex/q[13] ),
    .I1(\Data_ex_mem/q [50]),
    .I2(\EX/ForwardB [1]),
    .O(N11577)
  );
  defparam \EX/Mmux_B_temp5_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp5_G  (
    .I0(\Data_id_ex/q[13] ),
    .I1(RegWriteData_wb[13]),
    .I2(\EX/ForwardB [1]),
    .O(N11578)
  );
  MUXF5 \EX/Mmux_B_temp8  (
    .I0(N11579),
    .I1(N11580),
    .S(\EX/ForwardB [0]),
    .O(MemWriteData_ex[16])
  );
  defparam \EX/Mmux_B_temp8_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp8_F  (
    .I0(\Data_id_ex/q[16] ),
    .I1(\Data_ex_mem/q [53]),
    .I2(\EX/ForwardB [1]),
    .O(N11579)
  );
  defparam \EX/Mmux_B_temp8_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp8_G  (
    .I0(\Data_id_ex/q[16] ),
    .I1(RegWriteData_wb[16]),
    .I2(\EX/ForwardB [1]),
    .O(N11580)
  );
  MUXF5 \EX/Mmux_B_temp16  (
    .I0(N11581),
    .I1(N11582),
    .S(\EX/ForwardB [0]),
    .O(MemWriteData_ex[23])
  );
  defparam \EX/Mmux_B_temp16_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp16_F  (
    .I0(\Data_id_ex/q[23] ),
    .I1(\Data_ex_mem/q [60]),
    .I2(\EX/ForwardB [1]),
    .O(N11581)
  );
  defparam \EX/Mmux_B_temp16_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp16_G  (
    .I0(\Data_id_ex/q[23] ),
    .I1(RegWriteData_wb[23]),
    .I2(\EX/ForwardB [1]),
    .O(N11582)
  );
  MUXF5 \EX/Mmux_B_temp11  (
    .I0(N11583),
    .I1(N11584),
    .S(\EX/ForwardB [0]),
    .O(MemWriteData_ex[19])
  );
  defparam \EX/Mmux_B_temp11_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp11_F  (
    .I0(\Data_id_ex/q[19] ),
    .I1(\Data_ex_mem/q [56]),
    .I2(\EX/ForwardB [1]),
    .O(N11583)
  );
  defparam \EX/Mmux_B_temp11_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp11_G  (
    .I0(\Data_id_ex/q[19] ),
    .I1(RegWriteData_wb[19]),
    .I2(\EX/ForwardB [1]),
    .O(N11584)
  );
  MUXF5 \EX/Mmux_B_temp17  (
    .I0(N11585),
    .I1(N11586),
    .S(\EX/ForwardB [0]),
    .O(MemWriteData_ex[24])
  );
  defparam \EX/Mmux_B_temp17_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp17_F  (
    .I0(\Data_id_ex/q[24] ),
    .I1(\Data_ex_mem/q [61]),
    .I2(\EX/ForwardB [1]),
    .O(N11585)
  );
  defparam \EX/Mmux_B_temp17_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp17_G  (
    .I0(\Data_id_ex/q[24] ),
    .I1(RegWriteData_wb[24]),
    .I2(\EX/ForwardB [1]),
    .O(N11586)
  );
  MUXF5 \EX/Mmux_B_temp13  (
    .I0(N11587),
    .I1(N11588),
    .S(\EX/ForwardB [0]),
    .O(MemWriteData_ex[20])
  );
  defparam \EX/Mmux_B_temp13_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp13_F  (
    .I0(\Data_id_ex/q[20] ),
    .I1(\Data_ex_mem/q [57]),
    .I2(\EX/ForwardB [1]),
    .O(N11587)
  );
  defparam \EX/Mmux_B_temp13_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp13_G  (
    .I0(\Data_id_ex/q[20] ),
    .I1(RegWriteData_wb[20]),
    .I2(\EX/ForwardB [1]),
    .O(N11588)
  );
  MUXF5 \EX/Mmux_B_temp24  (
    .I0(N11589),
    .I1(N11590),
    .S(\EX/ForwardB [0]),
    .O(MemWriteData_ex[30])
  );
  defparam \EX/Mmux_B_temp24_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp24_F  (
    .I0(\Data_id_ex/q[30] ),
    .I1(\Data_ex_mem/q [67]),
    .I2(\EX/ForwardB [1]),
    .O(N11589)
  );
  defparam \EX/Mmux_B_temp24_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp24_G  (
    .I0(\Data_id_ex/q[30] ),
    .I1(RegWriteData_wb[30]),
    .I2(\EX/ForwardB [1]),
    .O(N11590)
  );
  MUXF5 \EX/Mmux_B_temp22  (
    .I0(N11591),
    .I1(N11592),
    .S(\EX/ForwardB [0]),
    .O(MemWriteData_ex[29])
  );
  defparam \EX/Mmux_B_temp22_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp22_F  (
    .I0(\Data_id_ex/q[29] ),
    .I1(\Data_ex_mem/q [66]),
    .I2(\EX/ForwardB [1]),
    .O(N11591)
  );
  defparam \EX/Mmux_B_temp22_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp22_G  (
    .I0(\Data_id_ex/q[29] ),
    .I1(RegWriteData_wb[29]),
    .I2(\EX/ForwardB [1]),
    .O(N11592)
  );
  MUXF5 \EX/Mmux_B_temp4  (
    .I0(N11593),
    .I1(N11594),
    .S(\EX/ForwardB [0]),
    .O(MemWriteData_ex[12])
  );
  defparam \EX/Mmux_B_temp4_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp4_F  (
    .I0(\Data_id_ex/q[12] ),
    .I1(\Data_ex_mem/q [49]),
    .I2(\EX/ForwardB [1]),
    .O(N11593)
  );
  defparam \EX/Mmux_B_temp4_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp4_G  (
    .I0(\Data_id_ex/q[12] ),
    .I1(RegWriteData_wb[12]),
    .I2(\EX/ForwardB [1]),
    .O(N11594)
  );
  MUXF5 \EX/Mmux_B_temp2  (
    .I0(N11595),
    .I1(N11596),
    .S(\EX/ForwardB [0]),
    .O(MemWriteData_ex[10])
  );
  defparam \EX/Mmux_B_temp2_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp2_F  (
    .I0(\Data_id_ex/q[10] ),
    .I1(\Data_ex_mem/q [47]),
    .I2(\EX/ForwardB [1]),
    .O(N11595)
  );
  defparam \EX/Mmux_B_temp2_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp2_G  (
    .I0(\Data_id_ex/q[10] ),
    .I1(RegWriteData_wb[10]),
    .I2(\EX/ForwardB [1]),
    .O(N11596)
  );
  MUXF5 \EX/Mmux_B_temp31  (
    .I0(N11597),
    .I1(N11598),
    .S(\EX/ForwardB [0]),
    .O(MemWriteData_ex[8])
  );
  defparam \EX/Mmux_B_temp31_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp31_F  (
    .I0(\Data_id_ex/q[8] ),
    .I1(\Data_ex_mem/q [45]),
    .I2(\EX/ForwardB [1]),
    .O(N11597)
  );
  defparam \EX/Mmux_B_temp31_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp31_G  (
    .I0(\Data_id_ex/q[8] ),
    .I1(RegWriteData_wb[8]),
    .I2(\EX/ForwardB [1]),
    .O(N11598)
  );
  MUXF5 \EX/Mmux_B_temp32  (
    .I0(N11599),
    .I1(N11600),
    .S(\EX/ForwardB [0]),
    .O(MemWriteData_ex[9])
  );
  defparam \EX/Mmux_B_temp32_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp32_F  (
    .I0(\Data_id_ex/q[9] ),
    .I1(\Data_ex_mem/q [46]),
    .I2(\EX/ForwardB [1]),
    .O(N11599)
  );
  defparam \EX/Mmux_B_temp32_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp32_G  (
    .I0(\Data_id_ex/q[9] ),
    .I1(RegWriteData_wb[9]),
    .I2(\EX/ForwardB [1]),
    .O(N11600)
  );
  MUXF5 \EX/Mmux_B_temp20  (
    .I0(N11601),
    .I1(N11602),
    .S(\EX/ForwardB [0]),
    .O(MemWriteData_ex[27])
  );
  defparam \EX/Mmux_B_temp20_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp20_F  (
    .I0(\Data_id_ex/q[27] ),
    .I1(\Data_ex_mem/q [64]),
    .I2(\EX/ForwardB [1]),
    .O(N11601)
  );
  defparam \EX/Mmux_B_temp20_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp20_G  (
    .I0(\Data_id_ex/q[27] ),
    .I1(RegWriteData_wb[27]),
    .I2(\EX/ForwardB [1]),
    .O(N11602)
  );
  MUXF5 \EX/Mmux_B_temp21  (
    .I0(N11603),
    .I1(N11604),
    .S(\EX/ForwardB [0]),
    .O(MemWriteData_ex[28])
  );
  defparam \EX/Mmux_B_temp21_F .INIT = 8'hCA;
  LUT3 \EX/Mmux_B_temp21_F  (
    .I0(\Data_id_ex/q[28] ),
    .I1(\Data_ex_mem/q [65]),
    .I2(\EX/ForwardB [1]),
    .O(N11603)
  );
  defparam \EX/Mmux_B_temp21_G .INIT = 8'hAC;
  LUT3 \EX/Mmux_B_temp21_G  (
    .I0(\Data_id_ex/q[28] ),
    .I1(RegWriteData_wb[28]),
    .I2(\EX/ForwardB [1]),
    .O(N11604)
  );
  MUXF5 \EX/ALU/result_final<5>112  (
    .I0(N11607),
    .I1(N11608),
    .S(ALU_A_1_OBUF_66),
    .O(\EX/ALU/result_final<5>_map32 )
  );
  defparam \EX/ALU/result_final<5>112_F .INIT = 16'h0E04;
  LUT4 \EX/ALU/result_final<5>112_F  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[5] ),
    .I2(\EX/ALU/N1 ),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[9] ),
    .O(N11607)
  );
  defparam \EX/ALU/result_final<5>112_G .INIT = 16'h0D08;
  LUT4 \EX/ALU/result_final<5>112_G  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[11] ),
    .I2(\EX/ALU/N1 ),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[7] ),
    .O(N11608)
  );
  MUXF5 \EX/ALU_A<20>  (
    .I0(N11615),
    .I1(N11616),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_20_OBUF_47)
  );
  defparam \EX/ALU_A<20>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<20>_F  (
    .I0(\Data_id_ex/q[52] ),
    .I1(\Data_ex_mem/q [57]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11615)
  );
  defparam \EX/ALU_A<20>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<20>_G  (
    .I0(\Data_id_ex/q[52] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[20]),
    .O(N11616)
  );
  MUXF5 \EX/ALU_A<19>  (
    .I0(N11617),
    .I1(N11618),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_19_OBUF_48)
  );
  defparam \EX/ALU_A<19>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<19>_F  (
    .I0(\Data_id_ex/q[51] ),
    .I1(\Data_ex_mem/q [56]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11617)
  );
  defparam \EX/ALU_A<19>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<19>_G  (
    .I0(\Data_id_ex/q[51] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[19]),
    .O(N11618)
  );
  MUXF5 \EX/ALU_A<18>  (
    .I0(N11619),
    .I1(N11620),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_18_OBUF_49)
  );
  defparam \EX/ALU_A<18>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<18>_F  (
    .I0(\Data_id_ex/q[50] ),
    .I1(\Data_ex_mem/q [55]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11619)
  );
  defparam \EX/ALU_A<18>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<18>_G  (
    .I0(\Data_id_ex/q[50] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[18]),
    .O(N11620)
  );
  MUXF5 \EX/ALU_A<17>  (
    .I0(N11621),
    .I1(N11622),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_17_OBUF_50)
  );
  defparam \EX/ALU_A<17>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<17>_F  (
    .I0(\Data_id_ex/q[49] ),
    .I1(\Data_ex_mem/q [54]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11621)
  );
  defparam \EX/ALU_A<17>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<17>_G  (
    .I0(\Data_id_ex/q[49] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[17]),
    .O(N11622)
  );
  MUXF5 \EX/ALU_A<16>  (
    .I0(N11623),
    .I1(N11624),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_16_OBUF_51)
  );
  defparam \EX/ALU_A<16>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<16>_F  (
    .I0(\Data_id_ex/q[48] ),
    .I1(\Data_ex_mem/q [53]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11623)
  );
  defparam \EX/ALU_A<16>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<16>_G  (
    .I0(\Data_id_ex/q[48] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[16]),
    .O(N11624)
  );
  MUXF5 \EX/ALU_A<14>  (
    .I0(N11625),
    .I1(N11626),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_14_OBUF_53)
  );
  defparam \EX/ALU_A<14>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<14>_F  (
    .I0(\Data_id_ex/q[46] ),
    .I1(\Data_ex_mem/q [51]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11625)
  );
  defparam \EX/ALU_A<14>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<14>_G  (
    .I0(\Data_id_ex/q[46] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[14]),
    .O(N11626)
  );
  MUXF5 \EX/ALU_A<9>  (
    .I0(N11627),
    .I1(N11628),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_9_OBUF_58)
  );
  defparam \EX/ALU_A<9>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<9>_F  (
    .I0(\Data_id_ex/q[41] ),
    .I1(\Data_ex_mem/q [46]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11627)
  );
  defparam \EX/ALU_A<9>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<9>_G  (
    .I0(\Data_id_ex/q[41] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[9]),
    .O(N11628)
  );
  MUXF5 \EX/ALU_A<13>  (
    .I0(N11629),
    .I1(N11630),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_13_OBUF_54)
  );
  defparam \EX/ALU_A<13>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<13>_F  (
    .I0(\Data_id_ex/q[45] ),
    .I1(\Data_ex_mem/q [50]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11629)
  );
  defparam \EX/ALU_A<13>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<13>_G  (
    .I0(\Data_id_ex/q[45] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[13]),
    .O(N11630)
  );
  MUXF5 \EX/ALU_A<15>  (
    .I0(N11631),
    .I1(N11632),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_15_OBUF_52)
  );
  defparam \EX/ALU_A<15>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<15>_F  (
    .I0(\Data_id_ex/q[47] ),
    .I1(\Data_ex_mem/q [52]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11631)
  );
  defparam \EX/ALU_A<15>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<15>_G  (
    .I0(\Data_id_ex/q[47] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[15]),
    .O(N11632)
  );
  MUXF5 \EX/ALU_A<25>  (
    .I0(N11633),
    .I1(N11634),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_25_OBUF_42)
  );
  defparam \EX/ALU_A<25>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<25>_F  (
    .I0(\Data_id_ex/q[57] ),
    .I1(\Data_ex_mem/q [62]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11633)
  );
  defparam \EX/ALU_A<25>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<25>_G  (
    .I0(\Data_id_ex/q[57] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[25]),
    .O(N11634)
  );
  MUXF5 \EX/ALU_A<11>  (
    .I0(N11635),
    .I1(N11636),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_11_OBUF_56)
  );
  defparam \EX/ALU_A<11>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<11>_F  (
    .I0(\Data_id_ex/q[43] ),
    .I1(\Data_ex_mem/q [48]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11635)
  );
  defparam \EX/ALU_A<11>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<11>_G  (
    .I0(\Data_id_ex/q[43] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[11]),
    .O(N11636)
  );
  MUXF5 \EX/ALU_A<23>  (
    .I0(N11637),
    .I1(N11638),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_23_OBUF_44)
  );
  defparam \EX/ALU_A<23>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<23>_F  (
    .I0(\Data_id_ex/q[55] ),
    .I1(\Data_ex_mem/q [60]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11637)
  );
  defparam \EX/ALU_A<23>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<23>_G  (
    .I0(\Data_id_ex/q[55] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[23]),
    .O(N11638)
  );
  MUXF5 \EX/ALU_A<12>  (
    .I0(N11639),
    .I1(N11640),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_12_OBUF_55)
  );
  defparam \EX/ALU_A<12>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<12>_F  (
    .I0(\Data_id_ex/q[44] ),
    .I1(\Data_ex_mem/q [49]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11639)
  );
  defparam \EX/ALU_A<12>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<12>_G  (
    .I0(\Data_id_ex/q[44] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[12]),
    .O(N11640)
  );
  MUXF5 \EX/ALU_A<8>  (
    .I0(N11641),
    .I1(N11642),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_8_OBUF_59)
  );
  defparam \EX/ALU_A<8>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<8>_F  (
    .I0(\Data_id_ex/q[40] ),
    .I1(\Data_ex_mem/q [45]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11641)
  );
  defparam \EX/ALU_A<8>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<8>_G  (
    .I0(\Data_id_ex/q[40] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[8]),
    .O(N11642)
  );
  MUXF5 \EX/ALU_A<6>  (
    .I0(N11643),
    .I1(N11644),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_6_OBUF_61)
  );
  defparam \EX/ALU_A<6>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<6>_F  (
    .I0(\Data_id_ex/q[38] ),
    .I1(\Data_ex_mem/q [43]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11643)
  );
  defparam \EX/ALU_A<6>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<6>_G  (
    .I0(\Data_id_ex/q[38] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[6]),
    .O(N11644)
  );
  MUXF5 \EX/ALU_A<30>  (
    .I0(N11645),
    .I1(N11646),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_30_OBUF_37)
  );
  defparam \EX/ALU_A<30>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<30>_F  (
    .I0(\Data_id_ex/q[62] ),
    .I1(\Data_ex_mem/q [67]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11645)
  );
  defparam \EX/ALU_A<30>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<30>_G  (
    .I0(\Data_id_ex/q[62] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[30]),
    .O(N11646)
  );
  MUXF5 \EX/ALU_A<26>  (
    .I0(N11647),
    .I1(N11648),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_26_OBUF_41)
  );
  defparam \EX/ALU_A<26>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<26>_F  (
    .I0(\Data_id_ex/q[58] ),
    .I1(\Data_ex_mem/q [63]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11647)
  );
  defparam \EX/ALU_A<26>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<26>_G  (
    .I0(\Data_id_ex/q[58] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[26]),
    .O(N11648)
  );
  MUXF5 \EX/ALU_A<5>  (
    .I0(N11649),
    .I1(N11650),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_5_OBUF_62)
  );
  defparam \EX/ALU_A<5>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<5>_F  (
    .I0(\Data_id_ex/q[37] ),
    .I1(\Data_ex_mem/q [42]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11649)
  );
  defparam \EX/ALU_A<5>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<5>_G  (
    .I0(\Data_id_ex/q[37] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[5]),
    .O(N11650)
  );
  MUXF5 \EX/ALU_A<10>  (
    .I0(N11651),
    .I1(N11652),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_10_OBUF_57)
  );
  defparam \EX/ALU_A<10>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<10>_F  (
    .I0(\Data_id_ex/q[42] ),
    .I1(\Data_ex_mem/q [47]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11651)
  );
  defparam \EX/ALU_A<10>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<10>_G  (
    .I0(\Data_id_ex/q[42] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[10]),
    .O(N11652)
  );
  MUXF5 \EX/ALU_A<28>  (
    .I0(N11653),
    .I1(N11654),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_28_OBUF_39)
  );
  defparam \EX/ALU_A<28>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<28>_F  (
    .I0(\Data_id_ex/q[60] ),
    .I1(\Data_ex_mem/q [65]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11653)
  );
  defparam \EX/ALU_A<28>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<28>_G  (
    .I0(\Data_id_ex/q[60] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[28]),
    .O(N11654)
  );
  MUXF5 \EX/ALU_A<7>  (
    .I0(N11655),
    .I1(N11656),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_7_OBUF_60)
  );
  defparam \EX/ALU_A<7>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<7>_F  (
    .I0(\Data_id_ex/q[39] ),
    .I1(\Data_ex_mem/q [44]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11655)
  );
  defparam \EX/ALU_A<7>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<7>_G  (
    .I0(\Data_id_ex/q[39] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[7]),
    .O(N11656)
  );
  MUXF5 \EX/ALU_A<27>  (
    .I0(N11657),
    .I1(N11658),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_27_OBUF_40)
  );
  defparam \EX/ALU_A<27>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<27>_F  (
    .I0(\Data_id_ex/q[59] ),
    .I1(\Data_ex_mem/q [64]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11657)
  );
  defparam \EX/ALU_A<27>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<27>_G  (
    .I0(\Data_id_ex/q[59] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[27]),
    .O(N11658)
  );
  MUXF5 \EX/ALU_A<31>  (
    .I0(N11659),
    .I1(N11660),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_31_OBUF_36)
  );
  defparam \EX/ALU_A<31>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<31>_F  (
    .I0(\Data_id_ex/q[63] ),
    .I1(\Data_ex_mem/q [68]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11659)
  );
  defparam \EX/ALU_A<31>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<31>_G  (
    .I0(\Data_id_ex/q[63] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[31]),
    .O(N11660)
  );
  MUXF5 \EX/ALU_A<29>  (
    .I0(N11661),
    .I1(N11662),
    .S(\EX/ForwardA [0]),
    .O(ALU_A_29_OBUF_38)
  );
  defparam \EX/ALU_A<29>_F .INIT = 16'h00CA;
  LUT4 \EX/ALU_A<29>_F  (
    .I0(\Data_id_ex/q[61] ),
    .I1(\Data_ex_mem/q [66]),
    .I2(\EX/ForwardA [1]),
    .I3(\EX_id_ex/q [2]),
    .O(N11661)
  );
  defparam \EX/ALU_A<29>_G .INIT = 16'h2320;
  LUT4 \EX/ALU_A<29>_G  (
    .I0(\Data_id_ex/q[61] ),
    .I1(\EX_id_ex/q [2]),
    .I2(\EX/ForwardA [1]),
    .I3(RegWriteData_wb[29]),
    .O(N11662)
  );
  MUXF5 \EX/ALU/result_final<22>103  (
    .I0(N11663),
    .I1(N11664),
    .S(ALU_A_4_OBUF_63),
    .O(\EX/ALU/result_final<22>_map28 )
  );
  defparam \EX/ALU/result_final<22>103_F .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<22>103_F  (
    .I0(ALU_A_2_OBUF_65),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[18] ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[10] ),
    .O(N11663)
  );
  defparam \EX/ALU/result_final<22>103_G .INIT = 16'h5410;
  LUT4 \EX/ALU/result_final<22>103_G  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[6] ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[2] ),
    .O(N11664)
  );
  MUXF5 \EX/ALU/result_final<5>134  (
    .I0(N11665),
    .I1(N11666),
    .S(ALU_A_4_OBUF_63),
    .O(\EX/ALU/result_final<5>_map37 )
  );
  defparam \EX/ALU/result_final<5>134_F .INIT = 8'hB1;
  LUT3 \EX/ALU/result_final<5>134_F  (
    .I0(ALU_A_2_OBUF_65),
    .I1(N1164),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[17] ),
    .O(N11665)
  );
  defparam \EX/ALU/result_final<5>134_G .INIT = 16'hFE10;
  LUT4 \EX/ALU/result_final<5>134_G  (
    .I0(ALU_A_1_OBUF_66),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[29] ),
    .I3(ALU_B_31_OBUF_68),
    .O(N11666)
  );
  defparam \EX/ALU_A<3>59_1 .INIT = 16'hDDD8;
  LUT4 \EX/ALU_A<3>59_1  (
    .I0(\EX_id_ex/q [2]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU_A<3>_map11 ),
    .I3(N11770),
    .O(\EX/ALU_A<3>59_175 )
  );
  BUFGP clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV \IF/pcAdd4/adder_0/Mxor_s_Result<2>1_INV_0  (
    .I(\IF/PC [2]),
    .O(NextPC_if[2])
  );
  MUXF5 \EX/ALU/Mshift_result_final_shift0003_Sh<2>  (
    .I0(N11671),
    .I1(N11672),
    .S(ALU_B_2_OBUF_97),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[2] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<2>_F .INIT = 16'h6240;
  LUT4 \EX/ALU/Mshift_result_final_shift0003_Sh<2>_F  (
    .I0(ALU_A_1_OBUF_66),
    .I1(ALU_A_0_OBUF_67),
    .I2(ALU_B_1_OBUF_98),
    .I3(ALU_B_0_OBUF_99),
    .O(N11671)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<2>_G .INIT = 16'h44F5;
  LUT4 \EX/ALU/Mshift_result_final_shift0003_Sh<2>_G  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_0_OBUF_99),
    .I2(ALU_B_1_OBUF_98),
    .I3(ALU_A_1_OBUF_66),
    .O(N11672)
  );
  MUXF5 \EX/ALU/result_final<7>175_SW0  (
    .I0(N11673),
    .I1(N11674),
    .S(ALU_A_2_OBUF_65),
    .O(N10513)
  );
  defparam \EX/ALU/result_final<7>175_SW0_F .INIT = 16'h4051;
  LUT4 \EX/ALU/result_final<7>175_SW0_F  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[15] ),
    .I3(N571),
    .O(N11673)
  );
  defparam \EX/ALU/result_final<7>175_SW0_G .INIT = 16'h5410;
  LUT4 \EX/ALU/result_final<7>175_SW0_G  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[11] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[19] ),
    .O(N11674)
  );
  MUXF5 \EX/ALU/result_final<6>177_SW0  (
    .I0(N11675),
    .I1(N11676),
    .S(ALU_A_2_OBUF_65),
    .O(N10515)
  );
  defparam \EX/ALU/result_final<6>177_SW0_F .INIT = 16'h4051;
  LUT4 \EX/ALU/result_final<6>177_SW0_F  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[14] ),
    .I3(N573),
    .O(N11675)
  );
  defparam \EX/ALU/result_final<6>177_SW0_G .INIT = 16'h5410;
  LUT4 \EX/ALU/result_final<6>177_SW0_G  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[10] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[18] ),
    .O(N11676)
  );
  MUXF5 \EX/ALU/result_final<28>127  (
    .I0(N11677),
    .I1(N11678),
    .S(ALU_A_0_OBUF_67),
    .O(\EX/ALU/result_final<28>_map31 )
  );
  defparam \EX/ALU/result_final<28>127_F .INIT = 16'hF888;
  LUT4 \EX/ALU/result_final<28>127_F  (
    .I0(\EX/ALU/Mshift_result_final_shift0003_Sh<20>_map8 ),
    .I1(\EX/ALU/N94 ),
    .I2(\EX/ALU/N148 ),
    .I3(\EX/ALU/result_final<28>_map26 ),
    .O(N11677)
  );
  defparam \EX/ALU/result_final<28>127_G .INIT = 16'hF888;
  LUT4 \EX/ALU/result_final<28>127_G  (
    .I0(\EX/ALU/Mshift_result_final_shift0003_Sh<19>_map8 ),
    .I1(\EX/ALU/N94 ),
    .I2(\EX/ALU/N148 ),
    .I3(\EX/ALU/N26 ),
    .O(N11678)
  );
  MUXF5 \EX/ALU/result_final<29>150  (
    .I0(N11679),
    .I1(N11680),
    .S(ALU_A_0_OBUF_67),
    .O(\EX/ALU/result_final<29>_map36 )
  );
  defparam \EX/ALU/result_final<29>150_F .INIT = 16'hF888;
  LUT4 \EX/ALU/result_final<29>150_F  (
    .I0(\EX/ALU/Mshift_result_final_shift0003_Sh<21>_map8 ),
    .I1(\EX/ALU/N94 ),
    .I2(\EX/ALU/N148 ),
    .I3(\EX/ALU/N211 ),
    .O(N11679)
  );
  defparam \EX/ALU/result_final<29>150_G .INIT = 16'hF888;
  LUT4 \EX/ALU/result_final<29>150_G  (
    .I0(\EX/ALU/Mshift_result_final_shift0003_Sh<20>_map8 ),
    .I1(\EX/ALU/N94 ),
    .I2(\EX/ALU/N148 ),
    .I3(\EX/ALU/result_final<28>_map26 ),
    .O(N11680)
  );
  MUXF5 \EX/ALU/result_final<30>151  (
    .I0(N11681),
    .I1(N11682),
    .S(ALU_A_0_OBUF_67),
    .O(\EX/ALU/result_final<30>_map36 )
  );
  defparam \EX/ALU/result_final<30>151_F .INIT = 16'hF888;
  LUT4 \EX/ALU/result_final<30>151_F  (
    .I0(\EX/ALU/Mshift_result_final_shift0003_Sh<22>_map8 ),
    .I1(\EX/ALU/N94 ),
    .I2(\EX/ALU/N148 ),
    .I3(\EX/ALU/result_final<30>_map31 ),
    .O(N11681)
  );
  defparam \EX/ALU/result_final<30>151_G .INIT = 16'hF888;
  LUT4 \EX/ALU/result_final<30>151_G  (
    .I0(\EX/ALU/Mshift_result_final_shift0003_Sh<21>_map8 ),
    .I1(\EX/ALU/N94 ),
    .I2(\EX/ALU/N148 ),
    .I3(\EX/ALU/N211 ),
    .O(N11682)
  );
  MUXF5 \EX/ALU/result_final<19>145  (
    .I0(N11683),
    .I1(N11684),
    .S(ALU_A_3_OBUF_64),
    .O(\EX/ALU/result_final<19>_map38 )
  );
  defparam \EX/ALU/result_final<19>145_F .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<19>145_F  (
    .I0(\EX/ALU/N82 ),
    .I1(ALU_A_0_OBUF_67),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<15>_map8 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh<14>_map8 ),
    .O(N11683)
  );
  defparam \EX/ALU/result_final<19>145_G .INIT = 16'hA820;
  LUT4 \EX/ALU/result_final<19>145_G  (
    .I0(\EX/ALU/N82 ),
    .I1(ALU_A_0_OBUF_67),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<7>_map8 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh<6>_map8 ),
    .O(N11684)
  );
  defparam \ID/Decode/I_type1 .INIT = 16'h2AAA;
  LUT4 \ID/Decode/I_type1  (
    .I0(\if_id/q[29] ),
    .I1(\if_id/q[27] ),
    .I2(\if_id/q[26] ),
    .I3(\if_id/q[28] ),
    .O(N11686)
  );
  MUXF5 \ID/Decode/I_type_f5  (
    .I0(N11686),
    .I1(Instruction_id_20_OBUF_3),
    .S(\if_id/q[31] ),
    .O(\ID/Decode/I_type )
  );
  defparam \IF/pcAdd4/mux_1/out<3>21 .INIT = 16'h7FFF;
  LUT4 \IF/pcAdd4/mux_1/out<3>21  (
    .I0(\IF/PC [6]),
    .I1(\IF/PC [5]),
    .I2(\IF/PC [4]),
    .I3(\IF/pcAdd4/co_0 ),
    .O(N11688)
  );
  defparam \IF/pcAdd4/mux_1/out<3>22 .INIT = 16'h8000;
  LUT4 \IF/pcAdd4/mux_1/out<3>22  (
    .I0(\IF/PC [6]),
    .I1(\IF/PC [5]),
    .I2(\IF/PC [4]),
    .I3(\IF/pcAdd4/co_0 ),
    .O(N11689)
  );
  MUXF5 \IF/pcAdd4/mux_1/out<3>2_f5  (
    .I0(N11689),
    .I1(N11688),
    .S(\IF/PC [7]),
    .O(NextPC_if[7])
  );
  defparam \IF/pcAdd4/mux_2/out<3>21 .INIT = 16'h6AAA;
  LUT4 \IF/pcAdd4/mux_2/out<3>21  (
    .I0(\IF/PC [11]),
    .I1(\IF/PC [10]),
    .I2(\IF/PC [8]),
    .I3(\IF/pcAdd4/co_1 ),
    .O(N11690)
  );
  MUXF5 \IF/pcAdd4/mux_2/out<3>2_f5  (
    .I0(\IF/PC [11]),
    .I1(N11690),
    .S(\IF/PC [9]),
    .O(NextPC_if[11])
  );
  defparam \IF/pcAdd4/mux_3/out<3>21 .INIT = 16'h7FFF;
  LUT4 \IF/pcAdd4/mux_3/out<3>21  (
    .I0(\IF/PC [14]),
    .I1(\IF/PC [13]),
    .I2(\IF/PC [12]),
    .I3(\IF/pcAdd4/co_2 ),
    .O(N11691)
  );
  defparam \IF/pcAdd4/mux_3/out<3>22 .INIT = 16'h8000;
  LUT4 \IF/pcAdd4/mux_3/out<3>22  (
    .I0(\IF/PC [14]),
    .I1(\IF/PC [13]),
    .I2(\IF/PC [12]),
    .I3(\IF/pcAdd4/co_2 ),
    .O(N11692)
  );
  MUXF5 \IF/pcAdd4/mux_3/out<3>2_f5  (
    .I0(N11692),
    .I1(N11691),
    .S(\IF/PC [15]),
    .O(NextPC_if[15])
  );
  defparam \IF/pcAdd4/mux_4/out<3>21 .INIT = 16'h7FFF;
  LUT4 \IF/pcAdd4/mux_4/out<3>21  (
    .I0(\IF/PC [18]),
    .I1(\IF/PC [17]),
    .I2(\IF/PC [16]),
    .I3(\IF/pcAdd4/co_3 ),
    .O(N11694)
  );
  defparam \IF/pcAdd4/mux_4/out<3>22 .INIT = 16'h8000;
  LUT4 \IF/pcAdd4/mux_4/out<3>22  (
    .I0(\IF/PC [18]),
    .I1(\IF/PC [17]),
    .I2(\IF/PC [16]),
    .I3(\IF/pcAdd4/co_3 ),
    .O(N11695)
  );
  MUXF5 \IF/pcAdd4/mux_4/out<3>2_f5  (
    .I0(N11695),
    .I1(N11694),
    .S(\IF/PC [19]),
    .O(NextPC_if[19])
  );
  defparam \IF/pcAdd4/mux_6/out<2>21 .INIT = 16'hDFFF;
  LUT4 \IF/pcAdd4/mux_6/out<2>21  (
    .I0(\IF/PC [25]),
    .I1(\IF/pcAdd4/N23 ),
    .I2(\IF/PC [24]),
    .I3(\IF/PC [23]),
    .O(N11698)
  );
  defparam \IF/pcAdd4/mux_6/out<2>22 .INIT = 16'h2000;
  LUT4 \IF/pcAdd4/mux_6/out<2>22  (
    .I0(\IF/PC [24]),
    .I1(\IF/pcAdd4/N23 ),
    .I2(\IF/PC [25]),
    .I3(\IF/PC [23]),
    .O(N11699)
  );
  MUXF5 \IF/pcAdd4/mux_6/out<2>2_f5  (
    .I0(N11699),
    .I1(N11698),
    .S(\IF/PC [26]),
    .O(NextPC_if[26])
  );
  defparam \IF/PC_in<19>74_SW01 .INIT = 16'hA6AA;
  LUT4 \IF/PC_in<19>74_SW01  (
    .I0(\if_id/q[51] ),
    .I1(\if_id/q[50] ),
    .I2(\if_id/q[15] ),
    .I3(\if_id/q[49] ),
    .O(N11700)
  );
  defparam \IF/PC_in<19>74_SW02 .INIT = 16'hCC9C;
  LUT4 \IF/PC_in<19>74_SW02  (
    .I0(\if_id/q[50] ),
    .I1(\if_id/q[51] ),
    .I2(\if_id/q[15] ),
    .I3(\if_id/q[49] ),
    .O(N11701)
  );
  MUXF5 \IF/PC_in<19>74_SW0_f5  (
    .I0(N11701),
    .I1(N11700),
    .S(N7576),
    .O(N10537)
  );
  defparam \IF/PC_in<9>80_SW11 .INIT = 16'hC993;
  LUT4 \IF/PC_in<9>80_SW11  (
    .I0(\if_id/q[40] ),
    .I1(\ID/addOffset/adder_20/s_and0000 [1]),
    .I2(\ID/addOffset/co_1 ),
    .I3(\if_id/q[6] ),
    .O(N11703)
  );
  MUXF5 \IF/PC_in<9>80_SW1_f5  (
    .I0(N11703),
    .I1(N0),
    .S(J),
    .O(N10734)
  );
  defparam \IF/PC_in_cmp_eq00001_SW101 .INIT = 16'h0180;
  LUT4 \IF/PC_in_cmp_eq00001_SW101  (
    .I0(\ID/addOffset/co_5 ),
    .I1(\if_id/q[57] ),
    .I2(\if_id/q[56] ),
    .I3(\if_id/q[15] ),
    .O(N11705)
  );
  defparam \IF/PC_in_cmp_eq00001_SW102 .INIT = 16'hDFFB;
  LUT4 \IF/PC_in_cmp_eq00001_SW102  (
    .I0(\ID/addOffset/co_5 ),
    .I1(\if_id/q[15] ),
    .I2(\if_id/q[57] ),
    .I3(\if_id/q[56] ),
    .O(N11706)
  );
  MUXF5 \IF/PC_in_cmp_eq00001_SW10_f5  (
    .I0(N11706),
    .I1(N11705),
    .S(\if_id/q[58] ),
    .O(N10890)
  );
  defparam \IF/PC_in_cmp_eq00001_SW111 .INIT = 16'h2D69;
  LUT4 \IF/PC_in_cmp_eq00001_SW111  (
    .I0(\ID/addOffset/co_4 ),
    .I1(\if_id/q[15] ),
    .I2(\if_id/q[55] ),
    .I3(N10317),
    .O(N11707)
  );
  defparam \IF/PC_in_cmp_eq00001_SW112 .INIT = 16'h3633;
  LUT4 \IF/PC_in_cmp_eq00001_SW112  (
    .I0(\ID/addOffset/co_4 ),
    .I1(\if_id/q[55] ),
    .I2(N10317),
    .I3(\if_id/q[15] ),
    .O(N11708)
  );
  MUXF5 \IF/PC_in_cmp_eq00001_SW11_f5  (
    .I0(N11708),
    .I1(N11707),
    .S(N10318),
    .O(N10892)
  );
  defparam \IF/InstructionROM/dout<0>1 .INIT = 16'h0002;
  LUT4 \IF/InstructionROM/dout<0>1  (
    .I0(\IF/PC [2]),
    .I1(\IF/PC [6]),
    .I2(\IF/PC [7]),
    .I3(\IF/PC [4]),
    .O(N11712)
  );
  defparam \IF/InstructionROM/dout<0>2 .INIT = 16'h0001;
  LUT4 \IF/InstructionROM/dout<0>2  (
    .I0(\IF/PC [6]),
    .I1(\IF/PC [7]),
    .I2(\IF/PC [2]),
    .I3(\IF/PC [3]),
    .O(N11713)
  );
  MUXF5 \IF/InstructionROM/dout<0>_f5  (
    .I0(N11713),
    .I1(N11712),
    .S(\IF/PC [5]),
    .O(\Instruction_if[0] )
  );
  defparam \ID/Decode/ALUtemp<3>_SW0 .INIT = 4'h4;
  LUT2_L \ID/Decode/ALUtemp<3>_SW0  (
    .I0(\if_id/q[27] ),
    .I1(\if_id/q[26] ),
    .LO(N184)
  );
  defparam \EX/ALU/result_final_cmp_eq000411 .INIT = 8'h10;
  LUT3_D \EX/ALU/result_final_cmp_eq000411  (
    .I0(\EX_id_ex/q [6]),
    .I1(\EX_id_ex/q [7]),
    .I2(\EX_id_ex/q [5]),
    .LO(N11714),
    .O(\EX/ALU/N72 )
  );
  defparam \EX/ALU/result_final_cmp_eq00021 .INIT = 8'h20;
  LUT3_D \EX/ALU/result_final_cmp_eq00021  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(\EX/ALU/N73 ),
    .LO(N11715),
    .O(\EX/ALU/result_final_cmp_eq0002 )
  );
  defparam \EX/ALU/result_final_cmp_eq00011 .INIT = 8'h20;
  LUT3_D \EX/ALU/result_final_cmp_eq00011  (
    .I0(\EX_id_ex/q [3]),
    .I1(\EX_id_ex/q [4]),
    .I2(\EX/ALU/N73 ),
    .LO(N11716),
    .O(\EX/ALU/result_final_cmp_eq0001 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Result<0>31 .INIT = 4'h4;
  LUT2_D \EX/ALU/Mshift_result_final_shift0004_Result<0>31  (
    .I0(\EX/ALU_A<4>59_164 ),
    .I1(\EX/ALU_A<2>59_163 ),
    .LO(N11717),
    .O(\EX/ALU/N82 )
  );
  defparam \ID/Decode/ALUtemp<1>72 .INIT = 4'h4;
  LUT2_L \ID/Decode/ALUtemp<1>72  (
    .I0(\if_id/q[3] ),
    .I1(\if_id/q[2] ),
    .LO(\ID/Decode/ALUtemp<1>_map22 )
  );
  defparam \ID/Decode/ALUtemp<1>96 .INIT = 16'hF800;
  LUT4_L \ID/Decode/ALUtemp<1>96  (
    .I0(\if_id/q[1] ),
    .I1(\ID/Decode/ALUtemp<1>_map16 ),
    .I2(\ID/Decode/ALUtemp<1>_map23 ),
    .I3(\ID/N11 ),
    .LO(\ID/Decode/ALUtemp<1>_map25 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Result<0>31 .INIT = 4'h4;
  LUT2_D \EX/ALU/Mshift_result_final_shift0005_Result<0>31  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_4_OBUF_63),
    .LO(N11718),
    .O(\EX/ALU/result_final<5>_map25 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<40>11 .INIT = 4'h1;
  LUT2_D \EX/ALU/Mshift_result_final_shift0003_Sh<40>11  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_2_OBUF_65),
    .LO(N11719),
    .O(\EX/ALU/N79 )
  );
  defparam \EX/ALU/adder/adder_70/s_and0000<1>1 .INIT = 4'h6;
  LUT2_D \EX/ALU/adder/adder_70/s_and0000<1>1  (
    .I0(ALU_A_29_OBUF_38),
    .I1(\EX/ALU/_xor0000 [29]),
    .LO(N11720),
    .O(\EX/ALU/adder/adder_70/s_and0000 [1])
  );
  defparam \EX/ALU/adder/adder_60/s_and0000<1>1 .INIT = 4'h6;
  LUT2_D \EX/ALU/adder/adder_60/s_and0000<1>1  (
    .I0(ALU_A_25_OBUF_42),
    .I1(\EX/ALU/_xor0000 [25]),
    .LO(N11721),
    .O(\EX/ALU/adder/adder_60/s_and0000 [1])
  );
  defparam \EX/ALU/adder/adder_20/s_and0000<1>1 .INIT = 4'h6;
  LUT2_L \EX/ALU/adder/adder_20/s_and0000<1>1  (
    .I0(ALU_A_9_OBUF_58),
    .I1(\EX/ALU/_xor0000 [9]),
    .LO(\EX/ALU/adder/adder_20/s_and0000 [1])
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Result<0>41 .INIT = 4'h4;
  LUT2_D \EX/ALU/Mshift_result_final_shift0005_Result<0>41  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_3_OBUF_64),
    .LO(N11722),
    .O(\EX/ALU/N90 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<0>1 .INIT = 8'h02;
  LUT3_D \EX/ALU/Mshift_result_final_shift0003_Sh<0>1  (
    .I0(ALU_B_0_OBUF_99),
    .I1(ALU_A_0_OBUF_67),
    .I2(ALU_A_1_OBUF_66),
    .LO(N11723),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[0] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<1>1 .INIT = 16'h00AC;
  LUT4_D \EX/ALU/Mshift_result_final_shift0003_Sh<1>1  (
    .I0(ALU_B_0_OBUF_99),
    .I1(ALU_B_1_OBUF_98),
    .I2(ALU_A_0_OBUF_67),
    .I3(ALU_A_1_OBUF_66),
    .LO(N11724),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[1] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<62>_SW0 .INIT = 4'hE;
  LUT2_L \EX/ALU/Mshift_result_final_shift0005_Sh<62>_SW0  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU_A<2>59_163 ),
    .LO(N467)
  );
  defparam \ID/Decode/ALUtemp<0>82 .INIT = 16'hF080;
  LUT4_L \ID/Decode/ALUtemp<0>82  (
    .I0(\if_id/q[1] ),
    .I1(\ID/Decode/ALUtemp<0>_map12 ),
    .I2(\ID/Decode/ALUtemp<0>_map24 ),
    .I3(\ID/Decode/ALUtemp<0>_map18 ),
    .LO(\ID/Decode/ALUtemp<0>_map25 )
  );
  defparam \EX/ALU/result_final<0>81 .INIT = 16'h0200;
  LUT4_D \EX/ALU/result_final<0>81  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(\EX/ALU/result_final_or0002 ),
    .I3(\EX/ALU/N144 ),
    .LO(N11725),
    .O(\EX/ALU/N88 )
  );
  defparam \EX/ALU/result_final<0>71 .INIT = 16'h0400;
  LUT4_D \EX/ALU/result_final<0>71  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(\EX/ALU/result_final_or0002 ),
    .I3(\EX/ALU/N144 ),
    .LO(N11726),
    .O(\EX/ALU/N83 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Result<2>1_SW0 .INIT = 8'h27;
  LUT3_D \EX/ALU/Mshift_result_final_shift0004_Result<2>1_SW0  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[8] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[6] ),
    .LO(N11727),
    .O(N573)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<21>31 .INIT = 8'hD8;
  LUT3_D \EX/ALU/Mshift_result_final_shift0003_Sh<21>31  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh<20>_map8 ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<21>_map8 ),
    .LO(N11728),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[21] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<20>7 .INIT = 8'hCA;
  LUT3_D \EX/ALU/Mshift_result_final_shift0003_Sh<20>7  (
    .I0(ALU_B_19_OBUF_80),
    .I1(ALU_B_17_OBUF_82),
    .I2(ALU_A_1_OBUF_66),
    .LO(N11729),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh<19>_map8 )
  );
  defparam \ID/MultiRegisters/RsData_cmp_eq00001 .INIT = 8'h01;
  LUT3_D \ID/MultiRegisters/RsData_cmp_eq00001  (
    .I0(\if_id/q[24] ),
    .I1(\if_id/q[22] ),
    .I2(\if_id/q[21] ),
    .LO(N11730),
    .O(\ID/MultiRegisters/RsData_cmp_eq0000 )
  );
  defparam \ID/MultiRegisters/RtData_cmp_eq00001 .INIT = 16'h0001;
  LUT4_D \ID/MultiRegisters/RtData_cmp_eq00001  (
    .I0(\if_id/q[17] ),
    .I1(\if_id/q[16] ),
    .I2(\if_id/q[19] ),
    .I3(\if_id/q[18] ),
    .LO(N11731),
    .O(\ID/MultiRegisters/RtData_cmp_eq0000 )
  );
  defparam \EX/ALU/result_final_shift0002<31>1 .INIT = 8'hD8;
  LUT3_D \EX/ALU/result_final_shift0002<31>1  (
    .I0(\EX/ALU/result_final_or0002 ),
    .I1(\EX/ALU/result_final_shift0002 [31]),
    .I2(\EX/ALU_B<31>1_140 ),
    .LO(N11732),
    .O(\EX/ALU/result_final_shift0002 [31])
  );
  defparam \EX/ALU/result_final<1>31 .INIT = 8'h60;
  LUT3_L \EX/ALU/result_final<1>31  (
    .I0(ALU_B_1_OBUF_98),
    .I1(ALU_A_1_OBUF_66),
    .I2(\EX/ALU/N20 ),
    .LO(\EX/ALU/result_final<1>_map11 )
  );
  defparam \EX/ALU/result_final<1>278 .INIT = 16'hC8C0;
  LUT4_L \EX/ALU/result_final<1>278  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/N83 ),
    .I2(\EX/ALU/result_final<1>_map62 ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[49] ),
    .LO(\EX/ALU/result_final<1>_map65 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<20>1 .INIT = 8'hD8;
  LUT3_D \EX/ALU/Mshift_result_final_shift0005_Sh<20>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_21_OBUF_78),
    .I2(ALU_B_20_OBUF_79),
    .LO(N11733),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[20] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<18>1 .INIT = 8'hD8;
  LUT3_D \EX/ALU/Mshift_result_final_shift0005_Sh<18>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_19_OBUF_80),
    .I2(ALU_B_18_OBUF_81),
    .LO(N11734),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[18] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<15>1 .INIT = 8'hD8;
  LUT3_D \EX/ALU/Mshift_result_final_shift0004_Sh<15>1  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[17] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[15] ),
    .LO(N11735),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[15] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<14>1 .INIT = 8'hE4;
  LUT3_D \EX/ALU/Mshift_result_final_shift0004_Sh<14>1  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[14] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[16] ),
    .LO(N11736),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[14] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<61>1 .INIT = 16'hFE10;
  LUT4_D \EX/ALU/Mshift_result_final_shift0005_Sh<61>1  (
    .I0(ALU_A_1_OBUF_66),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[29] ),
    .I3(ALU_B_31_OBUF_68),
    .LO(N11737),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[61] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<60>1 .INIT = 8'hD8;
  LUT3_D \EX/ALU/Mshift_result_final_shift0005_Sh<60>1  (
    .I0(ALU_A_2_OBUF_65),
    .I1(ALU_B_31_OBUF_68),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[28] ),
    .LO(N11738),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[60] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<56>1 .INIT = 8'hE4;
  LUT3_D \EX/ALU/Mshift_result_final_shift0005_Sh<56>1  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[24] ),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[28] ),
    .LO(N11739),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[56] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<55>1 .INIT = 8'hD8;
  LUT3_D \EX/ALU/Mshift_result_final_shift0005_Sh<55>1  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[27] ),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[23] ),
    .LO(N11740),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[55] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<59>1 .INIT = 16'h5410;
  LUT4_L \EX/ALU/Mshift_result_final_shift0004_Sh<59>1  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[27] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[31] ),
    .LO(\EX/ALU/Mshift_result_final_shift0004_Sh[59] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<58>1 .INIT = 16'h5410;
  LUT4_D \EX/ALU/Mshift_result_final_shift0004_Sh<58>1  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[26] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[30] ),
    .LO(N11741),
    .O(\EX/ALU/Mshift_result_final_shift0004_Sh[58] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Sh<56>1 .INIT = 16'h5410;
  LUT4_L \EX/ALU/Mshift_result_final_shift0004_Sh<56>1  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[24] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[28] ),
    .LO(\EX/ALU/Mshift_result_final_shift0004_Sh[56] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<39>1 .INIT = 16'h5410;
  LUT4_L \EX/ALU/Mshift_result_final_shift0003_Sh<39>1  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[7] ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[3] ),
    .LO(\EX/ALU/Mshift_result_final_shift0003_Sh[39] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<38>1 .INIT = 16'h5410;
  LUT4_L \EX/ALU/Mshift_result_final_shift0003_Sh<38>1  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[6] ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[2] ),
    .LO(\EX/ALU/Mshift_result_final_shift0003_Sh[38] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<44>_SW0 .INIT = 8'hE4;
  LUT3_D \EX/ALU/Mshift_result_final_shift0005_Sh<44>_SW0  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[12] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[14] ),
    .LO(N11742),
    .O(N1154)
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<44> .INIT = 8'hE4;
  LUT3_D \EX/ALU/Mshift_result_final_shift0005_Sh<44>  (
    .I0(ALU_A_2_OBUF_65),
    .I1(N1154),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[16] ),
    .LO(N11743),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[44] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<42> .INIT = 8'hE4;
  LUT3_D \EX/ALU/Mshift_result_final_shift0005_Sh<42>  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[10] ),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[14] ),
    .LO(N11744),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[42] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0004_Result<13>1_SW0 .INIT = 8'h1B;
  LUT3_D \EX/ALU/Mshift_result_final_shift0004_Result<13>1_SW0  (
    .I0(ALU_A_1_OBUF_66),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[13] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[15] ),
    .LO(N11745),
    .O(N1164)
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<58>29 .INIT = 8'hD8;
  LUT3_D \EX/ALU/Mshift_result_final_shift0005_Sh<58>29  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh<58>_map6 ),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[26] ),
    .LO(N11746),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[58] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<5>31 .INIT = 8'hD8;
  LUT3_D \EX/ALU/Mshift_result_final_shift0003_Sh<5>31  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh<4>_map8 ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<5>_map8 ),
    .LO(N11747),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[5] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<4>7 .INIT = 8'hAC;
  LUT3_D \EX/ALU/Mshift_result_final_shift0003_Sh<4>7  (
    .I0(ALU_B_1_OBUF_98),
    .I1(ALU_B_3_OBUF_96),
    .I2(ALU_A_1_OBUF_66),
    .LO(N11748),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh<3>_map8 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<17>31 .INIT = 8'hE4;
  LUT3_D \EX/ALU/Mshift_result_final_shift0003_Sh<17>31  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh<17>_map8 ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<16>_map8 ),
    .LO(N11749),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[17] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<16>7 .INIT = 8'hD8;
  LUT3_D \EX/ALU/Mshift_result_final_shift0003_Sh<16>7  (
    .I0(\EX/ALU_A<1>59_155 ),
    .I1(ALU_B_13_OBUF_86),
    .I2(ALU_B_15_OBUF_84),
    .LO(N11750),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh<15>_map8 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<16>31 .INIT = 8'hD8;
  LUT3_D \EX/ALU/Mshift_result_final_shift0003_Sh<16>31  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh<15>_map8 ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<16>_map8 ),
    .LO(N11751),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[16] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<13>7 .INIT = 8'hAC;
  LUT3_D \EX/ALU/Mshift_result_final_shift0003_Sh<13>7  (
    .I0(ALU_B_10_OBUF_89),
    .I1(ALU_B_12_OBUF_87),
    .I2(ALU_A_1_OBUF_66),
    .LO(N11752),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh<12>_map8 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<12>31 .INIT = 8'hD8;
  LUT3_D \EX/ALU/Mshift_result_final_shift0003_Sh<12>31  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh<11>_map8 ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<12>_map8 ),
    .LO(N11753),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[12] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<11>7 .INIT = 8'hCA;
  LUT3_D \EX/ALU/Mshift_result_final_shift0003_Sh<11>7  (
    .I0(ALU_B_10_OBUF_89),
    .I1(ALU_B_8_OBUF_91),
    .I2(ALU_A_1_OBUF_66),
    .LO(N11754),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh<10>_map8 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Sh<11>31 .INIT = 8'hE4;
  LUT3_D \EX/ALU/Mshift_result_final_shift0003_Sh<11>31  (
    .I0(ALU_A_0_OBUF_67),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh<11>_map8 ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh<10>_map8 ),
    .LO(N11755),
    .O(\EX/ALU/Mshift_result_final_shift0003_Sh[11] )
  );
  defparam \ID/Decode/ALUtemp<2>19 .INIT = 8'h2B;
  LUT3_L \ID/Decode/ALUtemp<2>19  (
    .I0(\if_id/q[0] ),
    .I1(\if_id/q[2] ),
    .I2(\if_id/q[3] ),
    .LO(\ID/Decode/ALUtemp<2>_map9 )
  );
  defparam \ID/Decode/ALUtemp<2>72 .INIT = 4'h4;
  LUT2_L \ID/Decode/ALUtemp<2>72  (
    .I0(\if_id/q[31] ),
    .I1(\if_id/q[28] ),
    .LO(\ID/Decode/ALUtemp<2>_map22 )
  );
  defparam \EX/ALU/result_final<2>159 .INIT = 16'hEAC0;
  LUT4_L \EX/ALU/result_final<2>159  (
    .I0(\EX/ALU/Mshift_result_final_shift0005_Sh[4] ),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[2] ),
    .I2(\EX/ALU/N93 ),
    .I3(\EX/ALU/N70 ),
    .LO(\EX/ALU/result_final<2>_map39 )
  );
  defparam \ID/Decode/ALUtemp<2>26 .INIT = 8'h01;
  LUT3_D \ID/Decode/ALUtemp<2>26  (
    .I0(\if_id/q[27] ),
    .I1(\if_id/q[29] ),
    .I2(\if_id/q[31] ),
    .LO(N11756),
    .O(\ID/N11 )
  );
  defparam \EX/ALU/result_final<3>197 .INIT = 16'hC8C0;
  LUT4_L \EX/ALU/result_final<3>197  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/N83 ),
    .I2(\EX/ALU/result_final<3>_map44 ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[51] ),
    .LO(\EX/ALU/result_final<3>_map47 )
  );
  defparam \ID/Mxor_Z_xor0015_Result1 .INIT = 4'h6;
  LUT2_L \ID/Mxor_Z_xor0015_Result1  (
    .I0(RtData_id[16]),
    .I1(JrAddr[16]),
    .LO(\ID/Z_xor0015 )
  );
  defparam \ID/Mxor_Z_xor0011_Result1 .INIT = 4'h6;
  LUT2_L \ID/Mxor_Z_xor0011_Result1  (
    .I0(RtData_id[20]),
    .I1(JrAddr[20]),
    .LO(\ID/Z_xor0011 )
  );
  defparam \ID/Mxor_Z_xor0006_Result1 .INIT = 4'h6;
  LUT2_L \ID/Mxor_Z_xor0006_Result1  (
    .I0(RtData_id[25]),
    .I1(JrAddr[25]),
    .LO(\ID/Z_xor0006 )
  );
  defparam \ID/RsSel11 .INIT = 4'h4;
  LUT2_L \ID/RsSel11  (
    .I0(\MM_mem_wb/q_4_1_138 ),
    .I1(\MM_mem_wb/q_5_1_135 ),
    .LO(\EX/ForwardA_0_and0001_map6 )
  );
  defparam \ID/Mxor_Z_xor0000_Result1 .INIT = 4'h6;
  LUT2_L \ID/Mxor_Z_xor0000_Result1  (
    .I0(RtData_id[31]),
    .I1(JrAddr[31]),
    .LO(\ID/Z_xor0000 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<29>1 .INIT = 8'hD8;
  LUT3_D \EX/ALU/Mshift_result_final_shift0005_Sh<29>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_30_OBUF_69),
    .I2(ALU_B_29_OBUF_70),
    .LO(N11757),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[29] )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<21>1 .INIT = 8'hD8;
  LUT3_D \EX/ALU/Mshift_result_final_shift0005_Sh<21>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_22_OBUF_77),
    .I2(ALU_B_21_OBUF_78),
    .LO(N11758),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[21] )
  );
  defparam \ID/RsSel_cmp_eq0000_SW0 .INIT = 4'hE;
  LUT2_D \ID/RsSel_cmp_eq0000_SW0  (
    .I0(\MM_mem_wb/q_1_1_133 ),
    .I1(\MM_mem_wb/q_0_1_132 ),
    .LO(N11759),
    .O(N3134)
  );
  defparam \ID/RtSel78 .INIT = 16'h0800;
  LUT4_D \ID/RtSel78  (
    .I0(\ID/RtSel_map25 ),
    .I1(\ID/RtSel_map17 ),
    .I2(\EX/ForwardA_0_and0000 ),
    .I3(\ID/RtSel_map4 ),
    .LO(N11760),
    .O(\ID/RtSel )
  );
  defparam \IF/PC_in_cmp_eq00021 .INIT = 8'h04;
  LUT3_D \IF/PC_in_cmp_eq00021  (
    .I0(J),
    .I1(JR),
    .I2(\ID/Z701_174 ),
    .LO(N11761),
    .O(\IF/PC_in_cmp_eq0002 )
  );
  defparam \ID/Z489 .INIT = 16'h8000;
  LUT4_L \ID/Z489  (
    .I0(\ID/Z_map137 ),
    .I1(\ID/Z_map144 ),
    .I2(\ID/Z_map152 ),
    .I3(\ID/Z_map159 ),
    .LO(\ID/Z_map161 )
  );
  defparam \ID/Z566 .INIT = 16'hFFFE;
  LUT4_L \ID/Z566  (
    .I0(JrAddr[11]),
    .I1(JrAddr[12]),
    .I2(JrAddr[13]),
    .I3(JrAddr[14]),
    .LO(\ID/Z_map170 )
  );
  defparam \ID/Z611 .INIT = 16'hFFFE;
  LUT4_L \ID/Z611  (
    .I0(JrAddr[17]),
    .I1(JrAddr[18]),
    .I2(JrAddr[19]),
    .I3(JrAddr[1]),
    .LO(\ID/Z_map185 )
  );
  defparam \ID/Z676 .INIT = 8'hA8;
  LUT3_L \ID/Z676  (
    .I0(\ID/Z_map203 ),
    .I1(\ID/Z_map182 ),
    .I2(\ID/Z_map198 ),
    .LO(\ID/Z_map204 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<19>1 .INIT = 8'hE4;
  LUT3_D \EX/ALU/Mshift_result_final_shift0005_Sh<19>1  (
    .I0(ALU_A_0_OBUF_67),
    .I1(ALU_B_19_OBUF_80),
    .I2(ALU_B_20_OBUF_79),
    .LO(N11762),
    .O(\EX/ALU/Mshift_result_final_shift0005_Sh[19] )
  );
  defparam \EX/ALU/result_final<4>51 .INIT = 16'hF222;
  LUT4_L \EX/ALU/result_final<4>51  (
    .I0(\EX/ALU/result_final_cmp_eq0004 ),
    .I1(ALU_B_4_OBUF_95),
    .I2(\EX/ALU/N75 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[36] ),
    .LO(\EX/ALU/result_final<4>_map15 )
  );
  defparam \EX/ALU/result_final<5>95 .INIT = 16'hA820;
  LUT4_L \EX/ALU/result_final<5>95  (
    .I0(\EX/ALU/result_final<5>_map25 ),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[21] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[25] ),
    .LO(\EX/ALU/result_final<5>_map26 )
  );
  defparam \EX/ALU/result_final<5>192 .INIT = 8'hD8;
  LUT3_L \EX/ALU/result_final<5>192  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/N311 ),
    .I2(\EX/ALU/N65 ),
    .LO(\EX/ALU/result_final<5>_map48 )
  );
  defparam \EX/ALU/result_final<5>224 .INIT = 16'hFFEC;
  LUT4_L \EX/ALU/result_final<5>224  (
    .I0(\EX/ALU/result_final<31>_map19 ),
    .I1(\EX/ALU/result_final<5>_map19 ),
    .I2(\EX/ALU/result_final<5>_map39 ),
    .I3(\EX/ALU/result_final<5>_map54 ),
    .LO(\EX/ALU/result_final<5>_map55 )
  );
  defparam \EX/ALU/result_final<5>316 .INIT = 16'h566A;
  LUT4_L \EX/ALU/result_final<5>316  (
    .I0(\EX/ALU/adder/adder_10/s_and0000 [1]),
    .I1(\EX/ALU/_xor0000 [4]),
    .I2(\EX/ALU/adder/co_0 ),
    .I3(ALU_A_4_OBUF_63),
    .LO(\EX/ALU/result_final<5>_map76 )
  );
  defparam \EX/ALU/result_final<7>90 .INIT = 8'hEA;
  LUT3_L \EX/ALU/result_final<7>90  (
    .I0(\EX/ALU/N74 ),
    .I1(\EX/ALU/N93 ),
    .I2(\EX/ALU/N4 ),
    .LO(\EX/ALU/result_final<7>_map21 )
  );
  defparam \EX/ALU/result_final<7>103 .INIT = 16'hE040;
  LUT4_L \EX/ALU/result_final<7>103  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[9] ),
    .I2(\EX/ALU/N70 ),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[13] ),
    .LO(\EX/ALU/result_final<7>_map26 )
  );
  defparam \EX/ALU/result_final<6>92 .INIT = 16'hEAC0;
  LUT4_L \EX/ALU/result_final<6>92  (
    .I0(\EX/ALU/N95 ),
    .I1(\EX/ALU/N93 ),
    .I2(\EX/ALU/N5 ),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[62] ),
    .LO(\EX/ALU/result_final<6>_map22 )
  );
  defparam \EX/ALU/result_final<6>105 .INIT = 16'hD800;
  LUT4_L \EX/ALU/result_final<6>105  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0005_Sh[12] ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[8] ),
    .I3(\EX/ALU/N70 ),
    .LO(\EX/ALU/result_final<6>_map27 )
  );
  defparam \EX/ALU/result_final<8>110 .INIT = 16'hFFEA;
  LUT4_L \EX/ALU/result_final<8>110  (
    .I0(\EX/ALU/N58 ),
    .I1(\EX/ALU/N83 ),
    .I2(\EX/ALU/result_final<8>_map26 ),
    .I3(\EX/ALU/result_final<8>_map20 ),
    .LO(\EX/ALU/result_final<8>_map28 )
  );
  defparam \ID/addOffset/mux_5/out<2>11 .INIT = 16'h017F;
  LUT4_L \ID/addOffset/mux_5/out<2>11  (
    .I0(\if_id/q[53] ),
    .I1(\if_id/q[52] ),
    .I2(\ID/addOffset/co_4 ),
    .I3(\if_id/q[15] ),
    .LO(\ID/addOffset/N30 )
  );
  defparam \EX/ALU/result_final<11>105 .INIT = 16'hA820;
  LUT4_L \EX/ALU/result_final<11>105  (
    .I0(\EX/ALU/N78 ),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[11] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[19] ),
    .LO(\EX/ALU/result_final<11>_map27 )
  );
  defparam \EX/ALU/result_final<10>155 .INIT = 16'hA820;
  LUT4_L \EX/ALU/result_final<10>155  (
    .I0(\EX/ALU/N78 ),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[10] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[18] ),
    .LO(\EX/ALU/result_final<10>_map39 )
  );
  defparam \EX/ALU/adder/mux_2/out<2>1_SW0 .INIT = 16'hE888;
  LUT4_L \EX/ALU/adder/mux_2/out<2>1_SW0  (
    .I0(ALU_A_9_OBUF_58),
    .I1(\EX/ALU/_xor0000 [9]),
    .I2(\EX/ALU/_xor0000 [8]),
    .I3(ALU_A_8_OBUF_59),
    .LO(N5447)
  );
  defparam \EX/ALU/result_final<13>65 .INIT = 16'hBAAA;
  LUT4_L \EX/ALU/result_final<13>65  (
    .I0(\EX/ALU/result_final<13>_map14 ),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/N75 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[45] ),
    .LO(\EX/ALU/result_final<13>_map18 )
  );
  defparam \EX/ALU/result_final<13>108 .INIT = 16'hA820;
  LUT4_L \EX/ALU/result_final<13>108  (
    .I0(\EX/ALU/N82 ),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[17] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[25] ),
    .LO(\EX/ALU/result_final<13>_map28 )
  );
  defparam \EX/ALU/result_final<13>259 .INIT = 16'h566A;
  LUT4_L \EX/ALU/result_final<13>259  (
    .I0(\EX/ALU/adder/adder_30/s_and0000 [1]),
    .I1(\EX/ALU/_xor0000 [12]),
    .I2(\EX/ALU/adder/co_2 ),
    .I3(ALU_A_12_OBUF_55),
    .LO(\EX/ALU/result_final<13>_map61 )
  );
  defparam \EX/ALU/result_final<15>125 .INIT = 16'hA820;
  LUT4_L \EX/ALU/result_final<15>125  (
    .I0(\EX/ALU/N82 ),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[19] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[27] ),
    .LO(\EX/ALU/result_final<15>_map34 )
  );
  defparam \EX/ALU/result_final<15>149 .INIT = 16'hEAC0;
  LUT4_L \EX/ALU/result_final<15>149  (
    .I0(\EX/ALU/N83 ),
    .I1(\EX/ALU/N88 ),
    .I2(\EX/ALU/result_final<15>_map24 ),
    .I3(\EX/ALU/result_final<15>_map35 ),
    .LO(\EX/ALU/result_final<15>_map37 )
  );
  defparam \EX/ALU/result_final<16>113 .INIT = 16'hFFEA;
  LUT4_L \EX/ALU/result_final<16>113  (
    .I0(\EX/ALU/N58 ),
    .I1(\EX/ALU/N75 ),
    .I2(\EX/ALU/result_final<16>_map25 ),
    .I3(\EX/ALU/result_final<16>_map14 ),
    .LO(\EX/ALU/result_final<16>_map27 )
  );
  defparam \EX/ALU/result_final<16>132 .INIT = 16'hFFEA;
  LUT4_L \EX/ALU/result_final<16>132  (
    .I0(\EX/ALU/N80 ),
    .I1(\EX/ALU/N90 ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[56] ),
    .I3(\EX/ALU/result_final<16>_map29 ),
    .LO(\EX/ALU/result_final<16>_map32 )
  );
  defparam \EX/ALU/result_final<17>71 .INIT = 4'h4;
  LUT2_D \EX/ALU/result_final<17>71  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/result_final<0>71_168 ),
    .LO(N11763),
    .O(\EX/ALU/result_final<17>_map17 )
  );
  defparam \EX/ALU/result_final<19>181 .INIT = 16'hFFFE;
  LUT4_L \EX/ALU/result_final<19>181  (
    .I0(\EX/ALU/N58 ),
    .I1(\EX/ALU/result_final<19>_map29 ),
    .I2(\EX/ALU/result_final<19>_map18 ),
    .I3(\EX/ALU/result_final<19>_map40 ),
    .LO(\EX/ALU/result_final<19>_map42 )
  );
  defparam \EX/ALU/result_final<18>105 .INIT = 16'h5410;
  LUT4_L \EX/ALU/result_final<18>105  (
    .I0(\EX/ALU/N1 ),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[18] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[22] ),
    .LO(\EX/ALU/result_final<18>_map27 )
  );
  defparam \EX/ALU/result_final<18>181 .INIT = 16'hFFFE;
  LUT4_L \EX/ALU/result_final<18>181  (
    .I0(\EX/ALU/N58 ),
    .I1(\EX/ALU/result_final<18>_map29 ),
    .I2(\EX/ALU/result_final<18>_map18 ),
    .I3(\EX/ALU/result_final<18>_map40 ),
    .LO(\EX/ALU/result_final<18>_map42 )
  );
  defparam \EX/ALU/adder/mux_4/out<2>1_SW0 .INIT = 16'hE888;
  LUT4_L \EX/ALU/adder/mux_4/out<2>1_SW0  (
    .I0(ALU_A_17_OBUF_50),
    .I1(\EX/ALU/_xor0000 [17]),
    .I2(\EX/ALU/_xor0000 [16]),
    .I3(ALU_A_16_OBUF_51),
    .LO(N7121)
  );
  defparam \EX/ALU/adder/mux_4/out<2>1_SW1 .INIT = 16'hFCE8;
  LUT4_L \EX/ALU/adder/mux_4/out<2>1_SW1  (
    .I0(\EX/ALU/_xor0000 [16]),
    .I1(\EX/ALU/_xor0000 [17]),
    .I2(ALU_A_17_OBUF_50),
    .I3(ALU_A_16_OBUF_51),
    .LO(N7122)
  );
  defparam \ID/addOffset/mux_7/out<2>11 .INIT = 16'h017F;
  LUT4_L \ID/addOffset/mux_7/out<2>11  (
    .I0(\if_id/q[61] ),
    .I1(\if_id/q[60] ),
    .I2(\ID/addOffset/co_6 ),
    .I3(\if_id/q[15] ),
    .LO(\ID/addOffset/N28 )
  );
  defparam \ID/addOffset/mux_7/out<3>1 .INIT = 16'h151F;
  LUT4_D \ID/addOffset/mux_7/out<3>1  (
    .I0(\if_id/q[15] ),
    .I1(N7482),
    .I2(\ID/addOffset/co_6 ),
    .I3(N7481),
    .LO(N11764),
    .O(\ID/addOffset/N21 )
  );
  defparam \ID/addOffset/mux_6/out<3>1 .INIT = 16'h151F;
  LUT4_L \ID/addOffset/mux_6/out<3>1  (
    .I0(\if_id/q[15] ),
    .I1(N7491),
    .I2(\ID/addOffset/co_5 ),
    .I3(N7490),
    .LO(\ID/addOffset/N22 )
  );
  defparam \ID/addOffset/mux_1/out<3>124 .INIT = 16'h0157;
  LUT4_D \ID/addOffset/mux_1/out<3>124  (
    .I0(\if_id/q[38] ),
    .I1(\if_id/q[3] ),
    .I2(\if_id/q[37] ),
    .I3(\if_id/q[15] ),
    .LO(N11765),
    .O(\ID/addOffset/mux_1/out<3>1_map10 )
  );
  defparam \ID/addOffset/mux_1/out<3>157 .INIT = 16'h135F;
  LUT4_L \ID/addOffset/mux_1/out<3>157  (
    .I0(\if_id/q[38] ),
    .I1(\if_id/q[37] ),
    .I2(\if_id/q[15] ),
    .I3(\if_id/q[3] ),
    .LO(\ID/addOffset/mux_1/out<3>1_map26 )
  );
  defparam \ID/addOffset/mux_3/out<3>124 .INIT = 16'h0157;
  LUT4_D \ID/addOffset/mux_3/out<3>124  (
    .I0(\if_id/q[46] ),
    .I1(\if_id/q[11] ),
    .I2(\if_id/q[45] ),
    .I3(\if_id/q[12] ),
    .LO(N11766),
    .O(\ID/addOffset/mux_3/out<3>1_map10 )
  );
  defparam \ID/addOffset/mux_3/out<3>157 .INIT = 16'h135F;
  LUT4_D \ID/addOffset/mux_3/out<3>157  (
    .I0(\if_id/q[46] ),
    .I1(\if_id/q[45] ),
    .I2(\if_id/q[12] ),
    .I3(\if_id/q[11] ),
    .LO(N11767),
    .O(\ID/addOffset/mux_3/out<3>1_map26 )
  );
  defparam \ID/addOffset/mux_2/out<3>124 .INIT = 16'h0157;
  LUT4_D \ID/addOffset/mux_2/out<3>124  (
    .I0(\if_id/q[42] ),
    .I1(\if_id/q[7] ),
    .I2(\if_id/q[41] ),
    .I3(\if_id/q[15] ),
    .LO(N11768),
    .O(\ID/addOffset/mux_2/out<3>1_map10 )
  );
  defparam \EX/ALU/result_final<23>115 .INIT = 16'hA820;
  LUT4_L \EX/ALU/result_final<23>115  (
    .I0(\EX/ALU/N78 ),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[23] ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[15] ),
    .LO(\EX/ALU/result_final<23>_map31 )
  );
  defparam \EX/ALU/result_final<23>149 .INIT = 16'hFFFE;
  LUT4_L \EX/ALU/result_final<23>149  (
    .I0(\EX/ALU/N58 ),
    .I1(\EX/ALU/result_final<23>_map18 ),
    .I2(\EX/ALU/result_final<23>_map23 ),
    .I3(\EX/ALU/result_final<23>_map33 ),
    .LO(\EX/ALU/result_final<23>_map35 )
  );
  defparam \EX/ALU/adder/mux_5/out<2>1_SW0 .INIT = 16'hE888;
  LUT4_L \EX/ALU/adder/mux_5/out<2>1_SW0  (
    .I0(ALU_A_21_OBUF_46),
    .I1(\EX/ALU/_xor0000 [21]),
    .I2(\EX/ALU/_xor0000 [20]),
    .I3(ALU_A_20_OBUF_47),
    .LO(N7987)
  );
  defparam \EX/ALU/adder/mux_5/out<2>1_SW1 .INIT = 16'hFCE8;
  LUT4_L \EX/ALU/adder/mux_5/out<2>1_SW1  (
    .I0(\EX/ALU/_xor0000 [20]),
    .I1(\EX/ALU/_xor0000 [21]),
    .I2(ALU_A_21_OBUF_46),
    .I3(ALU_A_20_OBUF_47),
    .LO(N7988)
  );
  defparam \EX/ALU/result_final<24>101 .INIT = 16'hA820;
  LUT4_L \EX/ALU/result_final<24>101  (
    .I0(\EX/ALU/N82 ),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[20] ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[12] ),
    .LO(\EX/ALU/result_final<24>_map25 )
  );
  defparam \EX/ALU/result_final<24>131 .INIT = 16'hFFEA;
  LUT4_L \EX/ALU/result_final<24>131  (
    .I0(\EX/ALU/N58 ),
    .I1(\EX/ALU/N75 ),
    .I2(\EX/ALU/result_final<24>_map28 ),
    .I3(\EX/ALU/result_final<24>_map18 ),
    .LO(\EX/ALU/result_final<24>_map30 )
  );
  defparam \EX/ALU/result_final<25>124 .INIT = 16'hA820;
  LUT4_L \EX/ALU/result_final<25>124  (
    .I0(\EX/ALU/N82 ),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[21] ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[13] ),
    .LO(\EX/ALU/result_final<25>_map30 )
  );
  defparam \EX/ALU/result_final<25>154 .INIT = 16'hFEFC;
  LUT4_L \EX/ALU/result_final<25>154  (
    .I0(\EX/ALU/N75 ),
    .I1(\EX/ALU/result_final<25>_map23 ),
    .I2(\EX/ALU/result_final<25>_map19 ),
    .I3(\EX/ALU/result_final<25>_map33 ),
    .LO(\EX/ALU/result_final<25>_map35 )
  );
  defparam \EX/ALU_A<4>13 .INIT = 16'hA0C0;
  LUT4_D \EX/ALU_A<4>13  (
    .I0(\Data_id_ex/q[36] ),
    .I1(RegWriteData_wb[4]),
    .I2(\EX/ForwardA [0]),
    .I3(\EX/ForwardA [1]),
    .LO(N11769),
    .O(\EX/ALU_A<4>_map5 )
  );
  defparam \EX/ALU/adder/mux_6/out<2>1_SW0 .INIT = 16'hE888;
  LUT4_L \EX/ALU/adder/mux_6/out<2>1_SW0  (
    .I0(ALU_A_25_OBUF_42),
    .I1(\EX/ALU/_xor0000 [25]),
    .I2(\EX/ALU/_xor0000 [24]),
    .I3(ALU_A_24_OBUF_43),
    .LO(N8605)
  );
  defparam \EX/ALU/adder/mux_6/out<2>1_SW1 .INIT = 16'hFCE8;
  LUT4_L \EX/ALU/adder/mux_6/out<2>1_SW1  (
    .I0(\EX/ALU/_xor0000 [24]),
    .I1(\EX/ALU/_xor0000 [25]),
    .I2(ALU_A_25_OBUF_42),
    .I3(ALU_A_24_OBUF_43),
    .LO(N8606)
  );
  defparam \EX/ALU_A<3>13 .INIT = 16'hA0C0;
  LUT4_D \EX/ALU_A<3>13  (
    .I0(\Data_id_ex/q[35] ),
    .I1(RegWriteData_wb[3]),
    .I2(\EX/ForwardA [0]),
    .I3(\EX/ForwardA [1]),
    .LO(N11770),
    .O(\EX/ALU_A<3>_map5 )
  );
  defparam \EX/ALU/result_final_cmp_eq000011 .INIT = 8'h01;
  LUT3_D \EX/ALU/result_final_cmp_eq000011  (
    .I0(\EX_id_ex/q [7]),
    .I1(\EX_id_ex/q [6]),
    .I2(\EX_id_ex/q [5]),
    .LO(N11771),
    .O(\EX/ALU/N73 )
  );
  defparam \EX/ALU/result_final<28>177 .INIT = 16'hFFEA;
  LUT4_L \EX/ALU/result_final<28>177  (
    .I0(\EX/ALU/N58 ),
    .I1(\EX/ALU/N75 ),
    .I2(\EX/ALU/result_final<28>_map35 ),
    .I3(\EX/ALU/result_final<28>_map19 ),
    .LO(\EX/ALU/result_final<28>_map37 )
  );
  defparam \EX/ALU_A<2>28 .INIT = 16'h0C0A;
  LUT4_D \EX/ALU_A<2>28  (
    .I0(\Data_id_ex/q[34] ),
    .I1(\Data_ex_mem/q [39]),
    .I2(\EX/ForwardA [0]),
    .I3(\EX/ForwardA [1]),
    .LO(N11772),
    .O(\EX/ALU_A<2>_map11 )
  );
  defparam \EX/ALU/result_final<29>200 .INIT = 16'hFFEA;
  LUT4_L \EX/ALU/result_final<29>200  (
    .I0(\EX/ALU/N58 ),
    .I1(\EX/ALU/N75 ),
    .I2(\EX/ALU/result_final<29>_map40 ),
    .I3(\EX/ALU/result_final<29>_map24 ),
    .LO(\EX/ALU/result_final<29>_map42 )
  );
  defparam \EX/ALU/result_final<31>58 .INIT = 16'hECA0;
  LUT4_L \EX/ALU/result_final<31>58  (
    .I0(\EX/ALU/N144 ),
    .I1(\EX/ALU/N73 ),
    .I2(\EX/ALU/result_final_shift0002 [31]),
    .I3(\EX/ALU/overflow_xor0000 ),
    .LO(\EX/ALU/result_final<31>_map17 )
  );
  defparam \EX/ForwardA_0_and000162 .INIT = 16'h8421;
  LUT4_D \EX/ForwardA_0_and000162  (
    .I0(\Addr_id_ex/q[13] ),
    .I1(\Addr_id_ex/q[11] ),
    .I2(\MM_mem_wb/q_3_2_143 ),
    .I3(\MM_mem_wb/q_1_18_148 ),
    .LO(N11773),
    .O(\EX/ForwardA_0_and0001_map21 )
  );
  defparam \EX/ForwardA_1_and0001_SW0 .INIT = 16'hFFFE;
  LUT4_D \EX/ForwardA_1_and0001_SW0  (
    .I0(\Data_ex_mem/q_0_2_141 ),
    .I1(\Data_ex_mem/q_3_1_150 ),
    .I2(\Data_ex_mem/q_2_1_166 ),
    .I3(\Data_ex_mem/q [4]),
    .LO(N11774),
    .O(N9236)
  );
  defparam \EX/ForwardA_1_and0001 .INIT = 16'h0C08;
  LUT4_D \EX/ForwardA_1_and0001  (
    .I0(\Data_ex_mem/q [1]),
    .I1(\WB_ex_mem/q [0]),
    .I2(\EX/ForwardA_0_cmp_ne0001 ),
    .I3(N9236),
    .LO(N11775),
    .O(\EX/ForwardA [1])
  );
  defparam \EX/ForwardA_0_cmp_ne000118 .INIT = 16'hFFF6;
  LUT4_D \EX/ForwardA_0_cmp_ne000118  (
    .I0(\Data_ex_mem/q_1_1_139 ),
    .I1(\Addr_id_ex/q[11] ),
    .I2(\Data_ex_mem/q_2_1_166 ),
    .I3(\Data_ex_mem/q [4]),
    .LO(N11776),
    .O(\EX/ForwardA_0_cmp_ne0001_map6 )
  );
  defparam \EX/ALU/result_final<30>88 .INIT = 16'h2000;
  LUT4_L \EX/ALU/result_final<30>88  (
    .I0(\EX/ALU/Mshift_result_final_shift0004_Sh[30] ),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/N79 ),
    .I3(\EX/ALU/result_final<0>71_168 ),
    .LO(\EX/ALU/result_final<30>_map23 )
  );
  defparam \EX/ALU/adder/mux_7/out<2>1_SW0 .INIT = 16'hE888;
  LUT4_L \EX/ALU/adder/mux_7/out<2>1_SW0  (
    .I0(ALU_A_29_OBUF_38),
    .I1(\EX/ALU/_xor0000 [29]),
    .I2(ALU_A_28_OBUF_39),
    .I3(\EX/ALU/_xor0000 [28]),
    .LO(N9484)
  );
  defparam \EX/ALU/adder/mux_7/out<2>1_SW1 .INIT = 16'hFCE8;
  LUT4_L \EX/ALU/adder/mux_7/out<2>1_SW1  (
    .I0(ALU_A_28_OBUF_39),
    .I1(\EX/ALU/_xor0000 [29]),
    .I2(ALU_A_29_OBUF_38),
    .I3(\EX/ALU/_xor0000 [28]),
    .LO(N9485)
  );
  defparam \EX/ALU/adder/mux_5/out<3>157 .INIT = 16'h153F;
  LUT4_D \EX/ALU/adder/mux_5/out<3>157  (
    .I0(ALU_A_22_OBUF_45),
    .I1(ALU_A_21_OBUF_46),
    .I2(\EX/ALU/_xor0000 [21]),
    .I3(\EX/ALU/_xor0000 [22]),
    .LO(N11777),
    .O(\EX/ALU/adder/mux_5/out<3>1_map26 )
  );
  defparam \EX/ALU/adder/mux_4/out<3>157 .INIT = 16'h153F;
  LUT4_D \EX/ALU/adder/mux_4/out<3>157  (
    .I0(ALU_A_18_OBUF_49),
    .I1(ALU_A_17_OBUF_50),
    .I2(\EX/ALU/_xor0000 [17]),
    .I3(\EX/ALU/_xor0000 [18]),
    .LO(N11778),
    .O(\EX/ALU/adder/mux_4/out<3>1_map26 )
  );
  defparam \EX/ALU/Mxor__xor0000_Result<0>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<0>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Data_id_ex/q[64] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[0]),
    .LO(N11779),
    .O(\EX/ALU/_xor0000 [0])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<1>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<1>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Data_id_ex/q[65] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[1]),
    .LO(N11780),
    .O(\EX/ALU/_xor0000 [1])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<2>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<2>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Data_id_ex/q[66] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[2]),
    .LO(N11781),
    .O(\EX/ALU/_xor0000 [2])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<6>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<6>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Data_id_ex/q[96] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[6]),
    .LO(N11782),
    .O(\EX/ALU/_xor0000 [6])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<5>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<5>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[1] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[5]),
    .LO(N11783),
    .O(\EX/ALU/_xor0000 [5])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<3>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<3>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Data_id_ex/q[67] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[3]),
    .LO(N11784),
    .O(\EX/ALU/_xor0000 [3])
  );
  defparam \EX/ALU/adder/co_11 .INIT = 16'h888E;
  LUT4_D \EX/ALU/adder/co_11  (
    .I0(ALU_A_7_OBUF_60),
    .I1(\EX/ALU/_xor0000 [7]),
    .I2(\EX/ALU/adder/mux_1/out<3>1_map27 ),
    .I3(\EX/ALU/adder/mux_1/out<3>1_map10 ),
    .LO(N11785),
    .O(\EX/ALU/adder/co_1 )
  );
  defparam \EX/ForwardB_1_and0000_SW2 .INIT = 16'hCCCA;
  LUT4_L \EX/ForwardB_1_and0000_SW2  (
    .I0(\Data_id_ex/q[1] ),
    .I1(\Data_ex_mem/q [38]),
    .I2(N9236),
    .I3(\Data_ex_mem/q [1]),
    .LO(N10297)
  );
  defparam \EX/ALU/adder/adder_0/C<0>1 .INIT = 16'hBF2A;
  LUT4_D \EX/ALU/adder/adder_0/C<0>1  (
    .I0(\EX/ALU/_xor0000 [0]),
    .I1(\EX/ALU/N73 ),
    .I2(\EX/ALU/N147 ),
    .I3(\EX/ALU_A<0>59_154 ),
    .LO(N11786),
    .O(\EX/ALU/adder/adder_0/C [0])
  );
  defparam \EX/ForwardB_0_cmp_ne000073_SW1 .INIT = 16'h5ADE;
  LUT4_L \EX/ForwardB_0_cmp_ne000073_SW1  (
    .I0(\Addr_id_ex/q[6] ),
    .I1(\Addr_id_ex/q[5] ),
    .I2(\Data_ex_mem/q_1_1_139 ),
    .I3(\Data_ex_mem/q_0_2_141 ),
    .LO(N10307)
  );
  defparam \EX/ForwardB_0_and000091_SW0 .INIT = 8'h90;
  LUT3_D \EX/ForwardB_0_and000091_SW0  (
    .I0(\MM_mem_wb/q_0_19_153 ),
    .I1(\Addr_id_ex/q[5] ),
    .I2(\EX/ForwardB_0_and0000_map17 ),
    .LO(N11787),
    .O(N10309)
  );
  defparam \EX/ALU/adder/adder_0/C<2>1 .INIT = 8'hE8;
  LUT3_D \EX/ALU/adder/adder_0/C<2>1  (
    .I0(\EX/ALU/_xor0000 [2]),
    .I1(\EX/ALU_A<2>59_163 ),
    .I2(\EX/ALU/adder/adder_0/C [1]),
    .LO(N11788),
    .O(\EX/ALU/adder/adder_0/C [2])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<4>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<4>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[4]),
    .LO(N11789),
    .O(\EX/ALU/_xor0000 [4])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<9>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<9>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[9]),
    .LO(N11790),
    .O(\EX/ALU/_xor0000 [9])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<10>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<10>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[10]),
    .LO(N11791),
    .O(\EX/ALU/_xor0000 [10])
  );
  defparam \EX/ALU_A<1>13 .INIT = 16'h0080;
  LUT4_D \EX/ALU_A<1>13  (
    .I0(N10322),
    .I1(\EX/ForwardA_0_and0001_map9 ),
    .I2(\EX/ForwardA_0_cmp_ne0001 ),
    .I3(\EX/ForwardA_0_and0000 ),
    .LO(N11792),
    .O(\EX/ALU_A<1>_map5 )
  );
  defparam \EX/ALU_A<0>13 .INIT = 16'h0080;
  LUT4_D \EX/ALU_A<0>13  (
    .I0(N10324),
    .I1(\EX/ForwardA_0_and0001_map9 ),
    .I2(\EX/ForwardA_0_cmp_ne0001 ),
    .I3(\EX/ForwardA_0_and0000 ),
    .LO(N11793),
    .O(\EX/ALU_A<0>_map5 )
  );
  defparam \EX/ALU/adder/mux_2/out<3>165 .INIT = 16'h202A;
  LUT4_D \EX/ALU/adder/mux_2/out<3>165  (
    .I0(\EX/ALU/adder/mux_2/out<3>1_map26 ),
    .I1(N10330),
    .I2(\EX/ALU/adder/mux_1/out<3>1_map27 ),
    .I3(N10329),
    .LO(N11794),
    .O(\EX/ALU/adder/mux_2/out<3>1_map27 )
  );
  defparam \EX/ALU/Mxor__xor0000_Result<8>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<8>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[8]),
    .LO(N11795),
    .O(\EX/ALU/_xor0000 [8])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<14>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<14>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[3] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[14]),
    .LO(N11796),
    .O(\EX/ALU/_xor0000 [14])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<13>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<13>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[13]),
    .LO(N11797),
    .O(\EX/ALU/_xor0000 [13])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<12>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<12>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[1] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[12]),
    .LO(N11798),
    .O(\EX/ALU/_xor0000 [12])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<11>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<11>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[0] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[11]),
    .LO(N11799),
    .O(\EX/ALU/_xor0000 [11])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<18>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<18>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[18]),
    .LO(N11800),
    .O(\EX/ALU/_xor0000 [18])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<17>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<17>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[17]),
    .LO(N11801),
    .O(\EX/ALU/_xor0000 [17])
  );
  defparam \EX/ALU/adder/mux_4/out<3>165_SW0 .INIT = 16'hFB40;
  LUT4_D \EX/ALU/adder/mux_4/out<3>165_SW0  (
    .I0(\EX/ALU/adder/mux_4/out<3>1_map10 ),
    .I1(N10338),
    .I2(N10335),
    .I3(N10336),
    .LO(N11802),
    .O(N10349)
  );
  defparam \EX/ALU/adder/mux_4/out<3>165_SW1 .INIT = 16'hFB40;
  LUT4_D \EX/ALU/adder/mux_4/out<3>165_SW1  (
    .I0(\EX/ALU/adder/mux_4/out<3>1_map10 ),
    .I1(N10339),
    .I2(N10335),
    .I3(N10336),
    .LO(N11803),
    .O(N10350)
  );
  defparam \EX/ALU/adder/mux_7/out<3>2_SW1 .INIT = 16'hBAAB;
  LUT4_D \EX/ALU/adder/mux_7/out<3>2_SW1  (
    .I0(\EX/ALU/result_final<0>_map68 ),
    .I1(\EX/ALU/overflow_xor0000 ),
    .I2(N10327),
    .I3(\EX/ALU/_xor0000 [31]),
    .LO(N11804),
    .O(N10353)
  );
  defparam \EX/ALU/adder/mux_7/out<3>2_SW2 .INIT = 16'hBAAB;
  LUT4_D \EX/ALU/adder/mux_7/out<3>2_SW2  (
    .I0(\EX/ALU/result_final<0>_map75 ),
    .I1(\EX/ALU/overflow_xor0000 ),
    .I2(N10326),
    .I3(\EX/ALU/_xor0000 [31]),
    .LO(N11805),
    .O(N10355)
  );
  defparam \EX/ALU/adder/mux_7/out<3>2_SW3 .INIT = 16'hBAAB;
  LUT4_D \EX/ALU/adder/mux_7/out<3>2_SW3  (
    .I0(\EX/ALU/result_final<0>_map75 ),
    .I1(\EX/ALU/overflow_xor0000 ),
    .I2(N10327),
    .I3(\EX/ALU/_xor0000 [31]),
    .LO(N11806),
    .O(N10356)
  );
  defparam \EX/Mmux_B_temp12_SW2 .INIT = 8'hDF;
  LUT3_L \EX/Mmux_B_temp12_SW2  (
    .I0(\EX/ForwardB_0_and0000_map25 ),
    .I1(\EX/ForwardA_0_and0000 ),
    .I2(\EX/ForwardB_0_cmp_ne0000 ),
    .LO(N10358)
  );
  defparam \EX/ALU/Mxor__xor0000_Result<22>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<22>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[22]),
    .LO(N11807),
    .O(\EX/ALU/_xor0000 [22])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<21>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<21>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[21]),
    .LO(N11808),
    .O(\EX/ALU/_xor0000 [21])
  );
  defparam \IF/pcAdd4/co_21 .INIT = 16'h8000;
  LUT4_D \IF/pcAdd4/co_21  (
    .I0(\IF/PC [9]),
    .I1(\IF/PC [8]),
    .I2(\IF/pcAdd4/co_1 ),
    .I3(N10386),
    .LO(N11809),
    .O(\IF/pcAdd4/co_2 )
  );
  defparam \IF/pcAdd4/co_41 .INIT = 16'h8000;
  LUT4_D \IF/pcAdd4/co_41  (
    .I0(\IF/PC [18]),
    .I1(\IF/PC [17]),
    .I2(\IF/pcAdd4/co_3 ),
    .I3(N10390),
    .LO(N11810),
    .O(\IF/pcAdd4/co_4 )
  );
  defparam \IF/pcAdd4/mux_6/out<3>11 .INIT = 16'hF7FF;
  LUT4_D \IF/pcAdd4/mux_6/out<3>11  (
    .I0(\IF/PC [26]),
    .I1(\IF/PC [23]),
    .I2(\IF/pcAdd4/N23 ),
    .I3(N10392),
    .LO(N11811),
    .O(\IF/pcAdd4/N22 )
  );
  defparam \ID/addOffset/co_51 .INIT = 16'hF8A8;
  LUT4_D \ID/addOffset/co_51  (
    .I0(\if_id/q[15] ),
    .I1(N10397),
    .I2(\ID/addOffset/co_4 ),
    .I3(N10398),
    .LO(N11812),
    .O(\ID/addOffset/co_5 )
  );
  defparam \IF/pcAdd4/mux_7/out<3>11 .INIT = 16'hF7FF;
  LUT4_D \IF/pcAdd4/mux_7/out<3>11  (
    .I0(\IF/PC [30]),
    .I1(\IF/PC [27]),
    .I2(\IF/pcAdd4/N22 ),
    .I3(N10403),
    .LO(N11813),
    .O(\IF/pcAdd4/N21 )
  );
  defparam \EX/ALU/adder/mux_4/out<3>165_SW2 .INIT = 16'h88E8;
  LUT4_D \EX/ALU/adder/mux_4/out<3>165_SW2  (
    .I0(ALU_A_19_OBUF_48),
    .I1(\EX/ALU/_xor0000 [19]),
    .I2(N10338),
    .I3(\EX/ALU/adder/mux_4/out<3>1_map10 ),
    .LO(N11814),
    .O(N10410)
  );
  defparam \EX/ALU/adder/mux_4/out<3>165_SW3 .INIT = 16'h88E8;
  LUT4_D \EX/ALU/adder/mux_4/out<3>165_SW3  (
    .I0(ALU_A_19_OBUF_48),
    .I1(\EX/ALU/_xor0000 [19]),
    .I2(N10339),
    .I3(\EX/ALU/adder/mux_4/out<3>1_map10 ),
    .LO(N11815),
    .O(N10411)
  );
  defparam \EX/ALU/result_final<0>61 .INIT = 16'h0100;
  LUT4_D \EX/ALU/result_final<0>61  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(\EX/ALU/result_final_or0002 ),
    .I3(\EX/ALU/N144 ),
    .LO(N11816),
    .O(\EX/ALU/N75 )
  );
  defparam \ID/addOffset/mux_2/out<3>165 .INIT = 16'h0E1F;
  LUT4_D \ID/addOffset/mux_2/out<3>165  (
    .I0(\ID/addOffset/mux_1/out<3>1_map10 ),
    .I1(\ID/addOffset/mux_1/out<3>1_map27 ),
    .I2(N10417),
    .I3(N10416),
    .LO(N11817),
    .O(\ID/addOffset/mux_2/out<3>1_map27 )
  );
  defparam \EX/ALU/result_final<0>267 .INIT = 16'hFFEC;
  LUT4_L \EX/ALU/result_final<0>267  (
    .I0(\EX/ALU/N82 ),
    .I1(N10425),
    .I2(\EX/ALU/N64 ),
    .I3(\EX/ALU/result_final<0>_map54 ),
    .LO(\EX/ALU/result_final<0>_map62 )
  );
  defparam \ID/Z5 .INIT = 16'hFFF6;
  LUT4_L \ID/Z5  (
    .I0(JrAddr[30]),
    .I1(RtData_id[30]),
    .I2(\ID/Z_xor0003 ),
    .I3(N10429),
    .LO(\ID/Z_map3 )
  );
  defparam \EX/ALU/result_final<15>93 .INIT = 16'h5410;
  LUT4_L \EX/ALU/result_final<15>93  (
    .I0(\EX/ALU/N1 ),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[15] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[19] ),
    .LO(\EX/ALU/result_final<15>_map23 )
  );
  defparam \EX/ALU/result_final<14>98 .INIT = 16'h5410;
  LUT4_L \EX/ALU/result_final<14>98  (
    .I0(\EX/ALU/N1 ),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[14] ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[18] ),
    .LO(\EX/ALU/result_final<14>_map25 )
  );
  defparam \EX/ALU/Mxor__xor0000_Result<19>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<19>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[19]),
    .LO(N11818),
    .O(\EX/ALU/_xor0000 [19])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<16>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<16>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[16]),
    .LO(N11819),
    .O(\EX/ALU/_xor0000 [16])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<15>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<15>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[15]),
    .LO(N11820),
    .O(\EX/ALU/_xor0000 [15])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<20>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<20>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[20]),
    .LO(N11821),
    .O(\EX/ALU/_xor0000 [20])
  );
  defparam \EX/ALU/result_final<14>75 .INIT = 16'hFFEA;
  LUT4_D \EX/ALU/result_final<14>75  (
    .I0(\EX/ALU/result_final<14>_map14 ),
    .I1(N10443),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[46] ),
    .I3(\EX/ALU/result_final<0>3_160 ),
    .LO(N11822),
    .O(\EX/ALU/result_final<14>_map19 )
  );
  defparam \IF/PC_in<30>4 .INIT = 4'h1;
  LUT2_L \IF/PC_in<30>4  (
    .I0(\ID/Z701_174 ),
    .I1(N10476),
    .LO(\IF/PC_in<30>_map2 )
  );
  defparam \EX/ALU/adder/mux_7/out<3>2_SW4 .INIT = 16'hFF82;
  LUT4_L \EX/ALU/adder/mux_7/out<3>2_SW4  (
    .I0(\EX/ALU/N0 ),
    .I1(N10326),
    .I2(\EX/ALU/_xor0000 [31]),
    .I3(\EX/ALU/result_final<31>_map21 ),
    .LO(N10486)
  );
  defparam \EX/ALU/adder/co_51 .INIT = 16'hCDC8;
  LUT4_D \EX/ALU/adder/co_51  (
    .I0(\EX/ALU/adder/mux_3/out<3>1_map10 ),
    .I1(N10499),
    .I2(\EX/ALU/adder/mux_3/out<3>1_map27 ),
    .I3(N10498),
    .LO(N11823),
    .O(\EX/ALU/adder/co_5 )
  );
  defparam \EX/ALU/adder/mux_6/out<3>165 .INIT = 16'h01FB;
  LUT4_L \EX/ALU/adder/mux_6/out<3>165  (
    .I0(\EX/ALU/adder/mux_3/out<3>1_map10 ),
    .I1(N10501),
    .I2(\EX/ALU/adder/mux_3/out<3>1_map27 ),
    .I3(N10502),
    .LO(\EX/ALU/adder/mux_6/out<3>1_map27 )
  );
  defparam \EX/ALU/adder/co_61 .INIT = 16'hCDC8;
  LUT4_D \EX/ALU/adder/co_61  (
    .I0(\EX/ALU/adder/mux_3/out<3>1_map10 ),
    .I1(N10505),
    .I2(\EX/ALU/adder/mux_3/out<3>1_map27 ),
    .I3(N10504),
    .LO(N11824),
    .O(\EX/ALU/adder/co_6 )
  );
  defparam \ID/Z386 .INIT = 16'h0009;
  LUT4_L \ID/Z386  (
    .I0(JrAddr[20]),
    .I1(RtData_id[20]),
    .I2(\ID/Z_xor0014 ),
    .I3(N10549),
    .LO(\ID/Z_map128 )
  );
  defparam \ID/Z438_SW0 .INIT = 16'h7DBE;
  LUT4_D \ID/Z438_SW0  (
    .I0(JrAddr[11]),
    .I1(JrAddr[10]),
    .I2(RtData_id[10]),
    .I3(RtData_id[11]),
    .LO(N11825),
    .O(N10553)
  );
  defparam \ID/Z462_SW0 .INIT = 16'h7DBE;
  LUT4_D \ID/Z462_SW0  (
    .I0(JrAddr[7]),
    .I1(JrAddr[6]),
    .I2(RtData_id[6]),
    .I3(RtData_id[7]),
    .LO(N11826),
    .O(N10555)
  );
  defparam \ID/Z475_SW0 .INIT = 16'h7DBE;
  LUT4_D \ID/Z475_SW0  (
    .I0(JrAddr[3]),
    .I1(JrAddr[2]),
    .I2(RtData_id[2]),
    .I3(RtData_id[3]),
    .LO(N11827),
    .O(N10557)
  );
  defparam \ID/RsSel67_SW0 .INIT = 16'hFDFF;
  LUT4_L \ID/RsSel67_SW0  (
    .I0(\MM_mem_wb/q [5]),
    .I1(\MM_mem_wb/q [4]),
    .I2(N10423),
    .I3(\ID/RsSel_map20 ),
    .LO(N10559)
  );
  defparam \EX/ALU/result_final<20>119 .INIT = 16'h0D08;
  LUT4_L \EX/ALU/result_final<20>119  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[24] ),
    .I2(\EX/ALU/N1 ),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[20] ),
    .LO(\EX/ALU/result_final<20>_map28 )
  );
  defparam \EX/ALU/Mxor__xor0000_Result<26>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<26>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[26]),
    .LO(N11828),
    .O(\EX/ALU/_xor0000 [26])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<25>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<25>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[25]),
    .LO(N11829),
    .O(\EX/ALU/_xor0000 [25])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<23>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<23>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[23]),
    .LO(N11830),
    .O(\EX/ALU/_xor0000 [23])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<24>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<24>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[24]),
    .LO(N11831),
    .O(\EX/ALU/_xor0000 [24])
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Result<0>51 .INIT = 8'h01;
  LUT3_D \EX/ALU/Mshift_result_final_shift0005_Result<0>51  (
    .I0(\EX/ALU_A<4>59_164 ),
    .I1(\EX/ALU_A<3>59_175 ),
    .I2(ALU_A_1_OBUF_66),
    .LO(N11832),
    .O(\EX/ALU/N93 )
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Result<0>21 .INIT = 8'h10;
  LUT3_D \EX/ALU/Mshift_result_final_shift0005_Result<0>21  (
    .I0(\EX/ALU_A<4>59_164 ),
    .I1(\EX/ALU_A<3>59_175 ),
    .I2(ALU_A_1_OBUF_66),
    .LO(N11833),
    .O(\EX/ALU/N70 )
  );
  defparam \EX/ALU/result_final<0>160 .INIT = 16'hFFFE;
  LUT4_L \EX/ALU/result_final<0>160  (
    .I0(\EX/ALU/result_final<0>_map8 ),
    .I1(N10567),
    .I2(\EX/ALU/result_final<0>3_160 ),
    .I3(\EX/ALU/result_final<0>_map20 ),
    .LO(\EX/ALU/result_final<0>_map38 )
  );
  defparam \EX/ALU/result_final<11>261 .INIT = 16'h2228;
  LUT4_L \EX/ALU/result_final<11>261  (
    .I0(\EX/ALU/N0 ),
    .I1(N10571),
    .I2(\EX/ALU/adder/mux_2/out<3>1_map27 ),
    .I3(\EX/ALU/adder/mux_2/out<3>1_map10 ),
    .LO(\EX/ALU/result_final<11>_map58 )
  );
  defparam \EX/ALU/adder/co_31_SW3 .INIT = 16'h963C;
  LUT4_D \EX/ALU/adder/co_31_SW3  (
    .I0(ALU_A_15_OBUF_52),
    .I1(ALU_A_16_OBUF_51),
    .I2(\EX/ALU/_xor0000 [16]),
    .I3(\EX/ALU/_xor0000 [15]),
    .LO(N11834),
    .O(N10589)
  );
  defparam \EX/ALU/result_final<20>87 .INIT = 16'hECFD;
  LUT4_L \EX/ALU/result_final<20>87  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/result_final<20>_map23 ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[36] ),
    .I3(N10599),
    .LO(\EX/ALU/result_final<20>_map24 )
  );
  defparam \EX/ALU/result_final<20>140_SW0 .INIT = 4'hD;
  LUT2_L \EX/ALU/result_final<20>140_SW0  (
    .I0(\EX/ALU/N83 ),
    .I1(ALU_A_4_OBUF_63),
    .LO(N10601)
  );
  defparam \EX/ALU/result_final<17>160 .INIT = 16'hFFFE;
  LUT4_L \EX/ALU/result_final<17>160  (
    .I0(\EX/ALU/N58 ),
    .I1(\EX/ALU/result_final<17>_map36 ),
    .I2(\EX/ALU/result_final<17>_map25 ),
    .I3(N10603),
    .LO(\EX/ALU/result_final<17>_map38 )
  );
  defparam \EX/ALU/result_final<22>149 .INIT = 16'hFFFE;
  LUT4_L \EX/ALU/result_final<22>149  (
    .I0(\EX/ALU/N58 ),
    .I1(N10605),
    .I2(\EX/ALU/result_final<22>_map35 ),
    .I3(\EX/ALU/result_final<22>_map25 ),
    .LO(\EX/ALU/result_final<22>_map37 )
  );
  defparam \EX/ALU/result_final<0>194_SW0 .INIT = 16'hFFEC;
  LUT4_L \EX/ALU/result_final<0>194_SW0  (
    .I0(\EX/ALU/N90 ),
    .I1(\EX/ALU/result_final<0>_map44 ),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[40] ),
    .I3(\EX/ALU/result_final<0>_map39 ),
    .LO(N10625)
  );
  defparam \EX/ALU/Mxor__xor0000_Result<30>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<30>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[30]),
    .LO(N11835),
    .O(\EX/ALU/_xor0000 [30])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<29>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<29>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[29]),
    .LO(N11836),
    .O(\EX/ALU/_xor0000 [29])
  );
  defparam \IF/PC_in<13>4_SW0 .INIT = 16'hE900;
  LUT4_L \IF/PC_in<13>4_SW0  (
    .I0(J),
    .I1(JR),
    .I2(\ID/Z701_174 ),
    .I3(NextPC_if[13]),
    .LO(N10527)
  );
  defparam \IF/PC_in<6>4_SW0 .INIT = 16'hA882;
  LUT4_L \IF/PC_in<6>4_SW0  (
    .I0(NextPC_if[6]),
    .I1(J),
    .I2(\ID/Z701_174 ),
    .I3(JR),
    .LO(N10521)
  );
  defparam \IF/PC_in<9>4_SW0 .INIT = 16'hC884;
  LUT4_L \IF/PC_in<9>4_SW0  (
    .I0(J),
    .I1(NextPC_if[9]),
    .I2(\ID/Z701_174 ),
    .I3(JR),
    .LO(N10523)
  );
  defparam \IF/PC_in<5>4_SW0 .INIT = 16'hA882;
  LUT4_L \IF/PC_in<5>4_SW0  (
    .I0(NextPC_if[5]),
    .I1(J),
    .I2(\ID/Z701_174 ),
    .I3(JR),
    .LO(N10525)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Result<28>51 .INIT = 8'h10;
  LUT3_D \EX/ALU/Mshift_result_final_shift0003_Result<28>51  (
    .I0(\EX/ALU_A<2>59_163 ),
    .I1(\EX/ALU_A<4>59_164 ),
    .I2(\EX/ALU_A<3>59_175 ),
    .LO(N11837),
    .O(\EX/ALU/N94 )
  );
  defparam \EX/ALU/result_final<21>242 .INIT = 16'h01FB;
  LUT4_L \EX/ALU/result_final<21>242  (
    .I0(\EX/ALU/adder/mux_3/out<3>1_map10 ),
    .I1(N10627),
    .I2(\EX/ALU/adder/mux_3/out<3>1_map27 ),
    .I3(N10628),
    .LO(\EX/ALU/result_final<21>_map58 )
  );
  defparam \EX/ALU/result_final<20>202 .INIT = 16'hCDC8;
  LUT4_L \EX/ALU/result_final<20>202  (
    .I0(\EX/ALU/adder/mux_3/out<3>1_map10 ),
    .I1(N10631),
    .I2(\EX/ALU/adder/mux_3/out<3>1_map27 ),
    .I3(N10630),
    .LO(\EX/ALU/result_final<20>_map51 )
  );
  defparam \EX/ALU/result_final<12>171_SW0 .INIT = 16'hFFA8;
  LUT4_L \EX/ALU/result_final<12>171_SW0  (
    .I0(\EX/ALU/N88 ),
    .I1(N10565),
    .I2(N10633),
    .I3(\EX/ALU/result_final<12>_map19 ),
    .LO(N10451)
  );
  defparam \EX/ALU/adder/co_61_SW1 .INIT = 16'h8A80;
  LUT4_L \EX/ALU/adder/co_61_SW1  (
    .I0(\EX/ALU/result_final<0>_map72 ),
    .I1(N10353),
    .I2(N10505),
    .I3(N10352),
    .LO(N10636)
  );
  defparam \EX/ALU/result_final<0>349 .INIT = 16'hCDC8;
  LUT4_L \EX/ALU/result_final<0>349  (
    .I0(\EX/ALU/adder/mux_3/out<3>1_map10 ),
    .I1(N10639),
    .I2(\EX/ALU/adder/mux_3/out<3>1_map27 ),
    .I3(N10638),
    .LO(\EX/ALU/result_final<0>_map82 )
  );
  defparam \EX/ALU/result_final<18>131_SW0 .INIT = 16'hF8F0;
  LUT4_L \EX/ALU/result_final<18>131_SW0  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/N79 ),
    .I2(\EX/ALU/result_final<18>_map38 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[2] ),
    .LO(N10621)
  );
  defparam \EX/ALU/result_final<19>131_SW0 .INIT = 16'hF8F0;
  LUT4_L \EX/ALU/result_final<19>131_SW0  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/N79 ),
    .I2(\EX/ALU/result_final<19>_map38 ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[3] ),
    .LO(N10619)
  );
  defparam \EX/ALU/result_final<21>87 .INIT = 16'hF8FD;
  LUT4_L \EX/ALU/result_final<21>87  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh[37] ),
    .I2(\EX/ALU/result_final<21>_map23 ),
    .I3(N10641),
    .LO(\EX/ALU/result_final<21>_map24 )
  );
  defparam \EX/ALU/result_final<30>176 .INIT = 16'hECFD;
  LUT4_L \EX/ALU/result_final<30>176  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/result_final<30>_map36 ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[46] ),
    .I3(N10647),
    .LO(\EX/ALU/result_final<30>_map40 )
  );
  defparam \EX/Mmux_B_temp1_SW2_SW0 .INIT = 16'h6667;
  LUT4_L \EX/Mmux_B_temp1_SW2_SW0  (
    .I0(\Addr_id_ex/q[8] ),
    .I1(\MM_mem_wb/q_3_4_145 ),
    .I2(N3134),
    .I3(\MM_mem_wb/q_2_17_170 ),
    .LO(N10663)
  );
  defparam \EX/ALU/result_final<13>168 .INIT = 16'h4051;
  LUT4_L \EX/ALU/result_final<13>168  (
    .I0(\EX/ALU/N1 ),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0004_Sh[17] ),
    .I3(N1164),
    .LO(\EX/ALU/result_final<13>_map41 )
  );
  defparam \ID/Z50 .INIT = 16'hFFF6;
  LUT4_L \ID/Z50  (
    .I0(JrAddr[31]),
    .I1(RtData_id[31]),
    .I2(\ID/Z_xor0018 ),
    .I3(N10551),
    .LO(\ID/Z_map18 )
  );
  defparam \EX/ALU/result_final<3>176_SW0 .INIT = 16'h8C04;
  LUT4_L \EX/ALU/result_final<3>176_SW0  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/N82 ),
    .I2(N571),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[15] ),
    .LO(N10686)
  );
  defparam \EX/ALU/Mxor__xor0000_Result<28>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<28>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[28]),
    .LO(N11838),
    .O(\EX/ALU/_xor0000 [28])
  );
  defparam \EX/ALU/Mxor__xor0000_Result<27>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<27>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[27]),
    .LO(N11839),
    .O(\EX/ALU/_xor0000 [27])
  );
  defparam \EX/ALU/result_final<7>142_SW0_SW0 .INIT = 16'hFFA8;
  LUT4_L \EX/ALU/result_final<7>142_SW0_SW0  (
    .I0(\EX/ALU/N88 ),
    .I1(N10435),
    .I2(N10690),
    .I3(\EX/ALU/N58 ),
    .LO(N10657)
  );
  defparam \EX/ALU/result_final<6>144_SW0_SW0 .INIT = 16'hFFA8;
  LUT4_L \EX/ALU/result_final<6>144_SW0_SW0  (
    .I0(\EX/ALU/N88 ),
    .I1(N10437),
    .I2(N10692),
    .I3(\EX/ALU/N58 ),
    .LO(N10659)
  );
  defparam \EX/ALU/adder/mux_1/out<3>171_SW0 .INIT = 4'h9;
  LUT2_L \EX/ALU/adder/mux_1/out<3>171_SW0  (
    .I0(\EX/ALU/_xor0000 [7]),
    .I1(ALU_A_7_OBUF_60),
    .LO(N10696)
  );
  defparam \EX/ALU/Mshift_result_final_shift0003_Result<30>260_SW0 .INIT = 4'hE;
  LUT2_L \EX/ALU/Mshift_result_final_shift0003_Result<30>260_SW0  (
    .I0(\EX/ALU/Mshift_result_final_shift0003_Result<30>2_map5 ),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Result<30>2_map11 ),
    .LO(N10706)
  );
  defparam \EX/ALU/result_final<17>110_SW0 .INIT = 16'h5410;
  LUT4_L \EX/ALU/result_final<17>110_SW0  (
    .I0(N10708),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[17] ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[9] ),
    .LO(N10649)
  );
  defparam \EX/ALU/adder/mux_2/out<2>1_SW3 .INIT = 8'h96;
  LUT3_L \EX/ALU/adder/mux_2/out<2>1_SW3  (
    .I0(N5448),
    .I1(\EX/ALU/_xor0000 [10]),
    .I2(ALU_A_10_OBUF_57),
    .LO(N10719)
  );
  defparam \EX/ALU/adder/co_21_SW3 .INIT = 16'h9666;
  LUT4_L \EX/ALU/adder/co_21_SW3  (
    .I0(\EX/ALU/_xor0000 [12]),
    .I1(ALU_A_12_OBUF_55),
    .I2(\EX/ALU/_xor0000 [11]),
    .I3(ALU_A_11_OBUF_56),
    .LO(N10740)
  );
  defparam \EX/ALU/Mshift_result_final_shift0005_Sh<59>1_SW0 .INIT = 16'hE0A0;
  LUT4_L \EX/ALU/Mshift_result_final_shift0005_Sh<59>1_SW0  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_2_OBUF_65),
    .I2(ALU_B_31_OBUF_68),
    .I3(ALU_A_3_OBUF_64),
    .LO(N10799)
  );
  defparam \EX/ALU/adder/mux_3/out<3>165_SW1 .INIT = 16'h88E8;
  LUT4_L \EX/ALU/adder/mux_3/out<3>165_SW1  (
    .I0(ALU_A_15_OBUF_52),
    .I1(\EX/ALU/_xor0000 [15]),
    .I2(N10342),
    .I3(\EX/ALU/adder/mux_3/out<3>1_map10 ),
    .LO(N10803)
  );
  defparam \EX/ALU/adder/mux_3/out<3>165_SW2 .INIT = 16'hDC8C;
  LUT4_L \EX/ALU/adder/mux_3/out<3>165_SW2  (
    .I0(\EX/ALU/adder/mux_3/out<3>1_map10 ),
    .I1(N10339),
    .I2(N10341),
    .I3(N10338),
    .LO(N10805)
  );
  defparam \EX/ALU/adder/mux_3/out<3>165_SW4 .INIT = 16'hFB40;
  LUT4_L \EX/ALU/adder/mux_3/out<3>165_SW4  (
    .I0(\EX/ALU/adder/mux_3/out<3>1_map10 ),
    .I1(N10341),
    .I2(N10349),
    .I3(N10350),
    .LO(N10808)
  );
  defparam \EX/ALU/adder/mux_3/out<3>165_SW7 .INIT = 16'hFB40;
  LUT4_L \EX/ALU/adder/mux_3/out<3>165_SW7  (
    .I0(\EX/ALU/adder/mux_3/out<3>1_map10 ),
    .I1(N10342),
    .I2(N10410),
    .I3(N10411),
    .LO(N10812)
  );
  defparam \EX/ALU/adder/mux_3/out<3>165_SW8 .INIT = 16'h96C3;
  LUT4_L \EX/ALU/adder/mux_3/out<3>165_SW8  (
    .I0(\EX/ALU/adder/mux_3/out<3>1_map10 ),
    .I1(\EX/ALU/_xor0000 [15]),
    .I2(ALU_A_15_OBUF_52),
    .I3(N10341),
    .LO(N10814)
  );
  defparam \EX/ALU/adder/mux_3/out<3>165_SW11 .INIT = 16'hCCAC;
  LUT4_L \EX/ALU/adder/mux_3/out<3>165_SW11  (
    .I0(N10588),
    .I1(N10589),
    .I2(N10342),
    .I3(\EX/ALU/adder/mux_3/out<3>1_map10 ),
    .LO(N10818)
  );
  defparam \IF/PC_in<31>7_SW1 .INIT = 16'h99F9;
  LUT4_L \IF/PC_in<31>7_SW1  (
    .I0(\IF/PC [31]),
    .I1(\IF/pcAdd4/N21 ),
    .I2(\ID/Z701_174 ),
    .I3(N10820),
    .LO(N10508)
  );
  defparam \EX/ALU/result_final<14>227_SW0 .INIT = 16'hFF48;
  LUT4_L \EX/ALU/result_final<14>227_SW0  (
    .I0(N6282),
    .I1(\EX/ALU/N0 ),
    .I2(N10449),
    .I3(\EX/ALU/result_final<14>_map19 ),
    .LO(N10822)
  );
  defparam \EX/ALU/result_final<29>88 .INIT = 16'hB080;
  LUT4_L \EX/ALU/result_final<29>88  (
    .I0(ALU_B_31_OBUF_68),
    .I1(\EX/ALU/N1 ),
    .I2(\EX/ALU/N88 ),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[61] ),
    .LO(\EX/ALU/result_final<29>_map23 )
  );
  defparam \EX/ALU/result_final<31>149 .INIT = 16'hF4F0;
  LUT4_L \EX/ALU/result_final<31>149  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/result_final<31>_map36 ),
    .I3(\EX/ALU/N37 ),
    .LO(\EX/ALU/result_final<31>_map38 )
  );
  defparam \EX/ALU/result_final<1>243 .INIT = 16'h080F;
  LUT4_L \EX/ALU/result_final<1>243  (
    .I0(\EX/ALU/N23 ),
    .I1(\EX/ALU/N93 ),
    .I2(ALU_A_2_OBUF_65),
    .I3(N10829),
    .LO(\EX/ALU/result_final<1>_map59 )
  );
  defparam \EX/ALU/result_final<10>177_SW0 .INIT = 16'hFFEA;
  LUT4_L \EX/ALU/result_final<10>177_SW0  (
    .I0(\EX/ALU/N58 ),
    .I1(\EX/ALU/result_final<10>_map40 ),
    .I2(\EX/ALU/N83 ),
    .I3(N10831),
    .LO(N10611)
  );
  defparam \EX/ALU/result_final<3>96_SW0 .INIT = 8'hBF;
  LUT3_L \EX/ALU/result_final<3>96_SW0  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[43] ),
    .LO(N10835)
  );
  defparam \ID/Z227 .INIT = 16'h3F3A;
  LUT4_L \ID/Z227  (
    .I0(\ID/MultiRegisters/RsData_cmp_eq0000 ),
    .I1(N10844),
    .I2(\ID/RsSel ),
    .I3(N10843),
    .LO(\ID/Z_map72 )
  );
  defparam \ID/Z240_SW0 .INIT = 16'h0001;
  LUT4_L \ID/Z240_SW0  (
    .I0(\ID/MultiRegisters/_varindex0000 [2]),
    .I1(\ID/MultiRegisters/_varindex0000 [29]),
    .I2(\ID/MultiRegisters/_varindex0000 [28]),
    .I3(\ID/MultiRegisters/_varindex0000 [27]),
    .LO(N10846)
  );
  defparam \ID/Z264_SW0 .INIT = 16'h0001;
  LUT4_L \ID/Z264_SW0  (
    .I0(\ID/MultiRegisters/_varindex0000 [5]),
    .I1(\ID/MultiRegisters/_varindex0000 [4]),
    .I2(\ID/MultiRegisters/_varindex0000 [3]),
    .I3(\ID/MultiRegisters/_varindex0000 [30]),
    .LO(N10849)
  );
  defparam \ID/Z277_SW0 .INIT = 16'h0001;
  LUT4_L \ID/Z277_SW0  (
    .I0(\ID/MultiRegisters/_varindex0000 [8]),
    .I1(\ID/MultiRegisters/_varindex0000 [7]),
    .I2(\ID/MultiRegisters/_varindex0000 [6]),
    .I3(\ID/MultiRegisters/_varindex0000 [16]),
    .LO(N10852)
  );
  defparam \ID/Z151_SW0 .INIT = 16'h0001;
  LUT4_L \ID/Z151_SW0  (
    .I0(\ID/MultiRegisters/_varindex0000 [15]),
    .I1(\ID/MultiRegisters/_varindex0000 [14]),
    .I2(\ID/MultiRegisters/_varindex0000 [13]),
    .I3(\ID/MultiRegisters/_varindex0000 [10]),
    .LO(N10855)
  );
  defparam \ID/Z175_SW0 .INIT = 16'h0001;
  LUT4_L \ID/Z175_SW0  (
    .I0(\ID/MultiRegisters/_varindex0000 [1]),
    .I1(\ID/MultiRegisters/_varindex0000 [19]),
    .I2(\ID/MultiRegisters/_varindex0000 [18]),
    .I3(\ID/MultiRegisters/_varindex0000 [17]),
    .LO(N10858)
  );
  defparam \ID/Z188_SW0 .INIT = 16'h0001;
  LUT4_L \ID/Z188_SW0  (
    .I0(\ID/MultiRegisters/_varindex0000 [22]),
    .I1(\ID/MultiRegisters/_varindex0000 [21]),
    .I2(\ID/MultiRegisters/_varindex0000 [20]),
    .I3(\ID/MultiRegisters/_varindex0000 [12]),
    .LO(N10861)
  );
  defparam \ID/Z10_SW0 .INIT = 16'h7DBE;
  LUT4_L \ID/Z10_SW0  (
    .I0(JrAddr[26]),
    .I1(JrAddr[25]),
    .I2(RtData_id[25]),
    .I3(RtData_id[26]),
    .LO(N10864)
  );
  defparam \EX/ALU/result_final<9>110_SW0_SW0_SW0 .INIT = 16'hFFEC;
  LUT4_L \EX/ALU/result_final<9>110_SW0_SW0_SW0  (
    .I0(\EX/ALU/N83 ),
    .I1(\EX/ALU/N58 ),
    .I2(\EX/ALU/result_final<9>_map26 ),
    .I3(\EX/ALU/result_final<9>_map20 ),
    .LO(N10902)
  );
  defparam \EX/ALU/result_final<4>124_SW0 .INIT = 16'hFDEC;
  LUT4_L \EX/ALU/result_final<4>124_SW0  (
    .I0(\EX/ALU/result_final<4>_map33 ),
    .I1(\EX/ALU/result_final<4>_map52 ),
    .I2(N10905),
    .I3(N10904),
    .LO(N10607)
  );
  defparam \EX/ALU/result_final<2>176 .INIT = 16'hFF40;
  LUT4_L \EX/ALU/result_final<2>176  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/N66 ),
    .I3(N10688),
    .LO(\EX/ALU/result_final<2>_map44 )
  );
  defparam \EX/ALU/result_final<2>133 .INIT = 16'hAAA8;
  LUT4_L \EX/ALU/result_final<2>133  (
    .I0(\EX/ALU/N88 ),
    .I1(\EX/ALU/result_final<2>_map31 ),
    .I2(\EX/ALU/result_final<2>_map23 ),
    .I3(N10913),
    .LO(\EX/ALU/result_final<2>_map34 )
  );
  defparam \ID/Z138 .INIT = 16'h5C00;
  LUT4_L \ID/Z138  (
    .I0(N10916),
    .I1(N10915),
    .I2(\ID/RsSel ),
    .I3(ALUCode_id[2]),
    .LO(\ID/Z_map41 )
  );
  defparam \EX/ALU/overflow_xor00001 .INIT = 16'h2D78;
  LUT4_D \EX/ALU/overflow_xor00001  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(ALU_A_31_OBUF_36),
    .I3(MemWriteData_ex[31]),
    .LO(N11840),
    .O(\EX/ALU/overflow_xor0000 )
  );
  defparam \EX/ALU/Mxor__xor0000_Result<31>1 .INIT = 16'hD287;
  LUT4_D \EX/ALU/Mxor__xor0000_Result<31>1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(\EX/ALU/result_final_cmp_eq0000 ),
    .I3(MemWriteData_ex[31]),
    .LO(N11841),
    .O(\EX/ALU/_xor0000 [31])
  );
  defparam \EX/ALU/result_final<22>2 .INIT = 16'hBAAA;
  LUT4_L \EX/ALU/result_final<22>2  (
    .I0(\EX/ALU/N80 ),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[62] ),
    .I3(ALU_A_3_OBUF_64),
    .LO(\EX/ALU/result_final<22>_map1 )
  );
  defparam \EX/ALU_A<2>13_SW0 .INIT = 16'hA0C0;
  LUT4_L \EX/ALU_A<2>13_SW0  (
    .I0(MemDout_wb_2_OBUF_33),
    .I1(\Data_mem_wb/q [2]),
    .I2(\EX/ForwardA_0_and0001_map21 ),
    .I3(\MM_mem_wb/q [6]),
    .LO(N10320)
  );
  defparam \EX/ALU/result_final<3>72 .INIT = 16'h0010;
  LUT4_L \EX/ALU/result_final<3>72  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[3] ),
    .I3(ALU_A_3_OBUF_64),
    .LO(\EX/ALU/result_final<3>_map18 )
  );
  defparam \EX/ALU/result_final<26>128_SW0 .INIT = 16'h0A1B;
  LUT4_L \EX/ALU/result_final<26>128_SW0  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Result<30>2_map5 ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[18] ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Result<30>2_map11 ),
    .LO(N11048)
  );
  defparam \EX/ALU/result_final<27>127_SW0 .INIT = 8'hE4;
  LUT3_L \EX/ALU/result_final<27>127_SW0  (
    .I0(ALU_A_3_OBUF_64),
    .I1(\EX/ALU/Mshift_result_final_shift0003_Sh[23] ),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[15] ),
    .LO(N11050)
  );
  defparam \EX/Mmux_B_temp1_SW0 .INIT = 16'hACAA;
  LUT4_L \EX/Mmux_B_temp1_SW0  (
    .I0(\Data_id_ex/q[0] ),
    .I1(\Data_ex_mem/q [37]),
    .I2(\EX/ForwardB_0_cmp_ne0000 ),
    .I3(N10295),
    .LO(N10035)
  );
  defparam \EX/ALU/result_final<0>267_SW0_SW0 .INIT = 8'hFE;
  LUT3_D \EX/ALU/result_final<0>267_SW0_SW0  (
    .I0(\EX/ALU_A<4>59_164 ),
    .I1(\EX/ALU_A<2>59_163 ),
    .I2(\EX/ALU_A<3>59_175 ),
    .LO(N11842),
    .O(N11054)
  );
  defparam \EX/ALU_A<24>_SW1_SW0 .INIT = 16'hFF57;
  LUT4_D \EX/ALU_A<24>_SW1_SW0  (
    .I0(\WB_ex_mem/q [0]),
    .I1(\Data_ex_mem/q [1]),
    .I2(N9236),
    .I3(\EX/ForwardA_0_cmp_ne0001_map17 ),
    .LO(N11843),
    .O(N11056)
  );
  defparam \IF/pcAdd4/co_11_SW0 .INIT = 8'h80;
  LUT3_L \IF/pcAdd4/co_11_SW0  (
    .I0(\IF/PC [2]),
    .I1(\IF/PC [6]),
    .I2(\IF/PC [5]),
    .LO(N11064)
  );
  defparam \EX/ALU/result_final<16>90_SW0 .INIT = 16'hAEBF;
  LUT4_L \EX/ALU/result_final<16>90_SW0  (
    .I0(ALU_A_2_OBUF_65),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[8] ),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[16] ),
    .LO(N11066)
  );
  defparam \EX/ALU/result_final<21>145 .INIT = 16'hCC04;
  LUT4_L \EX/ALU/result_final<21>145  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/N88 ),
    .I2(N11070),
    .I3(\EX/ALU/result_final<21>_map28 ),
    .LO(\EX/ALU/result_final<21>_map36 )
  );
  defparam \EX/ALU/result_final<11>176_SW0 .INIT = 16'h5410;
  LUT4_L \EX/ALU/result_final<11>176_SW0  (
    .I0(ALU_A_3_OBUF_64),
    .I1(ALU_A_4_OBUF_63),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[43] ),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[59] ),
    .LO(N11074)
  );
  defparam \EX/ALU_A<24>_SW0 .INIT = 16'h5553;
  LUT4_L \EX/ALU_A<24>_SW0  (
    .I0(\Data_id_ex/q[56] ),
    .I1(\Data_ex_mem/q [61]),
    .I2(N11056),
    .I3(\EX/ForwardA_0_cmp_ne0001_map6 ),
    .LO(N3780)
  );
  defparam \EX/ALU_A<22>_SW0 .INIT = 16'h5553;
  LUT4_L \EX/ALU_A<22>_SW0  (
    .I0(\Data_id_ex/q[54] ),
    .I1(\Data_ex_mem/q [59]),
    .I2(N11056),
    .I3(\EX/ForwardA_0_cmp_ne0001_map6 ),
    .LO(N4702)
  );
  defparam \EX/ALU_A<21>_SW0 .INIT = 16'h5553;
  LUT4_L \EX/ALU_A<21>_SW0  (
    .I0(\Data_id_ex/q[53] ),
    .I1(\Data_ex_mem/q [58]),
    .I2(N11056),
    .I3(\EX/ForwardA_0_cmp_ne0001_map6 ),
    .LO(N4705)
  );
  defparam \EX/ALU/result_final<26>155_SW0 .INIT = 16'h8C04;
  LUT4_L \EX/ALU/result_final<26>155_SW0  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/N75 ),
    .I2(N11084),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[42] ),
    .LO(N10561)
  );
  defparam \EX/ALU/result_final<14>135 .INIT = 16'hF2F7;
  LUT4_L \EX/ALU/result_final<14>135  (
    .I0(ALU_A_4_OBUF_63),
    .I1(N11090),
    .I2(\EX/ALU/result_final<14>_map36 ),
    .I3(N11089),
    .LO(\EX/ALU/result_final<14>_map37 )
  );
  defparam \EX/ALU/result_final<27>144 .INIT = 16'h8C04;
  LUT4_L \EX/ALU/result_final<27>144  (
    .I0(ALU_A_4_OBUF_63),
    .I1(\EX/ALU/N75 ),
    .I2(N11092),
    .I3(\EX/ALU/Mshift_result_final_shift0003_Sh[43] ),
    .LO(\EX/ALU/result_final<27>_map34 )
  );
  defparam \EX/ALU/adder/co_41_SW0_G .INIT = 16'hFEC8;
  LUT4_L \EX/ALU/adder/co_41_SW0_G  (
    .I0(ALU_A_19_OBUF_48),
    .I1(ALU_A_20_OBUF_47),
    .I2(\EX/ALU/_xor0000 [19]),
    .I3(\EX/ALU/_xor0000 [20]),
    .LO(N11107)
  );
  defparam \EX/ALU/adder/co_31_SW0_G .INIT = 16'hFEC8;
  LUT4_L \EX/ALU/adder/co_31_SW0_G  (
    .I0(ALU_A_15_OBUF_52),
    .I1(ALU_A_16_OBUF_51),
    .I2(\EX/ALU/_xor0000 [15]),
    .I3(\EX/ALU/_xor0000 [16]),
    .LO(N11111)
  );
  defparam \EX/ALU/result_final<28>248_SW0_F .INIT = 16'h2882;
  LUT4_L \EX/ALU/result_final<28>248_SW0_F  (
    .I0(\EX/ALU/N0 ),
    .I1(ALU_B_28_OBUF_71),
    .I2(ALU_A_28_OBUF_39),
    .I3(\EX/ALU/result_final_cmp_eq0000 ),
    .LO(N11136)
  );
  defparam \EX/ALU/result_final<24>203_SW0_F .INIT = 16'h2882;
  LUT4_L \EX/ALU/result_final<24>203_SW0_F  (
    .I0(\EX/ALU/N0 ),
    .I1(ALU_B_24_OBUF_75),
    .I2(ALU_A_24_OBUF_43),
    .I3(\EX/ALU/result_final_cmp_eq0000 ),
    .LO(N11140)
  );
  defparam \ID/Decode/ALUtemp<2>83_SW0 .INIT = 16'h0577;
  LUT4_L \ID/Decode/ALUtemp<2>83_SW0  (
    .I0(\if_id/q[26] ),
    .I1(\ID/N13 ),
    .I2(N10563),
    .I3(\ID/N11 ),
    .LO(N11381)
  );
  defparam \EX/ALU/result_final<0>11 .INIT = 16'h5410;
  LUT4_D \EX/ALU/result_final<0>11  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(\EX/ALU/N73 ),
    .I3(\EX/ALU/N72 ),
    .LO(N11844),
    .O(\EX/ALU/N0 )
  );
  defparam \EX/ALU/result_final<0>41 .INIT = 16'h6240;
  LUT4_D \EX/ALU/result_final<0>41  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(\EX/ALU/N73 ),
    .I3(\EX/ALU/N72 ),
    .LO(N11845),
    .O(\EX/ALU/N68 )
  );
  defparam \EX/ALU/result_final<31>111 .INIT = 16'hA888;
  LUT4_D \EX/ALU/result_final<31>111  (
    .I0(\EX_id_ex/q [3]),
    .I1(\EX/ALU/N145 ),
    .I2(\EX/ALU/N73 ),
    .I3(\EX_id_ex/q [4]),
    .LO(N11846),
    .O(\EX/ALU/N140 )
  );
  defparam \EX/ALU/result_final<1>201 .INIT = 16'hA820;
  LUT4_L \EX/ALU/result_final<1>201  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_3_OBUF_64),
    .I2(\EX/ALU/Mshift_result_final_shift0005_Sh[49] ),
    .I3(\EX/ALU/Mshift_result_final_shift0005_Sh[57] ),
    .LO(\EX/ALU/result_final<1>_map50 )
  );
  defparam \EX/ALU/result_final<19>116_SW0 .INIT = 16'hF2F7;
  LUT4_L \EX/ALU/result_final<19>116_SW0  (
    .I0(ALU_A_2_OBUF_65),
    .I1(\EX/ALU/Mshift_result_final_shift0004_Sh[23] ),
    .I2(ALU_A_3_OBUF_64),
    .I3(\EX/ALU/Mshift_result_final_shift0004_Sh[19] ),
    .LO(N11389)
  );
  defparam \EX/ALU/result_final<0>3 .INIT = 16'h2000;
  LUT4_D \EX/ALU/result_final<0>3  (
    .I0(\EX/ALU/result_final_or0002 ),
    .I1(N11401),
    .I2(\EX_id_ex/q [7]),
    .I3(\EX/ALU/result_final_shift0002 [31]),
    .LO(N11847),
    .O(\EX/ALU/N58 )
  );
  defparam \EX/ALU/result_final<2>76_SW0 .INIT = 16'h0010;
  LUT4_L \EX/ALU/result_final<2>76_SW0  (
    .I0(ALU_A_4_OBUF_63),
    .I1(ALU_A_2_OBUF_65),
    .I2(\EX/ALU/Mshift_result_final_shift0003_Sh[2] ),
    .I3(ALU_A_3_OBUF_64),
    .LO(N11062)
  );
  defparam \ID/Z688_SW0_SW0 .INIT = 16'hAA8A;
  LUT4_L \ID/Z688_SW0_SW0  (
    .I0(ALUCode_id[3]),
    .I1(\if_id/q[28] ),
    .I2(\ID/Decode/ALUtemp<4>_map18 ),
    .I3(\if_id/q[31] ),
    .LO(N11407)
  );
  defparam \EX/ALU/adder/co_51_SW1 .INIT = 4'hD;
  LUT2_D \EX/ALU/adder/co_51_SW1  (
    .I0(\EX/ALU/adder/mux_6/out<3>1_map26 ),
    .I1(N11105),
    .LO(N11848),
    .O(N10333)
  );
  defparam \EX/ALU/adder/co_51_SW0 .INIT = 4'hD;
  LUT2_D \EX/ALU/adder/co_51_SW0  (
    .I0(\EX/ALU/adder/mux_6/out<3>1_map26 ),
    .I1(N11103),
    .LO(N11849),
    .O(N10332)
  );
  defparam \EX/ForwardA_1_and0001_1 .INIT = 16'h0C08;
  LUT4_L \EX/ForwardA_1_and0001_1  (
    .I0(\Data_ex_mem/q [1]),
    .I1(\WB_ex_mem/q [0]),
    .I2(\EX/ForwardA_0_cmp_ne0001 ),
    .I3(N9236),
    .LO(\EX/ForwardA_1_and0001_136 )
  );
  defparam \EX/ALU_B<31>1_1 .INIT = 8'hD8;
  LUT3_D \EX/ALU_B<31>1_1  (
    .I0(\EX_id_ex/q [1]),
    .I1(\Addr_id_ex/q[4] ),
    .I2(MemWriteData_ex[31]),
    .LO(N11850),
    .O(\EX/ALU_B<31>1_140 )
  );
  defparam \EX/ALU/result_final<0>61_1 .INIT = 16'h0100;
  LUT4_D \EX/ALU/result_final<0>61_1  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(\EX/ALU/result_final_or0002 ),
    .I3(\EX/ALU/N144 ),
    .LO(N11851),
    .O(\EX/ALU/result_final<0>61_165 )
  );
  defparam \EX/ALU/result_final<0>71_1 .INIT = 16'h0400;
  LUT4_D \EX/ALU/result_final<0>71_1  (
    .I0(\EX_id_ex/q [4]),
    .I1(\EX_id_ex/q [3]),
    .I2(\EX/ALU/result_final_or0002 ),
    .I3(\EX/ALU/N144 ),
    .LO(N11852),
    .O(\EX/ALU/result_final<0>71_168 )
  );
  defparam \ID/Z701_1 .INIT = 16'h3237;
  LUT4_D \ID/Z701_1  (
    .I0(\ID/Z_map165 ),
    .I1(N10462),
    .I2(\ID/Z_map35 ),
    .I3(N10461),
    .LO(N11853),
    .O(\ID/Z701_174 )
  );
  DataRAM DataRAM (
    .clk(clk_BUFGP_0),
    .we(\MM_ex_mem/q [0]),
    .dout({MemDout_wb_31_OBUF_4, MemDout_wb_30_OBUF_5, MemDout_wb_29_OBUF_6, MemDout_wb_28_OBUF_7, MemDout_wb_27_OBUF_8, MemDout_wb_26_OBUF_9, 
MemDout_wb_25_OBUF_10, MemDout_wb_24_OBUF_11, MemDout_wb_23_OBUF_12, MemDout_wb_22_OBUF_13, MemDout_wb_21_OBUF_14, MemDout_wb_20_OBUF_15, 
MemDout_wb_19_OBUF_16, MemDout_wb_18_OBUF_17, MemDout_wb_17_OBUF_18, MemDout_wb_16_OBUF_19, MemDout_wb_15_OBUF_20, MemDout_wb_14_OBUF_21, 
MemDout_wb_13_OBUF_22, MemDout_wb_12_OBUF_23, MemDout_wb_11_OBUF_24, MemDout_wb_10_OBUF_25, MemDout_wb_9_OBUF_26, MemDout_wb_8_OBUF_27, 
MemDout_wb_7_OBUF_28, MemDout_wb_6_OBUF_29, MemDout_wb_5_OBUF_30, MemDout_wb_4_OBUF_31, MemDout_wb_3_OBUF_32, MemDout_wb_2_OBUF_33, 
MemDout_wb_1_OBUF_34, MemDout_wb_0_OBUF_35}),
    .din({\Data_ex_mem/q [36], \Data_ex_mem/q [35], \Data_ex_mem/q [34], \Data_ex_mem/q [33], \Data_ex_mem/q [32], \Data_ex_mem/q [31], 
\Data_ex_mem/q [30], \Data_ex_mem/q [29], \Data_ex_mem/q [28], \Data_ex_mem/q [27], \Data_ex_mem/q [26], \Data_ex_mem/q [25], \Data_ex_mem/q [24], 
\Data_ex_mem/q [23], \Data_ex_mem/q [22], \Data_ex_mem/q [21], \Data_ex_mem/q [20], \Data_ex_mem/q [19], \Data_ex_mem/q [18], \Data_ex_mem/q [17], 
\Data_ex_mem/q [16], \Data_ex_mem/q [15], \Data_ex_mem/q [14], \Data_ex_mem/q [13], \Data_ex_mem/q [12], \Data_ex_mem/q [11], \Data_ex_mem/q [10], 
\Data_ex_mem/q [9], \Data_ex_mem/q [8], \Data_ex_mem/q [7], \Data_ex_mem/q [6], \Data_ex_mem/q [5]}),
    .addr({\Data_ex_mem/q [44], \Data_ex_mem/q [43], \Data_ex_mem/q [42], \Data_ex_mem/q [41], \Data_ex_mem/q [40], \Data_ex_mem/q [39]})
  );
endmodule


`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

