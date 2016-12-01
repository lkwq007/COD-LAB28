//==================================================================================================
//  Filename      : mux_2_to_1.v
//  Created On    : 2016-10-15 17:29:48
//  Last Modified : 2016-10-22 12:45:28
//  Revision      : 
//  Author        : Lnyan
//  Company       : College of Information Science and Electronic Engineering, Zhejiang University
//  Email         : lkwq007 [at] gmail.com
//
//  Description   : 
//
//
//==================================================================================================
module mux_2_to_1(sel,in1,in2,out);
	parameter N=4;
	input[N-1:0] in1,in2;
	input sel;
	output[N-1:0] out;
	assign out=sel==0?in1:in2;
endmodule