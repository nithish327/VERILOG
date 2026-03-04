// Ripple carry adder using genvr
module fa(
    input  a,
    input  b,
    input  cin,
    output sum,
    output c_out
);

  assign sum   = a ^ b ^ cin;
  assign c_out = (a & b) | (b & cin) | (a & cin);

endmodule

module ripple_carry_adder (input [3:0]a,
                          input [3:0]b,
                          input cin,
                           output [3:0]sum,
                          output c_out
                         );
  wire [4:0]c;
  assign c[0]=cin;
  genvar i;
  generate
    for(i=0;i<4;i=i+1)begin:genblock
       fa ripple_carry_adder (.a(a[i]),
          .b(b[i]),
          .cin(c[i]),
          .sum(sum[i]),
          .c_out(c[i+1])
         );
    end
  endgenerate
  
  assign c_out=c[4];
endmodule
    
