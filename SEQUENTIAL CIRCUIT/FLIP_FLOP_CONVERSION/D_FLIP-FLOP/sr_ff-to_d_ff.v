module sr_ff(output reg q,
input wire s,r,
input wire clk,rst
);
always @(posedge clk) begin
    if (rst)
    q <=0;
    else begin
      case({s,r})
        2'b00: q <= q;
        2'b01: q <= 0;
        2'b10: q <= 1;
        2'b11: q <= 1'bx;
        endcase
    end
end 
endmodule
module d_ff (output q, input d, clk, rst);
  sr_ff dut(.clk(clk), .rst(rst), .s(d), .r(~d), .q(q));
endmodule
