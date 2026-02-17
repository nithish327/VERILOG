module tb_d_ff;
reg clk,rst,d;
wire q;
d_ff dut(.*);
always #10 clk = ~clk;
initial begin
$dumpfile("d_ff.vcd");
$dumpvars(0,tb_d_ff);
  $monitor ("Time=%0t clk=%b rst=%b d=%b q=%b",$time, clk,rst,d,q);
  rst = 1;
  clk = 0;
  d=0;
  #20 rst= 0;
  d=1;#20
  d=0;#20
  d=1;#20
  d=0;#20
  #20$finish;
end 
endmodule
