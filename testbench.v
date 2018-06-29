`timescale 1us / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:45:38 12/10/2014
// Design Name:   MIPS
// Module Name:   D:/BUAA/PipelineCPU10/testbench.v
// Project Name:  PipelineCPU10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MIPS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	MIPS uut (
		.clk(clk), 
		.reset(reset)
	);

	initial
		begin
			reset <=1;# 3; reset<=0;
		end
		
	always
		begin 
		clk <=1 ;# 1;clk <=0 ;# 1;
		end
      
endmodule

