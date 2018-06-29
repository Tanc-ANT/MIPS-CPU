`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:28:57 12/08/2014 
// Design Name: 
// Module Name:    Controller 
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
module Controller(
    input [31:0] instr_D,
    output RegWrite_D,
    output [1:0] MemtoReg_D,
    output MemWrite_D,
    output [3:0] ALUControl_D,
    output ALUSrc_D,
    output [1:0] RegDst_D,
    output Branch_D,
    output Jump_D,
    output Jal_D,
    output Jr_D,
	 output [2:0] CMP_D,
	 output [4:0] Shamt_D,
	 output [1:0] ExtBE_D,
	 output [2:0] ExtDM_D,
	 output ExtOP,
	 output MFC_D,
	 output HiLo_D,
	 output MDWrite_D,
	 output Start_D,
	 output [1:0] MDControl_D,
	 output MDuse
    );
	 
	wire   [5:0] op , funct ;
	wire   [4:0] rt;
	
	assign  op = instr_D[31:26];  
	assign  rt = instr_D[20:16];
	assign  Shamt_D =instr_D[10:6];
   assign  funct  = instr_D[5:0];
 
	wire i_add  = (op == 6'b000000) & (funct == 6'b100000); //1
	wire i_addi = (op == 6'b001000);
	wire i_addu = (op == 6'b000000) & (funct == 6'b100001);
	wire i_addiu= (op == 6'b001001);
	wire i_and  = (op == 6'b000000) & (funct == 6'b100100);
	wire i_andi = (op == 6'b001100);
	wire i_div  = (op == 6'b000000) & (funct == 6'b011010);
	wire i_divu = (op == 6'b000000) & (funct == 6'b011011);
	wire i_mult = (op == 6'b000000) & (funct == 6'b011000);
	wire i_multu= (op == 6'b000000) & (funct == 6'b011001);//10
	wire i_nor  = (op == 6'b000000) & (funct == 6'b100111);
	wire i_or   = (op == 6'b000000) & (funct == 6'b100101);
	wire i_ori  = (op == 6'b001101);
	wire i_sll  = (op == 6'b000000) & (funct == 6'b000000);
	wire i_srl  = (op == 6'b000000) & (funct == 6'b000010);
	wire i_sra  = (op == 6'b000000) & (funct == 6'b000011);
	wire i_srlv = (op == 6'b000000) & (funct == 6'b000110);
	wire i_srav = (op == 6'b000000) & (funct == 6'b000111);
	wire i_sllv = (op == 6'b000000) & (funct == 6'b000100);
	wire i_sub  = (op == 6'b000000) & (funct == 6'b100010);//20
	wire i_subu = (op == 6'b000000) & (funct == 6'b100011);
	wire i_xor  = (op == 6'b000000) & (funct == 6'b100110);
	wire i_xori = (op == 6'b001110);
	wire i_lui  = (op == 6'b001111);
	wire i_slt  = (op == 6'b000000) & (funct == 6'b101010);
	wire i_slti = (op == 6'b001010);
	wire i_sltu = (op == 6'b000000) & (funct == 6'b101011);
	wire i_sltiu= (op == 6'b001011);
	wire i_beq  = (op == 6'b000100);
	wire i_bgez = (op == 6'b000001) & (rt == 6'b00001);	//30
	wire i_bgtz = (op == 6'b000111);								
	wire i_blez = (op == 6'b000110);
	wire i_bltz = (op == 6'b000001) & (rt ==00000);
	wire i_bne  = (op == 6'b000101);
	wire i_j    = (op == 6'b000010); 
	wire i_jal  = (op == 6'b000011);   
	wire i_jr   = (op == 6'b000000) & (funct == 6'b001000);
	wire i_jalr = (op == 6'b000000) & (funct == 6'b001001);
	wire i_lbu  = (op == 6'b100100);
	wire i_lhu  = (op == 6'b100101);								//40
	wire i_lb   = (op == 6'b100000);								
	wire i_lh   = (op == 6'b100001);
	wire i_lw   = (op == 6'b100011);
	wire i_sb   = (op == 6'b101000);
	wire i_sh   = (op == 6'b101001);
	wire i_sw   = (op == 6'b101011);
	wire i_mfhi = (op == 6'b000000) & (funct == 6'b010000);
	wire i_mflo = (op == 6'b000000) & (funct == 6'b010010);
	wire i_mthi = (op == 6'b000000) & (funct == 6'b010001);
	wire i_mtlo = (op == 6'b000000) & (funct == 6'b010011);
	
	assign RegWrite_D =  i_addi | i_addiu | i_andi | i_ori | i_xori | i_lui | i_slti | i_sltiu |
								i_add | i_addu | i_sub | i_subu | i_slt | i_sltu | i_sll | i_srl | i_sra |
								i_sllv | i_srlv | i_srav | i_and | i_or | i_xor | i_nor |
								i_lw | i_lh | i_lb | i_lhu | i_lbu | i_jal | i_jalr |
								i_mfhi | i_mflo;																	//寄存器堆写
	
	assign MemtoReg_D[0] = i_lw | i_lh | i_lb | i_lhu | i_lbu;										//加载指令
	assign MemtoReg_D[1] = i_mfhi | i_mflo;
	
	assign MemWrite_D = i_sw | i_sb | i_sh;															  			//保存指令
	
	assign ALUSrc_D   = i_addi | i_addiu | i_andi | i_ori | i_xori | i_lui | i_slti | i_sltiu | 
							  i_sw | i_sb | i_sh | i_lw | i_lh | i_lb | i_lhu | i_lbu ;       	  	//有关立即数
							  
	assign RegDst_D[0]   = i_add | i_addu | i_sub | i_subu | i_slt | i_sltu | i_sll | i_srl | i_sra |
								  i_sllv | i_srlv | i_srav | i_and | i_or | i_xor | i_nor | 
								  i_mfhi | i_mflo;	//寄存器选择
								  
	assign RegDst_D[1]   = i_jal | i_jalr;																		//寄存器选择
	
	assign Branch_D   = i_beq | i_bgez | i_bgtz | i_blez | i_bltz | i_bne;				//跳转指令
	
	assign Jump_D     = i_j | i_jal | i_jr | i_jalr;											//跳转指令	
	
	assign Jal_D      = i_jal | i_jalr;																//跳转链接
	
	assign Jr_D       = i_jr | i_jalr;																//跳转地址
	
	assign CMP_D = (i_beq) ? 3'b001 : (i_bgez) ? 3'b010 : (i_bgtz) ? 3'b011 : (i_blez) ? 3'b100 : (i_bltz) ? 3'b 101 : (i_bne) ? 3'b110 : 3'b000; 
	
	assign ExtBE_D = (i_sw) ? 2'b01 : (i_sh) ? 2'b10 : (i_sb) ? 2'b11 : 2'b00;
	
	assign ExtDM_D = (i_lw) ? 3'b000 : (i_lbu) ? 3'b001 : (i_lb) ? 3'b010 : (i_lhu) ? 3'b011 : (i_lh) ? 3'b100 :3'b111;
	
	assign ExtOP = (i_xori | i_ori) ? 1 : 0 ;
	
	assign MFC_D = (i_mfhi) ? 1 : (i_mflo) ? 0 : 1'bx; 
	assign HiLo_D = (i_mthi) ? 1 : (i_mtlo) ? 0 : 1'bx;
	assign MDWrite_D = i_mthi | i_mtlo;
	assign Start_D =  i_mult |  i_multu | i_div | i_divu;
	assign MDControl_D = (i_multu) ? 2'b00 : (i_mult) ? 2'b01 : (i_divu) ? 2'b10 : (i_div) ? 2'b11 : 2'bx;
	assign MDuse = i_mfhi | i_mflo | i_mthi | i_mtlo | i_multu | i_mult | i_divu | i_div;
	
	assign ALUControl_D = (i_add | i_addu | i_addiu | i_addi |
								  i_lw | i_lh | i_lb | i_lhu | i_lbu |
								  i_sw | i_sb | i_sh) 										? 4'b0001 :
								 (i_sub )                                          ? 4'b0010 :
								 (i_subu)                                			   ? 4'b0011 :
								 (i_or  | i_ori)                                 	? 4'b0100 :
								 (i_xor | i_xori)                                  ? 4'b0101 :
								 (i_nor)                                       		? 4'b0110 :
								 (i_and | i_andi)                              		? 4'b0111 :
								 (i_slt | i_slti)                                  ? 4'b1000 :
								 (i_sltu| i_sltiu)                                 ? 4'b1001 :
								 (i_sll | i_sllv)                                 	? 4'b1010 :
								 (i_srl | i_srlv)                                  ? 4'b1011 :
								 (i_sra | i_srav)                                  ? 4'b1100 : 
								 (i_lui)															? 4'b1101 : 4'b0000; //ALU控制信号
								 
endmodule
