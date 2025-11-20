module top_module(input clk, input [7:0] sw,
output [3:0] an,
output [6:0] seg);
parameter zero = 4'b0000;
wire clk_out;
wire [3:0] mux_out;
wire [1:0] counter_out;
wire [3:0] ones, tens, hundreds;

//instantiate binary_to_BCD
code_converter(sw, ones, tens, hundreds); //Done

//instatiate mux4to1
mux4to1(zero, ones, tens, hundereds ,counter_out,mux_out);

//instantiate slowclock
slowclock(clk, clk_out); // Done

//instantiate my_counter
slow_counter(clk_out, counter_out); // Done

//instantiate decoder2to4
decoder2to4(counter_out, an);// Done

//instantiate bcd7seg
bcd7seg(mux_out,seg); // Done

endmodule