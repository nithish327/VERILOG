module two_bit_comparator(input [1:0]a,
                          input [1:0]b,
                          output reg y0,y1,y2
                         );
  always @(*)begin
    y0 = ((~a[1] & ~b[1]) | (a[1] & b[1])) &((~a[0] & ~b[0]) | (a[0] & b[0]));
    y1 = (~a[1] & b[1]) | (((a[1] & ~b[1]) | (~a[1] & ~b[1])) & (~a[0] & b[0]));
    y2 = (a[1] & ~b[1]) | (((a[1] & ~b[1]) | (~a[1] & ~b[1])) & (a[0] & ~b[0]));
  end
endmodule
