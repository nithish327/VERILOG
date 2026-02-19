module  sr_master_slave(input s,r,clk,rst, output reg q);
  reg qn;
  always @(posedge clk or posedge rst)begin
    if (rst)
      qn <=0;
    else 
      case({s,r})
        2'b00: qn <= qn;
        2'b01: qn <= 0;
        2'b10: qn <= 1;
        2'b11: qn <= 1'bx;
        endcase
  end
  always @(negedge clk or posedge rst) begin
    if(rst)
      q<=0;
    else
      q<=qn;
  end
    endmodule
