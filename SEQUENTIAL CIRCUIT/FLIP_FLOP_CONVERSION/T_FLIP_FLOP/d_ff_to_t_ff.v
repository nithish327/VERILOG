module d_ff(output reg q,input wire d,rst,clk);
always @(posedge clk or posedge rst) begin
    if (rst)
        q <=0;
    else
        q<=d;
end
endmodule
module t_ff(input t,clk,rst, output q);
  d_ff dut (.clk(clk), .rst(rst), .d(t^q), .q(q));
endmodule
