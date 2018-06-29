`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:40:06 12/06/2014 
// Design Name: 
// Module Name:    Ext 
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
module Ext(
	 input [15:0] a,
    output reg [31:0] y,
	 input ExtOP
    );
	 
	always @ (*)
	begin
	if(!ExtOP)
		y={{16{a[15]}},a};
	else if(ExtOP)
		y={16'b0,a};
	end
endmodule
