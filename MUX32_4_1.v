`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:54:38 12/07/2014 
// Design Name: 
// Module Name:    MUX32_4_1 
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
module MUX32_4_1
(
	 input [31:0] A,B,C,D,
	 input [1:0] sel,
	 output reg [31:0] result
);
	always @ (*)
		begin
			case (sel)
				2'b00:result = A;
				2'b01:result = B;
				2'b10:result = C;
				2'b11:result = D;
			endcase
		end
endmodule

