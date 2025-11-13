module top_module(input clk, input [7:0] sw,
output [3:0] an,
output [6:0] seg);
parameter zero = 4'b0000;
wire clk_out;
wire [3:0] mux_out;
wire [1:0] counter_out;
wire [3:0] ones, tens, hundreds;

//instantiate binary_to_BCD

//instatiate mux4to1

//instantiate slowclock

//instantiate my_counter

//instantiate decoder2to4

//instantiate bcd7seg

endmodule