module decoder2to4 (input [1:0] en,
output reg [3:0] an);
always@(en) begin

// use if else statement
if (en == 2'b00) an = 4'b1110;
else if (en == 2'b01) an = 4'b1101;
else if (en == 2'b10) an = 4'b1011;
else an = 4'b1111; 

end
endmodule