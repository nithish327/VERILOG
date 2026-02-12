module mux(input wire i0,i1,i2,i3,i4,i5,i6,i7,
input wire s0,s1,s2,
output reg y
);
reg a,b,c,d,e,f;
always @(*) begin
    if (~s0) begin
        a=i0;
        b=i2;
        c=i4;
        d=i6;
    end
        else begin
        a=i1;
        b=i3;
        c=i5;
        d=i7;
    end
    if (~s1) begin
        e=a;
        f=c;
    end
        else begin
        e=b;
        f=d;
        end
        if (~s2)
        y= e;
        else
        y=f;
    
    end
endmodule
