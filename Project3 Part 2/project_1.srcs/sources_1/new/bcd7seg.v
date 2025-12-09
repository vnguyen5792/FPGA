module bcd7seg(input[3:0] Y,
    output reg[6:0] disp);
    always@(Y) begin
        case(Y)
            default: disp=7'b0000000;
            0: disp=7'b1000000;
            1: disp=7'b1111001;
            2: disp=7'b0100100;
            3: disp=7'b0110000;
            4: disp=7'b0011001;
            5: disp=7'b0010010;
            6: disp=7'b0000010;
            7: disp=7'b1111000;
            8: disp=7'b0000000;
            9: disp=7'b0000100;
        endcase
    end
endmodule