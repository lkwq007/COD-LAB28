//******************************************************************************
// MIPS verilog model
//
// ALU.v
//
// The ALU performs all the arithmetic/logical integer operations 
// specified by the ALUsel from the decoder. 
// 
// verilog written QMJ
// modified by Lnyan
// modified by 
//
//******************************************************************************

module ALU(
	// Outputs
	Result,overflow,
	// Inputs
	ALUCode,A,B
);

	input [4:0]	ALUCode;// Operation select
	input [31:0] A,B;

	output [31:0] Result;
	output overflow;

//******************************************************************************
// Shift operation: ">>>" will perform an arithmetic shift,but the operand
// must be reg signed
//******************************************************************************
	reg signed [31:0] B_reg;
	
	always @(B) begin
		B_reg=B;
	end

// Decoded ALU operation select (ALUsel) signals
	parameter	 alu_add=  5'b00000;
	parameter	 alu_and=  5'b00001;
	parameter	 alu_xor=  5'b00010;
	parameter	 alu_or =  5'b00011;
	parameter	 alu_nor=  5'b00100;
	parameter	 alu_sub=  5'b00101;
	parameter	 alu_andi= 5'b00110;
	parameter	 alu_xori= 5'b00111;
	parameter	 alu_ori = 5'b01000;
	parameter	 alu_jr =  5'b01001;
	parameter	 alu_beq=  5'b01010;
	parameter	 alu_bne=  5'b01011;
	parameter	 alu_bgez= 5'b01100;
	parameter	 alu_bgtz= 5'b01101;
	parameter	 alu_blez= 5'b01110;
	parameter	 alu_bltz= 5'b01111;
	parameter 	 alu_sll=  5'b10000;
	parameter	 alu_srl=  5'b10001;
	parameter	 alu_sra=  5'b10010;	
	parameter	 alu_slt=  5'b10011;
	parameter	 alu_sltu= 5'b10100;
	
//******************************************************************************
// ALU Result datapath
//******************************************************************************
	// final result
	reg[31:0] result_final;
	assign Result=result_final;

	// invert operand?
	wire Binvert;
	assign Binvert=~(ALUCode==alu_add);
	
	// result wires
	//wire[31:0] result_add,result_and,result_xor,result_or,result_nor,result_sub,result_andi,result_xori,result_ori,result_jr,result_beq,result_bne,result_bgez,result_bgtz,result_blez,result_bltz,result_sll,result_srl,result_sra,result_slt,result_sltu,
	wire[31:0] result_sum;
	wire co;
	//module adder_32bits(a,b,ci,s,co);
	adder_32bits adder(.a(A),.b({32{Binvert}}^B),.ci(Binvert),.co(co),.s(result_sum));
	//adder_32bits adder(.a(A),.b({32{Binvert}}^B),.ci(Binvert),.co(),.s(result_add));

/*	assign result_and=A&B;
	assign result_xor=A^B;
	assign result_or=A|B;
	assign result_nor=~(A|B);
	assign result_sub=result_add;
	assign result_andi=A&{16`b0,B[15:0]};
	assign result_xori=A^{16`b0,B[15:0]};
	assign result_ori=A^{16'b0,B[15:0]};
	assign result_jr=A;
	assign result_beq=32`bx;
	assign result_bne=32`bx;
	assign result_bgez=32`bx;
	assign result_bgtz=32`bx;
	assign result_blez=32`bx;
	assign result_bltz=32`bx;
	assign result_sll=B<<A;
	assign result_srl=B>>A;
	assign result_slt=(A[31]&&(~B[31]))||((A[31]~^B[31])&&result_add[31]);
	assign result_sltu=((~A[31])&&B[31])||((A[31]~^B[31])&&result_add[31]);*/

	always @(A,B,ALUCode,result_sum,B_reg) begin
		case(ALUCode)
		alu_add:result_final=result_sum;
		alu_and:result_final=A&B;
		alu_xor:result_final=A^B;
		alu_or:result_final=A|B;
		alu_nor:result_final=~(A|B);
		alu_sub:result_final=result_sum;
		alu_andi:result_final=A&{16'b0,B[15:0]};
		alu_xori:result_final=A^{16'b0,B[15:0]};
		alu_ori:result_final=A^{16'b0,B[15:0]};
		alu_jr:result_final=A;
		alu_sll:result_final=B<<A;
		alu_srl:result_final=B>>A;
		alu_sra:result_final=B_reg>>>A;
		alu_slt:result_final=(A[31]&&(~B[31]))||((A[31]~^B[31])&&result_sum[31]);
		alu_sltu:result_final=((~A[31])&&B[31])||((A[31]~^B[31])&&result_sum[31]);
		default:result_final=32'bx;
		endcase
	end
	assign overflow=(ALUCode==alu_add?(A[31]~^B[31])&(A[31]^result_sum[31]):1'b0)|(ALUCode==alu_sub?(A[31]^B[31])&(A[31]^result_sum[31]):1'b0);
	
endmodule