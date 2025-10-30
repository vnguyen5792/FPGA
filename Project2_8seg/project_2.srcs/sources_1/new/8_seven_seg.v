module 8_seven_seg(
    input clk_in,
    input [4:0] parking_slots,
    output [6:0] seg,
    output reg [7:0] an,
    output reg [4:0] parking_slots_avail);
    reg [2:0]enable;
    reg [3:0] display;
    seven_seg SEG_INST(.display(display), .seg1(seg));

    wire clk_out;
    slow_clock SC_INST(.clk_in(clk_in), .clk_out1(clk_out));
   
    
    always@(parking_slots)begin
        case(parking_slots)
            0:parking_slots_avail = 5'b11111;
            1:parking_slots_avail = 5'b11110;
            2:parking_slots_avail = 5'b11101;
            3:parking_slots_avail = 5'b11100;
            4:parking_slots_avail = 5'b11011;
            5:parking_slots_avail = 5'b11010;
            6:parking_slots_avail = 5'b11001;
            7:parking_slots_avail = 5'b11000;
            8:parking_slots_avail = 5'b10111;
            9:parking_slots_avail = 5'b10110;
            10:parking_slots_avail = 5'b10101;
            11:parking_slots_avail = 5'b10100;
            12:parking_slots_avail = 5'b10011;
            13:parking_slots_avail = 5'b10010;
            14:parking_slots_avail = 5'b10001;
            15:parking_slots_avail = 5'b10000;
            16:parking_slots_avail = 5'b01111;
            17:parking_slots_avail = 5'b01110;
            18:parking_slots_avail = 5'b01101;
            19:parking_slots_avail = 5'b01100;
            20:parking_slots_avail = 5'b01011;
            21: parking_slots_avail = 5'b01010;
            22: parking_slots_avail = 5'b01001; 
            23: parking_slots_avail = 5'b01000; 
            24: parking_slots_avail = 5'b00111; 
            25: parking_slots_avail = 5'b00110;
            26: parking_slots_avail = 5'b00101;
            27: parking_slots_avail = 5'b00100;
            28: parking_slots_avail = 5'b00011; 
            29: parking_slots_avail = 5'b00010; 
            30: parking_slots_avail = 5'b00001; 
            31: parking_slots_avail = 5'b00000;
        endcase
    end
    always@ (posedge clk_out)begin
        if(enable==3)begin
            enable = 0;
        end
        else
            enable = enable +1;
        end
    always@(posedge clk_out)begin
        if(parking_slots[0]&(parking_slots[1]&(parking_slots[2]&(parking_slots[3]&(parking_slots[4])))))
        begin
            case(enable)
                //last four displays
                3'b000: begin
                    display = 3;
                    an = 8'b11111110;
                3'b001: begin
                    display = 2;
                    an = 8'b11111101;
                3'b010: begin
                    display = 1;
                    an = 8'b11111011;
                3'b011: begin
                    display = 0;
                    an = 8'b11110111;
                    
                //first four displays
                3'b100: begin
                    display = 3;
                    an = 8'b11101111;
                3'b101: begin
                    display = 2;
                    an = 8'b11011111;
                3'b110: begin
                    display = 1;
                    an = 8'b10111111;
                3'b111: begin
                    display = 0;
                    an = 8'b01111111;
            endcase
        end
        else
        begin
            case(enable)
            
            //last four displays
                3'b000: begin
                    display = 3;
                    an = 8'b11111110;
                3'b001: begin
                    display = 5;
                    an = 8'b11111101;
                3'b010: begin
                    display = 0;
                    an = 8'b11111011;
                3'b011: begin
                    display = 4;
                    an = 8'b11110111;
                    
                //first four displays
                3'b100: begin
                    display = 3;
                    an = 8'b11101111;
                3'b101: begin
                    display = 5;
                    an = 8'b11011111;
                3'b110: begin
                    display = 0;
                    an = 8'b10111111;
                3'b111: begin
                    display = 4;
                    an = 8'b01111111;
            endcase
          end
       end
endmodule