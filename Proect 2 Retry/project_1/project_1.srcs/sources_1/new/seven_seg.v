`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2025 11:47:59 AM
// Design Name: 
// Module Name: seven_seg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module seven_seg(
    input [3:0] display,
    output reg [6:0] seg1
    );
    
     always@(display)
       begin
           case(display)
           0:seg1 = 7'b0100001;  //"d"
	   	   1:seg1 = 7'b1000000;  //"O"
           2:seg1 = 7'b0101011;  //"n"
 	       3:seg1 = 7'b0000110;  //"E"
	       4:seg1 = 7'b1001111;	 //"I"
           5:seg1 = 7'b1000111;  //"L"
           
           default:seg1 =7'b1111111;
           
           endcase
       end
endmodule

