`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:28:33 12/07/2014 
// Design Name: 
// Module Name:    flopr 
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
module flopr(
    input clk,
    input reset,
    input [31:0] d,
    output reg [31:0] q
    );
	always @ (posedge clk,posedge reset)
		if(reset)q<=32'h0000_0000_0000_3000;
		else		q<=d;
		
endmodule
