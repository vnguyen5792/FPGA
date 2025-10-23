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
    output reg [6:0] seg
    );
    
     always@(display)
       begin
           case(display)
           0:seg = 7'b1000010; 	//"d"
	   	   1:seg = 7'b0000001;  //"O"
           2:seg = 7'b1101010;  //"n"
 	       3:seg = 7'b0110000;  //"E"
	       4:seg = 7'b1111001;	//"I"
           5:seg = 7'b1110001;  //"L"
           
           default:seg =7'b1111111;
           
           endcase
       end
endmodule

