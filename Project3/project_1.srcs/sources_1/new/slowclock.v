module slowclock (input clk_in,output reg clk_out);
    reg [17:0]counter; // needs to hit 999999
    always@(posedge clk_in) 
    begin
        if(counter == 999999)
        begin
            counter = 0;
            clk_out = ~clk_out;
        end
        else 
        begin
            counter = counter + 1;
        end
    end
endmodule