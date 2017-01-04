
module InstructionROM(addr,dout);
	input [5 : 0] addr;
	output [31 : 0] dout;
	//
	reg [31 : 0] dout;
	/*
	Instructions:
	J 0x000000B
	ADDI $t0 $zero 0x0042
	ADDI $t1 $zero 0x0004
	SUB $t2 $t0 $t1
	OR $t3 $t2 $t0
	SW $t3 0x000C $zero
	LW $t4 0x0008 $t1
	SLL $t0 $t4 0x02
	LW $t3 0x0008 $t1
	SLTU $t3 $t1 $t2
	J 0x000000A
	BNE $zero $zero 0x0001
	BEQ $zero $zero 0xFFF4
	 */
	always @(*)
		case (addr)
			6'd0:   dout=32'h0800000b ;
			6'd1:   dout=32'h20080042 ;
			6'd2:   dout=32'h20090004 ;
			6'd3:   dout=32'h01095022 ;
			6'd4:   dout=32'h01485825 ;
			6'd5:   dout=32'hac0b000c ;
			6'd6:   dout=32'h8d2c0008 ;
			6'd7:   dout=32'h000c4080 ;
			6'd8:   dout=32'h8d2b0008 ;
			6'd9:   dout=32'h012a582b ;
			6'd10:  dout=32'h0800000a ;
			6'd11:  dout=32'h14000001 ;
			6'd12:  dout=32'h1000fff4 ;
			6'd13:  dout=32'h00000000 ;
			default:dout=32'h00000000 ;
		endcase	
endmodule

