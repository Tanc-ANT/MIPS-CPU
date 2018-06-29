`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:35:26 12/10/2014 
// Design Name: 
// Module Name:    ANDD 
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
module ANDD(
    input Equal_D,
    input Branch_D,
    output reg PCSrc_D
    );
	always@(*)
	begin
		if(Equal_D & Branch_D)
			PCSrc_D=1'b1;
		else
			PCSrc_D=1'b0;
	end

endmodule
