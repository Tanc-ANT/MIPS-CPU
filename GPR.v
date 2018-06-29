`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:12:07 12/07/2014 
// Design Name: 
// Module Name:    GPR 
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
module GPR(
    input clk,
    input we3,
	 input reset,
    input [4:0] ra1,
    input [4:0] ra2,
    input [4:0] wa3,
    input [31:0] wd3,
    output reg [31:0] rd1,
    output reg [31:0] rd2
    );
	reg[31:0] rf[31:0];
	integer i;

	
	always @(posedge clk)
	begin
		if(reset)
		begin	
				for (i=0; i<=32; i=i+1)
					rf[i] <= 0;
		end
		else if(we3)
			begin
			rf[0]<=32'h0000_0000;
			rf[wa3] <=wd3;	
			end
	end
		
	always @ (*)
	begin
		if(we3)
			begin
			rf[wa3] <=wd3;	
			end

		rd1<=(ra1 != 5'b00000)?rf[ra1]:32'h0000_0000;
		rd2<=(ra2 != 5'b00000)?rf[ra2]:32'h0000_0000;
	end
endmodule
