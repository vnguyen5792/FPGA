
module timerClock(
    input clk_in,
    output  reg clk_out);
    
    reg [27:0] period_count = 0;


// Create 1 hZ clock, 1 sec
always@(posedge clk_in)
begin
     if(period_count == 100_000_000)
        begin
            period_count = 0;
            clk_out = ~clk_out;
        end
        else period_count = period_count + 1;
end
    
endmodule
