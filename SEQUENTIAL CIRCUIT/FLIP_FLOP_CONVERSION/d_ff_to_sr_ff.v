module d_ff(output reg q,input wire d,rst,clk);
always @(posedge clk) begin
    if(rst)
    q<=0;
    else
    q<=d;  
end
endmodule
module sr_ff(output q,input s,r,clk,rst);
  wire sr;
  assign sr= (s & ~r) ? 1'b1 :
             (~s & r) ? 1'b0 :
             (~s & ~r) ? q :
              1'bx; 
  d_ff dut(.clk(clk), .rst(rst), .d(sr), .q(q));
endmodule
