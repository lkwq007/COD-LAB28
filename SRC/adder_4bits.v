//==================================================================================================
//  Filename      : adder_4bits.v
//  Created On    : 2016-10-15 17:02:18
//  Last Modified : 2016-10-22 12:16:58
//  Revision      : 
//  Author        : Lnyan
//  Company       : College of Information Science and Electronic Engineering, Zhejiang University
//  Email         : lkwq007 [at] gmail.com
//
//  Description   : 
//
//
//==================================================================================================
module adder_4bits(a,b,ci,s,co);
	input[3:0] a,b;
	input ci;
	output[3:0] s;
	output co;
	wire[3:0] G,P,C;
	assign G=a&b;
	assign P=a|b;
	assign C=G|P&{C[2:0],ci};
	assign s=P&(~G)^{C[2:0],ci};
	assign co=C[3];
endmodule