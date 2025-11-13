module code_converter(

input[7:0]A,
output[3:0]ONES,
[3:0]TENS,
output[1:0]HUNDREDS);
    wire [3:0] c1,c2,c3,c4,c5,c6,c7; 
    wire [3:0] d1,d2,d3,d4,d5,d6,d7;

assign d1 = {1'b0,A[7:5]};
===========================
assign d7 = {c6[2:0],c4[3]}; 

add3 m1(d1,c1);
====================
add3 m7(d7,c7);

assign ONES = {c5[2:0],A[0]};
=====================

endmodule
