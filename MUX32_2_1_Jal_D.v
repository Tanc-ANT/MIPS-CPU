`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:44:41 12/15/2014 
// Design Name: 
// Module Name:    MUX32_2_1_Jal_D 
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
module MUX32_2_1_Jal_W(
    input [31:0] Result_W,
    input [31:0] npc_W,
    input Jal_W,
    output [31:0] WD3_D
    );

	assign WD3_D = (Jal_W==1'b1)?npc_W:Result_W;

endmodule
