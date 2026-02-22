module comparator(output reg y0,y1,y2,
input a,
input b
);
always @(*) begin
    y0= (a < b);
    y1= (a == b);
    y2= (a > b);
end
endmodule
