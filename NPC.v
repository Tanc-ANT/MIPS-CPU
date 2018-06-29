`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:44:16 12/08/2014 
// Design Name: 
// Module Name:    NPC 
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
module NPC(
    input [31:0] pc,
    output reg [31:0] npc_F,
	 input reset
    );
	
	always @ (*)			
			if(reset)
				npc_F=32'h0000_3000;
			else
				npc_F=pc+4;
		
endmodule
