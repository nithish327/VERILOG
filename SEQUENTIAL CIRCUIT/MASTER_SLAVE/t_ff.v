module  t_master_slave(input t,clk,rst, output reg q);
  reg qn;
  always @(posedge clk or posedge rst)begin
    if (rst)
      qn <=0;
    else if(t) 
      qn <=~qn;
    else
      qn <=qn;
  end
  always @(negedge clk or posedge rst) begin
    if(rst)
      q<=0;
    else
      q<=qn;
  end
    endmodule
