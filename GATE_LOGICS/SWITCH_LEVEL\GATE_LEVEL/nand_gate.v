module nand_gate(input a,b, output out);
  wire w;
  and(w,a,b);
  not(out,w);
endmodule
