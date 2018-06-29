`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:54:30 12/07/2014 
// Design Name: 
// Module Name:    IM 
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
module IM(
    input [31:0] pc,
    output [31:0] instr_F
    );
	reg[31:0] RAM[65533:0];
	
	initial
		begin
			$readmemh("P6B.txt",RAM);
		end
		
		assign instr_F=RAM[pc[31:0]];

endmodule
