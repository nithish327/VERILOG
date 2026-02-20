module nor_gate(input a,b, output out);
  wire w;
  or(w,a,b);
  not(out,w);
endmodule
