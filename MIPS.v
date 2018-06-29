`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:48:44 12/08/2014 
// Design Name: 
// Module Name:    MIPS 
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
module MIPS(
    input clk,
    input reset
    );
	
	wire RegWrite_D,MemWrite_D,ALUSrc_D,Branch_D,Jump_D,Jal_D,Jr_D;
	wire [1:0] RegDst_D;
	wire [3:0] ALUControl_D;
	wire RegWrite_E,MemWrite_E,ALUSrc_E,Jal_E;
	wire [1:0] RegDst_E;
	wire [3:0] ALUControl_E;
	wire RegWrite_M,MemWrite_M,Jal_M;
	wire RegWrite_W,Jal_W;
	
	wire [1:0] MemtoReg_D,MemtoReg_E,MemtoReg_M,MemtoReg_W;
	
	wire [31:0] pc,npc_F,npc_F_R,npc_D,npc_D_R,npc_E,npc_M,npc_W,PC_Jump,PCBranch_D,SignImm_D,SignImm_E,SignImm_DS,PC_Br;
	wire [27:0] instr_DS;
	assign PC_Jump={npc_F[31:28],instr_DS[27:0]};
	wire [4:0] RS_E,RT_E,RD_E,WriteReg_E,WriteReg_M,WriteReg_W;
	wire [31:0] WD3_D,RD1_D,RD2_D,RD1_D_R,RD2_D_R,RD1_E,RD2_E,RD1_D,RD2_D_Forward,SrcAE,SrcBE;
	wire [31:0] ALUOut_E,ALUOut_M,ALUOut_W,WriteData_E,WriteData_M,WriteData_M_R,Result_W,ReadData_M,ReadData_W,ReadData_W_R;
	wire [31:0] instr_F,instr_D;
	wire Equal_D,Flush_E,Stall_D,Stall_F,PCSrc_D;
	wire [1:0] ForWard_AE,ForWard_BE,ForWard_AD,ForWard_BD;
	wire [2:0] ForWard_CD;
	wire ForWard_AM;
	wire [31:0] JrData_D;
	
	wire [2:0] CMP_D;
	wire [4:0] Shamt_D,Shamt_E;
	wire [1:0] ExtBE_D,ExtBE_E,ExtBE_M;
	wire [3:0] BE;
	wire [2:0] ExtDM_D,ExtDM_E,ExtDM_M,ExtDM_W;
	wire ExtOP;
	
	wire HiLo_D,HiLo_E;
	wire [1:0] MDControl_D,MDControl_E;
	wire Start_D,Start_E;
	wire MDWrite_D,MDWrite_E;
	wire Busy;
	wire [31:0] HI,LO,HL_E,HL_M,HL_W;
	wire MFC_E;
	wire MDuse;
	
	MUX32_3_1 MUX32_3_1_Forward_AD(RD1_D,ALUOut_M,npc_M,ForWard_AD,RD1_D_R);
	MUX32_3_1 MUX32_3_1_Forward_BD(RD2_D,ALUOut_M,npc_M,ForWard_BD,RD2_D_R);
	MUX32_4_1 MUX32_4_1_Forward_AE(RD1_E,Result_W,ALUOut_M,npc_W,ForWard_AE,SrcAE);
	MUX32_4_1 MUX32_4_1_Forward_BE(RD2_E,Result_W,ALUOut_M,npc_W,ForWard_BE,WriteData_E);
	MUX32_2_1 MUX32_2_1_ForWard_AM(WriteData_M,Result_W,ForWard_AM,WriteData_M_R);
	
	MUX32_2_1 MUX32_2_1_ALUSrc_E(WriteData_E,SignImm_E,ALUSrc_E,SrcBE);
	MUX32_2_1_Jal_W MUX32_2_1_Jal_W(Result_W,npc_W,Jal_W,WD3_D);
	MUX5_4_1 MUX5_4_1_RegDst_E(RT_E,RD_E,{5'b11111},RegDst_E,WriteReg_E);
	MUX32_3_1 MUX32_3_1_MemtoReg_W(ALUOut_W,ReadData_W_R,HL_W,MemtoReg_W,Result_W);
	MUX32_2_1 MUX32_2_1_PCSrc_D(npc_F,PCBranch_D,PCSrc_D,PC_Br);
	MUX32_2_1 MUX32_2_1_Jump_D(PC_Br,PC_Jump,Jump_D,npc_F_R);
	JR JR(RD1_D_R,Result_W,ALUOut_M,npc_M,npc_W,ForWard_CD,JrData_D);
	MUX32_2_1 MUX32_2_1_MFC_E(LO,HI,MFC_E,HL_E);
	
	PC PC(clk,Stall_F,reset,npc_F_R,pc,Jr_D,JrData_D);
	NPC NPC_F(pc[31:0],npc_F,reset);
	IM IM(pc[31:0],instr_F);
	IF_ID IF_ID(clk,instr_F,Stall_D,PCSrc_D,npc_F,instr_D,npc_D,reset);
	
	Controller Controller(instr_D,RegWrite_D,MemtoReg_D,MemWrite_D,ALUControl_D,ALUSrc_D,
								RegDst_D,Branch_D,Jump_D,Jal_D,Jr_D,CMP_D,Shamt_D,ExtBE_D,ExtDM_D,ExtOP,
								MFC_D,HiLo_D,MDWrite_D,Start_D,MDControl_D,MDuse);
	GPR GPR(clk,RegWrite_W,reset,instr_D[25:21],instr_D[20:16],WriteReg_W,WD3_D,RD1_D,RD2_D);
	Compare Compare(RD1_D_R,RD2_D_R,Equal_D,CMP_D);
	ANDD ANDD(Equal_D,Branch_D,PCSrc_D);
	Ext Ext(instr_D[15:0],SignImm_D,ExtOP);
	Shift32 Shift32(SignImm_D,SignImm_DS);
	Adder32 Adder32(SignImm_DS,npc_D,PCBranch_D);
	Shift25 Shift25(instr_D[25:0],instr_DS);
	NPC NPC_D(npc_D,npc_D_R,reset);
	ID_EX ID_EX(clk,RegWrite_D,MemtoReg_D,MemWrite_D,ALUControl_D,ALUSrc_D,RegDst_D,
					RegWrite_E,MemtoReg_E,MemWrite_E,ALUControl_E,ALUSrc_E,RegDst_E,
					RD1_D_R,RD2_D,RD1_E,RD2_E,instr_D[25:21],instr_D[20:16],instr_D[15:11],RS_E,RT_E,RD_E,
					SignImm_D,SignImm_E,Flush_E,reset,npc_D_R,npc_E,Jal_D,Jal_E,
					Shamt_D,Shamt_E,ExtBE_D,ExtBE_E,ExtDM_D,ExtDM_E,
					MFC_D,MFC_E,HiLo_D,HiLo_E,MDWrite_D,MDWrite_E,Start_D,Start_E,MDControl_D,MDControl_E);
					
	MD MD(clk,reset,SrcAE,SrcBE,HiLo_E,MDControl_E,Start_E,MDWrite_E,Busy,HI,LO);
	ALU ALU(SrcAE,SrcBE,ALUControl_E,ALUOut_E,reset,Shamt_E);
	EX_MEM EX_MEM(clk,RegWrite_E,MemtoReg_E,MemWrite_E,ALUOut_E,WriteData_E,WriteReg_E,RegWrite_M,
						MemtoReg_M,MemWrite_M,ALUOut_M,WriteData_M,WriteReg_M,reset,npc_E,npc_M,Jal_E,Jal_M,
						ExtBE_E,ExtBE_M,ExtDM_E,ExtDM_M,HL_E,HL_M);
						
	ExtBE ExtBE(ALUOut_M[1:0],ExtBE_M,BE);				
	DM DM(clk,ALUOut_M,WriteData_M_R,MemWrite_M,ReadData_M,reset,BE);
	MEM_WB MEM_WB(clk,RegWrite_M,MemtoReg_M,ReadData_M,ALUOut_M,WriteReg_M,
						RegWrite_W,MemtoReg_W,ReadData_W,ALUOut_W,WriteReg_W,reset,npc_M,npc_W,Jal_M,Jal_W,
						ExtDM_M,ExtDM_W,HL_M,HL_W);

	ExtDM ExtDM(ALUOut_W[1:0],ReadData_W,ExtDM_W,ReadData_W_R);
	
	Hazard Hazard(clk,RegWrite_M,WriteReg_M,RS_E,instr_D[25:21],WriteReg_W,RegWrite_W,RT_E,instr_D[20:16],
						ForWard_AD,ForWard_AE,ForWard_BE,ForWard_BD,Jal_W,Jal_M,ForWard_CD,ForWard_AM,MemtoReg_W,MemWrite_M);
	Stall Stall(RT_E,instr_D[20:16],instr_D[25:21],MemtoReg_E,MemtoReg_M,Branch_D,RegWrite_E,WriteReg_E,WriteReg_M,
					Flush_E,Stall_D,Stall_F,Jr_D,MemWrite_D,Busy,MDuse,Start_E);		


endmodule
