module comparator(output reg y0,y1,y2,
input [3:0]a,
input [3:0]b
);
always @(*) begin
    y0= (a < b);
    y1= (a == b);
    y2= (a > b);
end
endmodule
