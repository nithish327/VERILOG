module four_bit_carry_adder(
    output reg [3:0]sum,
    output reg cout, 
    input [3:0]a,
    input [3:0]b,
    input c
    );
    reg c1,c2,c3;
    assign c1= a[0]&b[0]|b[0]&c|a[0]&c;
    assign c2= a[1]&b[1]|b[1]&c1|a[1]&c1;
    assign c3= a[2]&b[2]|b[2]&c2|a[2]&c2;

    assign sum[0]= a[0]^b[0]^c;
    assign sum[1]= a[1]^b[1]^c1;
    assign sum[2]= a[2]^b[2]^c2;
    assign sum[3]= a[3]^b[3]^c3;

    assign cout= a[3]&b[3]|b[3]&c3|a[3]&c3;
endmodule
