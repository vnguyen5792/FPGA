
module Bust_a_Mole_Game( //score count module
input clk, //system clock 100 MHz
input [15:0] sw, //switches used to whack a mole
input reset,//reset or to restart the game at any point
output reg [15:0] led, //leds as mole
output reg [5:0]score_count); //maximum mole count 32

localparam 
S000000 = 0, //constant declared for each state, for maximum score count of 32
S000001 = 1,
S000010 = 2,
S000011 = 3,
S000100 = 4,
S000101 = 5,
S000110 = 6,
S000111 = 7,
S001000 = 8,
S001001 = 9,
S001010 = 10,
S001011 = 11,
S001100 = 12,
S001101 = 13,
S001110 = 14,
S001111 = 15,
S010000 = 16,
S010001 = 17,
S010010 = 18,
S010011 = 19,
S010100 = 20,
S010101 = 21,
S010110 = 22,
S010111 = 23,
S011000 = 24,
S011001 = 25,
S011010 = 26,
S011011 = 27,
S011100 = 28,
S011101 = 29,
S011110 = 30,
S011111 = 31,
S100000 = 32;

 reg [5:0] current_state = 0; // Current score count state declared as register
 reg [5:0] next_state = 0; // Next score count state declared as register

//Reset/Restart the game
 always @(posedge clk or posedge reset) begin
 if (reset) 
    current_state <= 0;
else 
    current_state <= next_state;
 end
 
 


// Next state combinational logic

 always @(current_state, sw[15:0])
 begin
 case(current_state)
 
0: begin //initially score count is set to 1
next_state <= 0;
led[15:0] <= 0;  //All leds initially zero
score_count <= 0; //score count is zero
led[1] <= 1; //led 1 is set on that reprsents a mole
    if (sw[1]) //if the user flips sw[1]
        next_state <= 1; //then score count goes to 1, and next state is S0000001
    else
        next_state <= 0;
end

1: begin //if the score count is 1
score_count <=1;
    led[15:0] <= 0;
    led[11] <= 1; // and led 11 is on
    if (sw[11]) //and if sw11 is flipped, a mole is whacked
        next_state <= 2; //then score count goes up by 1 i.e. in this case it oes to 2
    else
        next_state <= 1;
end


//=========================
32: begin
next_state <= 32;
score_count <= 32;
led[15:0] <= 0;
end

default: begin 
    next_state = 0;
end

endcase
end

 
endmodule


