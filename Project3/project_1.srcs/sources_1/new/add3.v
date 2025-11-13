module add3(     
input [3:0] in, 	
output reg [3:0] out);
always @ (in) 	
case (in) 
4'b0000: out <= 4'b0000;
 
=======================
=======================
default: out <= 4'b0000; 
  
endcase 
endmodule 
