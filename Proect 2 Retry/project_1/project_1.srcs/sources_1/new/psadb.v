module psadb(
    input clock,
    input [4:0] parking_slots,
    output reg [4:0] parking_slots_avail,
    output [6:0] seg,
    output reg [3:0] an
    );
    reg [3:0] display;
    //instantiate seven_seg
    wire slow_clk_100hz;
    //instantiate slowclock
    reg [1:0] enable;
    always@(parking_slots)
    begin
    case(parking_slots)
    0:parking_slots_avail = 5'b11111;
    1:parking_slots_avail = 5'b11110;
    // ===================================
    // ===================================
    31:parking_slots_avail = 5'b00000;
    endcase
    end
    always@ (posedge slow_clk_100hz)
    begin
    if(enable==3)begin
    enable = 0;
    end
    else
    enable = enable +1;
    end
    always@(posedge slow_clk_100hz)
    begin
    if(parking_slots[0]&(parking_slots[1]&(parking_slots[2]&(parking_slots[3]&(park
    ing_slots[4])
    begin
    case(enable)
    2'b00: begin
    display = 3;
    an= 4'b1110;
    end
    //=======================
    //======================
    endcase
    end
    else if (conditional statement)
    begin
    case(enable)
    2'b00: begin
    display = 3;
    an= 4'b1110;
    end
    //===================
    //===================
    endcase
    end
endmodule
