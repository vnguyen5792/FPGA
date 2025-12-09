module binarytobcd(
input [7:0] timerInput, 	//Timer Count 20>>19>>18>...0
input [7:0] scoreInput,     //Score Count, max of 32
output [3:0] timerOnes, 	//We need 4 bits to display a digit for ones as it could go from 0 to 9. 
output [3:0] timerTens, 	//We need 4 bits to display a digit for tens as it could go from 0 to 9.
output [3:0] scoreOnes,
output [3:0] scoreTens); 	//We need to bits to display  a digit for hundreds as it could go from 0 to 2.

wire [3:0] a1,a2,a3,a4,a5,a6,a7;  
wire [3:0] b1,b2,b3,b4,b5,b6,b7; 
wire [3:0] c1,c2,c3,c4,c5,c6,c7; 
wire [3:0] d1,d2,d3,d4,d5,d6,d7; 

//Timer section
//Follow the Block Diagram
assign b1 = {1'b0,timerInput[7:5]};	 
==================================		 
assign b7 = {a6[2:0],a4[3]}; 		

add3 (b1,a1);	 
======================================
add3 (b7,a7);


assign timerOnes = 		 	//four bits that will make-up ones. 
assign timerTens = 			//four bits that will make-up tens. 

/////////////////////////////////////////////////////////////////////////
//Score section
//Follow the Block Diagram
assign d1 = {1'b0,scoreInput[7:5]};	 
========================================		  
assign d7 = {c6[2:0],c4[3]}; 		

add3 n1(d1,c1);	
======================= 
add3 n7(d7,c7);


assign scoreOnes =  
assign scoreTens = 


endmodule
