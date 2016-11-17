//******************************************************************************
// MIPS verilog model
//
// ALU.v
//
// The ALU performs all the arithmetic/logical integer operations 
// specified by the ALUsel from the decoder. 
// 
// verilog written QMJ
// modified by 
// modified by 
//
//******************************************************************************

module ALU (
	// Outputs
	Result,overflow,
	// Inputs
	ALUCode, A, B
);

	input [4:0]	ALUCode;				// Operation select
	input [31:0]	A, B;

	output [31:0]	Result;
	output overflow;

//******************************************************************************
// Shift operation: ">>>" will perform an arithmetic shift, but the operand
// must be reg signed
//******************************************************************************
	reg signed [31:0] B_reg;
	
	always @(B) begin
		B_reg = B;
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
	parameter    alu_jr =  5'b01001;
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


	
		
endmodule