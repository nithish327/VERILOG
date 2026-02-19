module  d_master_slave(input d,clk,rst, output reg q);
  reg qn;
  always @(posedge clk or posedge rst)begin
    if (rst)
      qn <=0;
    else 
      qn=d;
  end
  always @(negedge clk or posedge rst) begin
    if(rst)
      q<=0;
    else
      q<=qn;
  end
    endmodule
