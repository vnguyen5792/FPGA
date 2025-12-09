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
	
	//instantiate mux4to1
	
	//instantiate slowclock
	
	//instantiate slow_counter
	
	//instantiate decoder2to4
	
	//instantiate bcd7seg
	
	//instantiate timerClock
    
	//instanttiate timerount
	
	//instantiate Bust_a_Mole_Game
	
	
endmodule
