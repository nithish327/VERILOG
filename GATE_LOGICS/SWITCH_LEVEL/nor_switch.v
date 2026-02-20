module nor_switch(input a,b, output out);
  supply0 gnd;
  supply1 vdd;
  wire w;
  pmos(w,vdd,a);
  pmos(out,w,b);
  nmos(out,gnd,a);
  nmos(out,gnd,b);
endmodule
