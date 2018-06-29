`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:48:30 12/08/2014 
// Design Name: 
// Module Name:    Stall 
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
module Stall(
    input [4:0] RT_E,
    input [4:0] RT_D,
    input [4:0] RS_D,
    input [1:0] MemtoReg_E,
	 input [1:0] MemtoReg_M,
    input Branch_D,
    input RegWrite_E,
    input [4:0] WriteReg_E,
    input [4:0] WriteReg_M,
    output Flush_E,
    output Stall_D,
    output Stall_F,
	 input Jr_D,
	 input MemWrite_D,
	 input Busy,
	 input MDuse,
	 input Start_E
    );
	wire lw_stall =((RS_D==RT_E) | (RT_D==RT_E)) & MemtoReg_E & (MemWrite_D!=1);
	wire branch_stall=(Branch_D & RegWrite_E & (WriteReg_E==RS_D | WriteReg_E==RT_D))
							|
							(Branch_D & MemtoReg_M & (WriteReg_M==RS_D | WriteReg_M==RT_D));
	wire Jr_stall =(Jr_D & MemtoReg_M & (WriteReg_M==RS_D))
						|
						(Jr_D & RegWrite_E & (WriteReg_E==RS_D));
	wire MD_stall = (Busy & MDuse) | (MDuse & Start_E) ;
	assign Stall_F=lw_stall | branch_stall | Jr_stall | MD_stall;
	assign Stall_D=lw_stall | branch_stall | Jr_stall | MD_stall;
	assign Flush_E=lw_stall | branch_stall | Jr_stall | MD_stall;

endmodule
