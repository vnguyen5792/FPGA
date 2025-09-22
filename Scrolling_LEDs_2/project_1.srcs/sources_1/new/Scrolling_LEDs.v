module scrolling_leds(

    input clk_in,

    output reg [15:0]led,

    output reg[7:0]seg,

    output [3:0]an //to turn on all four display

    );

    reg clk_out;

    reg [3:0]Led_counter = 4'b0000;

    reg [24:0] counter;

    assign an=4'b0; 

    // all four seven-sengment display will be on

    //slow clock (you decide on the frequency)

     

   always @(posedge clk_in) begin
       if(counter == 24_499_999) begin
           counter = 0;
           clk_out = ~clk_out;
           end
       else begin
           counter = counter + 1;
       end
   end

always @(posedge clk_out) begin
    if(Led_counter == 4'b1111) begin
        Led_counter = 4'b0000;
    end

    else begin
        Led_counter = Led_counter + 1;
       end
end

    //scrolling leds

    always@(posedge clk_out)

        case(Led_counter)

            //last four leds

            4'b0000:begin

                led = 16'hFFFE;

                seg=8'b11111110;

            end

            4'b0001:begin

                led = 16'hFFFD;

                seg=8'b11111101;

            end

            4'b0010:begin

                led = 16'hFFFB;

                seg=8'b11111011;

            end

            4'b0011:begin

                led = 16'hFFF7;

                seg=8'b11110111;

            end

            

            //second to last four leds

            4'b0100:begin

                led = 16'hFFEF;

                seg=8'b11101111;

            end

            4'b0101:begin

                led = 16'hFFDF;

                seg=8'b11011111;

            end

            4'b0110:begin

                led = 16'hFFBF;

                seg=8'b10111111;

            end

            4'b0111:begin

                led = 16'hFF7F;

                seg=8'b01111111;

            end

            

            //2nd four leds

            4'b1000:begin

                led = 16'hFEFF;

                seg=8'b11111110;

            end

            4'b1001:begin

                led = 16'hFDFF;

                seg=8'b11111101;

            end

            4'b1010:begin

                led = 16'hFBFF;

                seg=8'b11111011;

            end

            4'b1011:begin

                led = 16'hF7FF;

                seg=8'b11110111;

            end

            

            //first four leds

            4'b1100:begin

                led = 16'hEFFF;

                seg=8'b11101111;

            end

            4'b1101:begin

                led = 16'hDFFF;

                seg=8'b11011111;

            end

            4'b1110:begin

                led = 16'hBFFF;

                seg=8'b10111111;

            end

            4'b1111:begin

                led = 16'h7FFF;

                seg=8'b01111111;

            end

        endcase

endmodule

