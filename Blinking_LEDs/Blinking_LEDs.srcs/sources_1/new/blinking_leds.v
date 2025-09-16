`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2025 11:31:42 AM
// Design Name: 
// Module Name: blinking_leds
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


module blinking_leds(
    input clk_in,
    output led
    );
    
    reg [23:0] counter = 0;
    reg clk_out = 0;
  
    always @(posedge clk_in) begin
    
        if(counter == 12_499_999) begin
            counter = 0;
            clk_out = ~clk_out;
        end
        else
            counter = counter + 1;
    end
    
    assign led = clk_out;
    
endmodule
