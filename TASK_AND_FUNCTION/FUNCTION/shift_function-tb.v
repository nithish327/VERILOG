module tb;
  reg [7:0]a;
  reg clk,rst;
  wire [7:0]out;
  shift_function dut(.*);
  initial clk=0;
  always #5 clk=~clk;
  initial begin
    $dumpfile("shift_function.vcd");
    $dumpvars(0,tb);
    $monitor("Time=%0t clk=%b rst=%b a=%b | out=%b",$time,clk,rst,a,out);
    rst=1;
    clk=0;
    a=0;
    #10 rst=0;
    #10 a=8'b11001010;
    #40$finish;
  end
endmodule
