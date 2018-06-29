`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:13:25 12/08/2014 
// Design Name: 
// Module Name:    Hazard 
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
module Hazard(
	 input clk,
    input RegWrite_M,
    input [4:0] WriteReg_M,
    input [4:0] RS_E,
    input [4:0] RS_D,
    input [4:0] WriteReg_W,
    input RegWrite_W,
    input [4:0] RT_E,
    input [4:0] RT_D,
    output reg [1:0] ForWard_AD,
    output reg [1:0] ForWard_AE,
    output reg [1:0] ForWard_BE,
    output reg [1:0] ForWard_BD,
	 input Jal_W,
	 input Jal_M,
	 output reg [2:0] ForWard_CD,
	 output reg ForWard_AM,
	 input [1:0] MemtoReg_W,
	 input MemWrite_M
    );
	always @ (*)
	begin
		if((RS_E!=0)&(RS_E==WriteReg_M)&RegWrite_M&(Jal_W!=1))
		begin
			ForWard_AE=2'b10;
		end
		else if((RS_E!=0)&(RS_E==WriteReg_W)&RegWrite_W&(Jal_W!=1))
		begin
			ForWard_AE=2'b01;
		end
		else if((RS_E!=0)&(RS_E==WriteReg_W)&Jal_W)
		begin
			ForWard_AE=2'b11;
		end
		else
		begin
			ForWard_AE=2'b00;
		end
	end
	
	always @ (*)
	begin
		if((RT_E!=0)&(RT_E==WriteReg_M)&RegWrite_M&(Jal_W!=1))
		begin
			ForWard_BE=2'b10;
		end
		else if((RT_E!=0)&(RT_E==WriteReg_W)&RegWrite_W&(Jal_W!=1))
		begin
			ForWard_BE=2'b01;
		end
		else if((RT_E!=0)&(RT_E==WriteReg_W)&Jal_W)
		begin
			ForWard_BE=2'b11;
		end
		else
		begin
			ForWard_BE=2'b00;
		end
	end

	always @ (*)
	begin
		if((RS_D!=0)&(RS_D==WriteReg_M)&RegWrite_M&(Jal_M!=1))
			ForWard_AD=2'b01;
		else if((RS_D!=0)&(RS_D==WriteReg_M)&Jal_M)
			ForWard_AD=2'b10;
		else
			ForWard_AD=2'b00;
	end
	always @ (*)
	begin
		if((RT_D!=0)&(RT_D==WriteReg_M)&RegWrite_M&(Jal_M!=1))
			ForWard_BD=2'b01;
		else if((RT_D!=0)&(RT_D==WriteReg_M)&Jal_M)
			ForWard_BD=2'b10;
		else
			ForWard_BD=2'b00;
	end
	
	always @ (*)
	begin
		if((RS_D!=0)&(RS_D==WriteReg_W)&RegWrite_W&(Jal_W!=1))
			ForWard_CD=3'b001;
		else if((RS_D!=0)&(RS_D==WriteReg_M)&RegWrite_M&(Jal_M!=1))
			ForWard_CD=3'b010;
		else if((RS_D!=0)&(RS_D==WriteReg_M)&Jal_M)
			ForWard_CD=3'b101;
		else if((RS_D!=0)&(RS_D==WriteReg_W)&Jal_W)
			ForWard_CD=3'b110;
		else
			ForWard_CD=3'b000;
	end
	
	always @ (*)
	begin
		if((WriteReg_M==WriteReg_W) & (WriteReg_M!=0) & MemWrite_M & MemtoReg_W)
			ForWard_AM=1'b1;
		else
			ForWard_AM=1'b0;
	end
endmodule
