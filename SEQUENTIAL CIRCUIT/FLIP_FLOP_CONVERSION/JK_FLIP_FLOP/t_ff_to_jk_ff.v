module t_ff(output reg q,input wire t,rst,clk);
always @(posedge clk) begin
    if(rst)
    q<=0;
    else if(t)
    q<=~q;
    
end
endmodule
module jk_ff (output reg q,input j,k,clk,rst);
  wire jk;
  assign jk = (j & ~q) | (~k & q);
  t_ff dut(.clk(clk), .rst(rst), .t(jk), .q(q));

endmodule
