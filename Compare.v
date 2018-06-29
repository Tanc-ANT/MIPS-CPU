`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:32:21 12/09/2014 
// Design Name: 
// Module Name:    Compare 
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
module Compare(
    input [31:0] RD1_D_R,
    input [31:0] RD2_D_R,
    output Equal_D,
	 input [2:0] CMP_D
    );
	 
	assign Equal_D = (($signed(RD1_D_R)==$signed(RD2_D_R)) & (CMP_D == 3'b001)) ? 1 :
						  (($signed(RD1_D_R)>=0)       & (CMP_D == 3'b010)) ? 1 :
						  (($signed(RD1_D_R)>0)        & (CMP_D == 3'b011)) ? 1 :
	                 (($signed(RD1_D_R)<=0)       & (CMP_D == 3'b100)) ? 1 :
	                 (($signed(RD1_D_R)<0)        & (CMP_D == 3'b101)) ? 1 :
	                 (($signed(RD1_D_R)!=$signed(RD2_D_R)) & (CMP_D == 3'b110)) ? 1 : 0;
	
endmodule
