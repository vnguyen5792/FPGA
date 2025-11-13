module bcd7seg(input[3:0] Y,
output reg[6:0] disp);
always@(Y)
begin
case(Y)
0: disp=7'b0000001;
====================
====================
====================
endcase
end
endmodule