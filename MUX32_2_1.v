`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:53:13 12/07/2014 
// Design Name: 
// Module Name:    MUX32_2_1 
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
module MUX32_2_1(
	 input [31:0] A,B,
	 input sel,
	 output [31:0] result
);
	assign result = (sel==1'b1)?B:A;
endmodule
