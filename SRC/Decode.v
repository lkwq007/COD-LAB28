//******************************************************************************
// //
// Decode.v
//
// - Decodes the instructions
// - branch instruction condition are also determined and whether
//   the branch PC should be used
// - ALU instructions are decoded and sent to the ALU
// - decode whether the instruction uses the Immediate field

//******************************************************************************

module Decode(
	// Outputs
	MemtoReg,RegWrite,MemWrite,MemRead,ALUCode,ALUSrcA,ALUSrcB,
	RegDst,J ,JR,

	// Inputs
Instruction
);


	input[31:0]	Instruction;			// current instruction
	output MemtoReg;			// use memory output as data to write into register
	output RegWrite;		// enable writing back to the register
	output MemWrite;			// write to memory
	output MemRead;
	output[4:0] ALUCode;     // ALU operation select
	output ALUSrcA,ALUSrcB;
	output RegDst;
	output J,JR;
	
	

//******************************************************************************
// instruction field
//******************************************************************************
	wire[5:0] op;
	wire[4:0] rt;
	wire[5:0] funct;
	assign op   =Instruction[31:26];
	assign funct=Instruction[5:0];
	assign rt   =Instruction[20:16];

//******************************************************************************
//R_type instruction decode
//******************************************************************************
	parameter R_type_op= 6'b000000;
	parameter ADD_funct =  6'b100000;
	parameter ADDU_funct = 6'b100001;
	parameter AND_funct =  6'b100100;
	parameter XOR_funct =  6'b100110;
	parameter OR_funct =   6'b100101;
	parameter NOR_funct =  6'b100111;
	parameter SUB_funct =  6'b100010;
	parameter SUBU_funct = 6'b100011;
	parameter SLT_funct =  6'b101010;
	parameter SLTU_funct = 6'b101011;	
	parameter SLL_funct= 6'b000000;
	parameter SLLV_funct=6'b000100;
	parameter SRL_funct= 6'b000010;
	parameter SRLV_funct=6'b000110;
	parameter SRA_funct= 6'b000011;
	parameter SRAV_funct=6'b000111;
	parameter JR_funct= 6'b001000;

//******************************************************************************
// R_type1 instruction decode
//******************************************************************************
	wire  ADD,ADDU,AND,NOR,OR,SLT,SLTU,SUB,SUBU,XOR,SLLV,SRAV,SRLV,R_type1;
	assign ADD	= (op == R_type_op) && (funct ==ADD_funct);
	assign ADDU	= (op == R_type_op) && (funct == ADDU_funct);
	assign AND	= (op == R_type_op) && (funct == AND_funct);
	assign NOR	= (op == R_type_op) && (funct == NOR_funct);
	assign OR	= (op == R_type_op) && (funct == OR_funct);
	assign SLT	= (op == R_type_op) && (funct == SLT_funct);
	assign SLTU	= (op == R_type_op) && (funct == SLTU_funct);
	assign SUB	= (op == R_type_op) && (funct == SUB_funct);
	assign SUBU	= (op == R_type_op) && (funct == SUBU_funct);
	assign XOR	= (op == R_type_op) && (funct == XOR_funct);
	assign SLLV	= (op == R_type_op) && (funct == SLLV_funct);
	assign SRAV	= (op == R_type_op) && (funct == SRAV_funct);
	assign SRLV	= (op == R_type_op) && (funct == SRLV_funct);

	assign R_type1 =ADD || ADDU || AND || NOR || OR || SLT || SLTU || SUB
				|| SUBU || XOR ||	SLLV || SRAV || SRLV;
	

//******************************************************************************
// R_type2 instruction decode
//******************************************************************************

	wire SLL,SRA,SRL,R_type2;
	assign SLL = (op ==  R_type_op) && (funct == SLL_funct) && (|Instruction);
	assign SRA = (op ==  R_type_op) && (funct == SRA_funct);
	assign SRL = (op ==  R_type_op) && (funct == SRL_funct);
	assign R_type2=SLL || SRA || SRL;
	
//******************************************************************************
// JR instruction decode
//******************************************************************************	
	
	assign JR = (op ==  R_type_op) && (funct == JR_funct);


//******************************************************************************
// branch instructions decode
//******************************************************************************
	parameter BEQ_op=  6'b000100;
	parameter BNE_op = 6'b000101;
	parameter BGEZ_op= 6'b000001;
	parameter BGEZ_rt= 5'b00001;
	parameter BGTZ_op= 6'b000111;
	parameter BGTZ_rt= 5'b00000;
	parameter BLEZ_op = 6'b000110;
	parameter BLEZ_rt = 5'b00000;
	parameter BLTZ_op= 6'b000001;
	parameter BLTZ_rt= 5'b00000;

	wire BEQ,BGEZ,BGTZ,BLEZ,BLTZ,BNE,Branch;
	
	assign BEQ  = (op ==BEQ_op );
	assign BNE  = (op ==BNE_op );
	assign BGEZ = (op == BGEZ_op) && (rt == BGEZ_rt);
	assign BGTZ = (op == BGTZ_op) && (rt== BGTZ_rt);
	assign BLEZ = (op == BLEZ_op) && (rt == BLEZ_rt);
	assign BLTZ = (op == BLTZ_op) && (rt ==BLTZ_rt);
	assign Branch=BEQ || BNE ||BGEZ  || BGTZ || BLEZ ||BLTZ;

