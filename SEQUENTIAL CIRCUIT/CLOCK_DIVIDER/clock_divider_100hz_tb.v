module tb;
  reg clk,rst;
  wire clk_out;
  wire [19:0]count;
  clock_divider dut(.*);
  always #10 clk=~clk;
  initial begin
    $dumpfile("clock_divider.vcd");
    $dumpvars(0,tb);
    $monitor("time=%0t reset=%b clock=%b clock_out=%b",$time,rst,clk,clk_out);
    rst=1;
    clk=0;
    #10 rst=0;
    #10000;
    $finish;
  end
endmodule
    
