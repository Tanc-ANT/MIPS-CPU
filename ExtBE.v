`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:27:18 01/14/2015 
// Design Name: 
// Module Name:    ExtBE 
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
module ExtBE(
    input [1:0] ALUOut_M,
    input [1:0] ExtBE_M,
    output reg [3:0] BE
    );
	always @ (*)
	begin
		if(ExtBE_M==2'b01)
			BE=4'b1111;
		else if(ExtBE_M==2'b10)
			BE= (ALUOut_M==2'b00 | ALUOut_M==2'b01) ? 4'b0011 : (ALUOut_M==2'b10 | ALUOut_M==2'b11) ? 4'b1100 : 4'b0000;
		else if(ExtBE_M==2'b11)
			BE= (ALUOut_M==2'b00) ? 4'b0001 : (ALUOut_M==2'b01) ? 4'b0010 : (ALUOut_M==2'b10) ? 4'b0100 : (ALUOut_M==2'b11) ? 4'b1000 : 4'b0000;
	end
endmodule
