`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:26:16 12/17/2014 
// Design Name: 
// Module Name:    MUX32_3_1 
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
module MUX32_3_1
(
	 input [31:0] A,B,C,
	 input [1:0] sel,
	 output reg [31:0] result
);
	always @ (*)
		begin
			case (sel)
				2'b00:result = A;
				2'b01:result = B;
				2'b10:result = C;
			endcase
		end
endmodule
