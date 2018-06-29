`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:52:10 12/07/2014 
// Design Name: 
// Module Name:    MUX_5_2_1 
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
module MUX5_4_1(
	 input [4:0] A,B,C,
	 input [1:0] sel,
	 output reg [4:0] result
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
