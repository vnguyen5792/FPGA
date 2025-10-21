`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2025 11:50:29 AM
// Design Name: 
// Module Name: seven_segment_led
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


module seven_segment_led(
    input clk_in,
    output reg [15:0]led,
    output reg[7:0]seg,
    output [3:0]an //to turn on all four display
    );
    
    reg [23:0] count;
    reg clk_out;
    reg [3:0]Led_counter = 4'b0000;
    assign an=4'b0; // all four seven-sengment display will be on
    //slow clock (you decide on the frequency)
    -------------
    -------------
    //scrolling leds
    always@(posedge clk_out)
        case(Led_counter)
        4'b0000:begin
        led = 16'h0000;
        seg=8'b11111110;
        end
        4'b0001:begin
        led = 16'hFFFD;
        seg=8'b11111101;
    end
    
endmodule
