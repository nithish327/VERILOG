module d_latch(output reg q,input wire d,rst,clk);
always @(clk) begin
    if(rst)
    q=0;
    else if(clk)
    q=d;
end
endmodule  
