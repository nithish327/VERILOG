module d_ff(output reg q,input wire d,rst,clk);
always @(posedge clk) begin
    if(rst)
    q<=0;
    else
    q<=d;  
end
endmodule
module jk_ff (output q,input j,k,clk,rst);
  wire jk;
  assign jk = (j & ~q) | (~k & q);
  d_ff dut(.clk(clk), .rst(rst), .d(jk), .q(q));

endmodule