//******************************************************************************
// Jump instructions decode
//******************************************************************************
	parameter	J_op=6'b000010;
	assign J=(op == J_op);


//******************************************************************************
// I_type instruction decode
//******************************************************************************	
	parameter ADDI_op = 6'b001000;
	parameter ADDIU_op= 6'b001001;
	parameter ANDI_op = 6'b001100;
	parameter XORI_op = 6'b001110;
	parameter ORI_op  = 6'b001101;
	parameter SLTI_op = 6'b001010;
	parameter SLTIU_op= 6'b001011;
	
	wire ADDI,ADDIU,ANDI,XORI,ORI,SLTI,SLTIU,I_type;
	assign ADDI = (op == ADDI_op);	
	assign ADDIU= (op == ADDIU_op);
	assign ANDI=  (op == ANDI_op);
	assign XORI=  (op == XORI_op);
	assign SLTI=  (op == SLTI_op);
	assign SLTIU= (op == SLTIU_op);
	assign ORI=   (op == ORI_op);
	
	assign I_type=ADDI || ADDIU || ANDI || XORI || ORI || SLTI || SLTIU;
//******************************************************************************
// SW ,LW instruction decode
//******************************************************************************	
	parameter SW_op=6'b101011;
	parameter LW_op=6'b100011;
	wire SW,LW;
	assign SW=(op==SW_op);
	assign LW=(op==LW_op);

	
//******************************************************************************
//  Control Singal
//******************************************************************************
	assign MemtoReg=LW;
	assign MemRead=LW;
	assign MemWrite=SW;
	assign RegWrite=LW||R_type1||R_type2||I_type;
	assign RegDst=R_type1||R_type2;
	assign ALUSrcA=R_type2;
	assign ALUSrcB=I_type||LW||SW;

//******************************************************************************
//  ALUCode
//******************************************************************************//

	parameter alu_add  = 5'b00000;
	parameter alu_and  = 5'b00001;
	parameter alu_xor  = 5'b00010;
	parameter alu_or   = 5'b00011;
	parameter alu_nor  = 5'b00100;
	parameter alu_sub  = 5'b00101;
	parameter alu_andi = 5'b00110;
	parameter alu_xori = 5'b00111;
	parameter alu_ori  = 5'b01000;
	parameter alu_jr   = 5'b01001;
	parameter alu_beq  = 5'b01010;
	parameter alu_bne  = 5'b01011;
	parameter alu_bgez = 5'b01100;
	parameter alu_bgtz = 5'b01101;
	parameter alu_blez = 5'b01110;
	parameter alu_bltz = 5'b01111;
	parameter alu_sll  = 5'b10000;
	parameter alu_srl  = 5'b10001;
	parameter alu_sra  = 5'b10010;
	parameter alu_slt  = 5'b10011;
	parameter alu_sltu = 5'b10100;

	reg[4:0] ALUtemp;
	reg[4:0] ALUfunct;
	//function interpreter
	always @(funct) begin
		case(funct)
		ADD_funct:ALUfunct=alu_add;
		ADDU_funct:ALUfunct=alu_add;
		AND_funct:ALUfunct=alu_and;
		XOR_funct:ALUfunct=alu_xor;
		OR_funct:ALUfunct=alu_or;
		NOR_funct:ALUfunct=alu_nor;
		SUB_funct:ALUfunct=alu_sub;
		SUBU_funct:ALUfunct=alu_sub;
		SLT_funct:ALUfunct=alu_slt;
		SLTU_funct:ALUfunct=alu_sltu;
		SLL_funct:ALUfunct=alu_sll;
		SLLV_funct:ALUfunct=alu_sll;
		SRL_funct:ALUfunct=alu_srl;
		SRLV_funct:ALUfunct=alu_srl;
		SRA_funct:ALUfunct=alu_sra;
		SRAV_funct:ALUfunct=alu_sra;
		default:ALUfunct=5'bx;
		endcase
	end
	//ALU coder
	always @(*) begin
		case(op)
		BEQ_op:ALUtemp=alu_beq;
		BNE_op:ALUtemp=alu_bne;
		BGEZ_op:ALUtemp=alu_bgez;
		BGTZ_op:ALUtemp=alu_bgtz;
		BLEZ_op:ALUtemp=alu_blez;
		//BLTZ_op:ALUtemp=alu_bltz;
		//same op code!
		R_type_op:ALUtemp=ALUfunct;
		ADDI_op:ALUtemp=alu_add;
		ADDIU_op:ALUtemp=alu_add;
		ANDI_op:ALUtemp=alu_andi;
		XORI_op:ALUtemp=alu_xori;
		ORI_op:ALUtemp=alu_ori;
		SLTI_op:ALUtemp=alu_slt;
		SLTIU_op:ALUtemp=alu_sltu;
		SW_op:ALUtemp=alu_add;
		LW_op:ALUtemp=alu_add;
		default:ALUtemp=5'bx;
		endcase
	end
	assign ALUCode=ALUtemp;
endmodule