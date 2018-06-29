`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:50:07 12/15/2014 
// Design Name: 
// Module Name:    JR 
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
module JR(
    input [31:0] RD1_D_R,
	 input [31:0] Result_W,
	 input [31:0] ALUOut_M,
	 input [31:0] npc_M,
	 input [31:0] npc_W,
	 input [2:0] ForWard_CD,
	 output reg [31:0] JrData_D);
	 always @ (*)
		begin
			case(ForWard_CD)
			3'b000:JrData_D <= RD1_D_R;
			3'b001:JrData_D<= Result_W;
			3'b010:JrData_D<= ALUOut_M;
			3'b101:JrData_D<= npc_M;
			3'b110:JrData_D<= npc_W;
			endcase
		end
endmodule
