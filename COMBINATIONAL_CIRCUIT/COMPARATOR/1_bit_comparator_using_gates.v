module one_bit_comparator(input a,
                          input b,
                          output reg y0,y1,y2
                         );
  always @(*)begin
    y0 = (~a & ~b) | (a & b);
    y1 = (~a & b);
    y2 = (a & ~b);
  end
endmodule
