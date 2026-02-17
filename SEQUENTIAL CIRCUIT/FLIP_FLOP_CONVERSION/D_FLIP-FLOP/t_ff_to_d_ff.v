module t_ff(output reg q,
input wire t,
input wire clk,rst
);
always @(posedge clk) begin
    if (rst)
    q <=0;
    else if(t)
    q<=~q;
    else
    q<=q;  
end 
endmodule
module d_ff (output q, input d, clk, rst);
  t_ff dut(.clk(clk), .rst(rst), .t(d), .q(q));
endmodule
