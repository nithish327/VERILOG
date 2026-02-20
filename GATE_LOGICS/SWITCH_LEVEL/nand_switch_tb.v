module tb;
  reg a,b;
  wire out;
  nand_switch dut(.*);
  initial begin
    $dumpfile("nand_switch");
    $dumpvars(0,tb);
    $monitor("Time =%0t a=%b b=%b | out=%b",$time,a,b,out);
    a=0; b=0;#5
    a=0; b=1;#5
    a=1; b=0;#5
    a=1; b=1;#5
    $finish;
  end
endmodule
