module tb;
  reg [3:0]a;
  wire [7:0]factorial;
factorial_function dut (.*);

initial begin
    $dumpfile("factorial_function.vcd");
    $dumpvars(0,tb);
  $monitor("Time=%0t a=%d factorial=%d",$time,a,factorial);
  a=3;#5
  a=5;#5
  $finish;
end 
endmodule
