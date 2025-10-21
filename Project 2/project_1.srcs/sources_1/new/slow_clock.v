`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2025 11:47:39 AM
// Design Name: 
// Module Name: slow_clock
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


module slow_clock(clk_in);
    input clk_in;
    reg clk_out;
    reg [25:0] counter;
    always@(posedge clk_in) 
    begin
        if(counter == 499_999)
            begin
                clk_out = ~clk_out; 
                counter = 0;
            end
        else 
            begin
                counter = counter + 1;
            end
    end
endmodule
