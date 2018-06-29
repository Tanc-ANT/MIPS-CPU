`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:18:20 12/07/2014 
// Design Name: 
// Module Name:    IF_ID 
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
module IF_ID(
    input clk,
    input [31:0] instr_F,
    input Stall_D,
    input PCSrc_D,
    input [31:0] npc_F,
    output reg [31:0] instr_D,
    output reg[31:0] npc_D,
	 input reset
    );
	always @ (posedge clk)
		begin
			if(reset)
			begin
				instr_D<=0;
				npc_D<=0;
			end
			else if(Stall_D)
			begin
				instr_D<=instr_D;
				npc_D<=npc_D;
			end
			else
			begin
				instr_D<=instr_F;
				npc_D<=npc_F;
			end
		end
endmodule
