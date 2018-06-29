`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:57:43 12/07/2014 
// Design Name: 
// Module Name:    Shift25 
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
module Shift25(
    input [25:0] a,
    output [27:0] y
    );
	assign y={a[25:0],2'b00};

endmodule
