module d_ff(output reg q,input wire d,rst,clk);
always @(posedge clk or rst) begin
    if(rst)
    q<=1'b0;
    else
    q<=d;  
end
endmodule
