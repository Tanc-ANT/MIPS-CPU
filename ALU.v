`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:48:38 12/06/2014 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0] A,
    input [31:0] B,
    input [3:0] ALUctr,
    output reg [31:0] result,
	 input reset,
	 input [4:0] Shamt_E
    );
	 
	 wire [4:0] ss ;
	 assign ss = (A[4:0] +Shamt_E);
	 
	 wire    [63:0] sraa;
	 assign  sraa= {{32{B[31]}},B} >> ss   ;
	 
	always @(*)
		if(reset)
			result=0;
		else 
		begin
		case(ALUctr[3:0])
			4'b0001:result= A+B ;
			4'b0010:result= A-B ;
			4'b0011:result= {1'b0,A} - {1'b0,B};
			4'b0100:result= A|B ;
			4'b0101:result= A^B ;
			4'b0110:result= ~(A|B) ;
			4'b0111:result= A&B;
			4'b1000:result= ($signed(A)<$signed(B)) ? 1:0;
			4'b1001:result= ({1'b0,A}<{1'b0,B})? 1:0;
			4'b1010:result= B<<ss;
			4'b1011:result= B>>ss;
			4'b1100:result= sraa[31:0];
			4'b1101:result= {B,16'b0};
		endcase
		end
endmodule
