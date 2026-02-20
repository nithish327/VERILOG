module nand_switch(input a,b, output out);
  supply0 gnd;
  supply1 vdd;
  wire w;
  pmos(out,vdd,a);
  pmos(out,vdd,b);
  nmos(out,w,a);
  nmos(w,gnd,b);
endmodule
