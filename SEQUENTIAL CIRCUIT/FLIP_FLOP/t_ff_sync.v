module t_ff(output reg q,input wire t,rst,clk);
always @(posedge clk) begin
    if(rst)
    q<=0;
    else if(t)
    q<=~q;
    else
    q<=q;  
end
endmodule
