`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:47:27 12/08/2014 
// Design Name: 
// Module Name:    ID_EX 
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
module ID_EX(
    input clk,
    input RegWrite_D,
    input [1:0] MemtoReg_D,
	 input MemWrite_D,
    input [3:0] ALUControl_D,
    input ALUSrc_D,
    input [1:0]  RegDst_D,
    output reg  RegWrite_E,
    output reg [1:0] MemtoReg_E,
    output reg MemWrite_E,
    output reg [3:0] ALUControl_E,
    output reg ALUSrc_E,
    output reg [1:0] RegDst_E,
    input [31:0] RD1_D,
    input [31:0] RD2_D,
    output reg [31:0] RD1_E,
    output reg [31:0] RD2_E,
    input [4:0] RS_D,
    input [4:0] RT_D,
    input [4:0] RD_D,
    output reg [4:0] RS_E,
    output reg [4:0] RT_E,
    output reg [4:0] RD_E,
    input [31:0] SignImm_D,
    output reg [31:0] SignImm_E,
	 input Flush_E,
	 input reset,
	 input [31:0] npc_D,
	 output reg [31:0] npc_E,
	 input Jal_D,
	 output reg Jal_E,
	 input [4:0] Shamt_D,
	 output reg [4:0] Shamt_E,
	 input [1:0] ExtBE_D,
	 output reg [1:0] ExtBE_E,
	 input [2:0] ExtDM_D,
	 output reg [2:0] ExtDM_E,
	 input MFC_D,
	 output reg MFC_E,
	 input HiLo_D,
	 output reg HiLo_E,
	 input MDWrite_D,
	 output reg MDWrite_E,
	 input Start_D,
	 output reg Start_E,
	 input [1:0] MDControl_D,
	 output reg [1:0] MDControl_E
    );
	always @ (posedge clk)
	begin
		if(Flush_E | reset)
			begin
				RegWrite_E<=0;
				MemtoReg_E<=0;
				MemWrite_E<=0;
				ALUControl_E<=0;
				ALUSrc_E<=0;
				RegDst_E<=0;
				RD1_E<=0;
				RD2_E<=0;
				RS_E<=0;
				RT_E<=0;
				RD_E<=0;
				SignImm_E<=0;
				npc_E<=0;
				Jal_E<=0;
				Shamt_E<=0;
				ExtBE_E<=0;
				ExtDM_E<=0;
				MFC_E<=0;
				HiLo_E<=0;
				MDWrite_E<=0;
				Start_E<=0;
				MDControl_E<=0;
			end
			else
				begin
				RegWrite_E<=RegWrite_D;
				MemtoReg_E<=MemtoReg_D;
				MemWrite_E<=MemWrite_D;
				ALUControl_E<=ALUControl_D;
				ALUSrc_E<=ALUSrc_D;
				RegDst_E<=RegDst_D;
				RD1_E<=RD1_D;
				RD2_E<=RD2_D;
				RS_E<=RS_D;
				RT_E<=RT_D;
				RD_E<=RD_D;
				SignImm_E<=SignImm_D;
				npc_E<=npc_D;
				Jal_E<=Jal_D;
				Shamt_E<=Shamt_D;
				ExtBE_E<=ExtBE_D;
				ExtDM_E<=ExtDM_D;
				MFC_E<=MFC_D;
				HiLo_E<=HiLo_D;
				MDWrite_E<=MDWrite_D;
				Start_E<=Start_D;
				MDControl_E<=MDControl_D;
				end
			end				
endmodule
