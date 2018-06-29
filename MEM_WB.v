`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:34:21 12/08/2014 
// Design Name: 
// Module Name:    MEM_WB 
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
module MEM_WB(
    input clk,
    input RegWrite_M,
    input [1:0] MemtoReg_M,
    input [31:0] ReadData_M,
    input [31:0] ALUOut_M,
    input [4:0] WriteReg_M,
    output reg RegWrite_W,
    output reg [1:0] MemtoReg_W,
    output reg [31:0] ReadData_W,
    output reg [31:0] ALUOut_W,
    output reg [4:0] WriteReg_W,
	 input reset,
	 input [31:0] npc_M,
	 output reg [31:0] npc_W,
	 input Jal_M,
	 output reg Jal_W,
	 input [2:0] ExtDM_M,
	 output reg [2:0] ExtDM_W,
	 input [31:0] HL_M,
	 output reg [31:0] HL_W
    );
	always @ (posedge clk)
		if(reset)
		begin
			RegWrite_W<=0;
			MemtoReg_W<=0;
			ReadData_W<=0;
			ALUOut_W<=0;
			WriteReg_W<=0;
			npc_W<=0;
			Jal_W<=0;
			ExtDM_W<=0;
			HL_W<=0;
		end	
		else
		begin
			RegWrite_W<=RegWrite_M;
			MemtoReg_W<=MemtoReg_M;
			ReadData_W<=ReadData_M;
			ALUOut_W<=ALUOut_M;
			WriteReg_W<=WriteReg_M;
			npc_W<=npc_M;
			Jal_W<=Jal_M;
			ExtDM_W<=ExtDM_M;
			HL_W<=HL_M;
		end				
endmodule
