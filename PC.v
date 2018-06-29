`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:27:40 12/08/2014 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input clk,
    input Stall_F,
    input Reset,
    input [31:0] npc_F_R,
    output reg [31:0] pc,
    input Jr_D,
    input [31:0] JrData_D
    );
	always @ (posedge	clk,Reset)
	begin
		if(Stall_F)
			pc<=pc;
		else if(Reset)
			pc<=32'h0000_3000;
		else if(Jr_D)
			pc<=JrData_D;
		else
			pc<=npc_F_R;
	end

endmodule
