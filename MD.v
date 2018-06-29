`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:50:18 01/15/2015 
// Design Name: 
// Module Name:    MD 
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
module MD(
    input clk,
    input reset,
    input [31:0] A,
    input [31:0] B,
    input HiLo_E,
    input [1:0] MDControl_E,
    input Start_E,
    input MDWrite_E,
    output reg busy,
    output reg [31:0] HI,
    output reg [31:0] LO
    );

	reg   [63:0] mid ;
	reg   [65:0] midu;
	reg   [31:0] da;
	reg   [31:0] db;
	
	always @ (Start_E)
	begin
	 mid = {{32{A[31]}},A}*{{32{B[31]}},B};
	 midu =  {1'b0,A}*{1'b0,B};
	 da=A;
	 db=B;
	end
	
	
	integer m;
	integer mu;
	integer d;
	integer du;
	
	always @ (posedge clk)
	if(reset)
	begin
		busy <=0;
		HI<=0;
		LO<=0;
	end
	
	always @ (posedge clk)
	begin
		if(HiLo_E & MDWrite_E)
			HI <= A;
		else if(!HiLo_E & MDWrite_E)
			LO <= A;
	end
	
	always @ (posedge clk)
	begin
		if(Start_E)
			begin
				busy <=1;
				if(MDControl_E==2'b00) 
					mu<=5;
				else if(MDControl_E==2'b01)
					m<=5;
				else if(MDControl_E==2'b10)
					du<=10;
				else if(MDControl_E==2'b11)
					d<=10;
			end
		 
		else if(!Start_E)
			begin
				mu<=mu-1;
				du<=du-1;
				m<=m-1;
				d<=d-1;
				if((mu>1 & mu<6)|(m>1 & m<6) | (du>1 & du <11) | (d>1 & d<11))
					busy <= 1;					
				else if(m==1)
				begin
					HI <=  mid[63:32];
					LO <=  mid[31:0];
					busy <= 0;
				end
				else if(mu==1)
				begin
					HI <= midu[63:32];
					LO <= midu[31:0];
					busy <=0;
				end
				else if(d==1)
				begin
					HI <= $signed(da)%$signed(db);
					LO <= $signed(da)/$signed(db);
					busy = 0;
				end
				else if(du==1)
				begin
					HI <= {1'b0,da}% {1'b0,db};
					LO <= {1'b0,da}/ {1'b0,db};
					busy =0;
				end
			end
		end
endmodule
