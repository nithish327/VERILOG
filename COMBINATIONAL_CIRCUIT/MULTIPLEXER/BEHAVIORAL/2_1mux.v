module mux2_1(input a,b,sel,output reg y);
always @(*) begin
    if (~sel)
    y=a;
    else
    y=b;
end
endmodule
