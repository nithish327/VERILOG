module jk_ff(output reg q,
input wire j,k,
input wire clk,rst
);
always @(posedge clk) begin
    if (rst)
    q <=0;
    else begin
        case({j,k})
        2'b00: q <= q;
        2'b01: q <= 0;
        2'b10: q <= 1;
        2'b11: q <= ~q;
        endcase
    end
end 
endmodule
module d_ff (output q, input d, clk, rst);
jk_ff dut(.clk(clk), .rst(rst), .j(d), .k(~d), .q(q));
endmodule
