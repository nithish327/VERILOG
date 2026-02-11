module sr_ff(output reg q,input wire s,r,rst,clk);
always @(posedge clk or posedge rst) begin
    if (rst)begin
        q=0;
    end
    else begin
    case({s,r})
    2'b00: q<=q;
    2'b01: q<=s;
    2'b10: q<=s;
    2'b11: q<=1'bx;
    endcase
    end
end
endmodule
