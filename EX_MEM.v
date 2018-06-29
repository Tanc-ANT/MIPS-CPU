`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:10:03 12/08/2014 
// Design Name: 
// Module Name:    EX_MEM 
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
module EX_MEM(
    input clk,
    input RegWrite_E,
    input [1:0] MemtoReg_E,
    input MemWrite_E,
    input [31:0] ALUOut_E,
    input [31:0] WriteData_E,
    input [4:0] WriteReg_E,
    output reg RegWrite_M,
    output reg [1:0] MemtoReg_M,
    output reg MemWrite_M,
    output reg [31:0] ALUOut_M,
    output reg [31:0] WriteData_M,
    output reg [4:0] WriteReg_M,
	 input reset,
	 input [31:0] npc_E,
	 output reg [31:0] npc_M,
	 input Jal_E,
	 output reg Jal_M,
	 input [1:0] ExtBE_E,
	 output reg [1:0] ExtBE_M,
	 input [2:0] ExtDM_E,
	 output reg [2:0] ExtDM_M,
	 input [31:0] HL_E,
	 output reg [31:0] HL_M
    );
	always @(posedge clk)
		if(reset)
		begin
			RegWrite_M<=0;
			MemtoReg_M<=0;
			MemWrite_M<=0;
			ALUOut_M<=0;
			WriteData_M<=0;
			WriteReg_M<=0;
			npc_M<=0;
			Jal_M<=0;
			ExtBE_M<=0;
			ExtDM_M<=0;
			HL_M<=0;
		end
		
		else
		begin
			RegWrite_M<=RegWrite_E;
			MemtoReg_M<=MemtoReg_E;
			MemWrite_M<=MemWrite_E;
			ALUOut_M<=ALUOut_E;
			WriteData_M<=WriteData_E;
			WriteReg_M<=WriteReg_E;
			npc_M<=npc_E;
			Jal_M<=Jal_E;
			ExtBE_M<=ExtBE_E;
			ExtDM_M<=ExtDM_E;
			HL_M<=HL_E;
		end
endmodule
