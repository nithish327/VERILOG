module carry_la_adder(
    output reg [3:0]sum,
    output reg cout, 
    input [3:0]a,
    input [3:0]b,
    input c
    );
    reg c0,c1,c2;
    reg [3:0]g;
    reg [3:0]p;
always@(*)begin
    g=a&b;
    p=a^b;

    c0= g[0] | p[0] & (c);
    c1= g[1] | p[1] & (c0);
    c2= g[2] | p[2] & (c1);

    sum[0]= p[0] ^ c; 
    sum[1]= p[1] ^ c0;  
    sum[2]= p[2] ^ c1;
    sum[3]= p[3] ^ c2;
    
    cout= g[3] | p[3] & (c2);
end
endmodule
