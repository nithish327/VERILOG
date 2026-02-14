module jk_latch(output reg q,input wire j,k,rst,clk);
always @(clk ) begin
    if (rst)begin
        q<=0;
    end
        else if(clk) begin
    case({j,k})
    2'b00: q<=q;
    2'b01: q<=j;
    2'b10: q<=j;
    2'b11: q<=~q;
    endcase
        end
end
endmodule
