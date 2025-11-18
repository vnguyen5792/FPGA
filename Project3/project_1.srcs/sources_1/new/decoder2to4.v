module decoder2to4 (input [1:0] en,
output reg [3:0] an);
always@(en) begin

// use if else statement
if (en == 2'b00) an <= 4'b1000;
else if (en == 2'b01) an <= 4'b0100;
else if (en == 2'b10) an <= 4'b0010;
else if (en == 2'b11) an <= 4'b0001;
else an <= 4'b0000; 

end
endmodule