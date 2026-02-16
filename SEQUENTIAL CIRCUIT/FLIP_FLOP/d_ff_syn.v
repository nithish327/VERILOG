module d_ff(output reg q,input wire d,rst,clk);
always @(posedge clk) begin
    if(rst)
    q<=0;
    else
    q<=d;  
end
endmodule
