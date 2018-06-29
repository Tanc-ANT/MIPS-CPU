`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:00:06 12/07/2014 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input clk,
	 input [31:0] ALUOut_M,
	 input [31:0] WriteData_M,
	 input MemWrite_M,
	 output [31:0] ReadData_M,
	 input reset,
	 input [3:0] BE
    );
	reg [31:0] RAM[2047:0];
	
	integer s;
	always @ (reset)
	for(s=0;s<=2047;s=s+1)
	RAM[s]=0;

	wire [7:0] byte3=WriteData_M[31:24],
				  byte2=WriteData_M[23:16],
				  byte1=WriteData_M[15:8],
				  byte0=WriteData_M[7:0];
	wire [31:0] addr;
	assign addr={ALUOut_M[31:2],2'b00};
	
	assign ReadData_M=RAM[addr];
	
	always @ (posedge clk)
	begin
		if(MemWrite_M)
		begin
			case(BE)
			4'b1111:
			begin
				RAM[addr][31:24]<=byte3;
				RAM[addr][23:16]<=byte2;
				RAM[addr][15:8] <=byte1;
				RAM[addr][7:0]  <=byte0;
			end
			4'b1100:
			begin
				RAM[addr][31:24]<=byte1;
				RAM[addr][23:16]<=byte0;
			end
			4'b0011:
			begin
				RAM[addr][15:8] <=byte1;
				RAM[addr][7:0]  <=byte0;
			end
			default:case(1)
			BE[0] :RAM[addr][7:0]<=byte0;
			BE[1] :RAM[addr][15:8]<=byte0;
			BE[2] :RAM[addr][23:16]<=byte0;
			BE[3] :RAM[addr][31:24]<=byte0;
			endcase
			endcase
		end
	end
endmodule
