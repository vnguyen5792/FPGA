module Top_Module(   //Top Module
    input clk, //system clock 100 MHz Basys 3 Board
	input [15:0] sw,//switches to whack a mole
	input reset, //to reset the game
	output [15:0] led, //leds as mole
	output [3:0] an, 
	output [6:0] seg); //to display timer (2 left most segments) and mole count (2 right most segments)
	
	
	wire clk_out; //100 Hz slow clock for toggling 7 segments
	wire timer_clk_out; //1Hz (1 sec) timer clock for count down 20, 19, 18,...0
	wire [3:0] mux_out; //output of the multiplexer
	wire [1:0] counter_out; //2-bit counter output, initially set to 0
	wire [3:0] timer_count_ones, timer_count_tens, score_ones, score_tens;//input to Mux, o/p of BCD module
	wire [5:0] score_count; //Max score of 32, input to BCD module
	wire [4:0] timer_count; //Game Timer runs for 20 seconds, input to BCD module

	//instantiate binarytobcd
	binarytobcd(score_count, timer_count,timer_count_ones, timer_count_tens, score_ones, score_tens);
	
	//instantiate mux4to1
	mux4to1(timer_count_ones, timer_count_tens, score_ones, score_tens, counter_out, mux_out);
	//instantiate slowclock
	slowclock(clk, clk_out);
	//instantiate slow_counter
	slow_counter(clk_out, counter_out);
	//instantiate decoder2to4
	decoder2to4(counter_out, an);
	//instantiate bcd7seg
	bcd7seg(mux_out, seg);
	//instantiate timerClock
    timerClock(clk, timer_clk_out);
	//instanttiate timerount
	timerCount(clk, reset, timer_count);
	//instantiate Bust_a_Mole_Game
	Bust_a_Mole_game(clk, sw, reset, led, score_count);
	
endmodule
