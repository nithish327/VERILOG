module mux(input wire a,b,c,d,
input wire s0,s1,
output reg y
);
reg x,z;
always @(*) begin
    if (~s0) begin
        x<=a;
        z<=c;
    end
        else begin
        x<=b;
        z<=d;
    end
    if (~s1)
        y<= x;
        else
        y<=z;
    
    end
endmodule
