module jk_ff(output reg q,input wire j,k,rst,clk);
always @(posedge clk or posedge rst) begin
    if (rst)begin
        q=0;
    end
    else begin
      case({j,k})
    2'b00: q<=q;
    2'b01: q<=0;
    2'b10: q<=1;
    2'b11: q<=~q;
    endcase
    end
end
endmodule
module t_ff(input t,clk,rst, output q);
  jk_ff dut (.clk(clk), .rst(rst), .j(~q&t), .k(q&t), .q(q));
endmodule
