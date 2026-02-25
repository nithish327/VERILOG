module tb;
  reg [7:0]a;
  wire prime;
  integer i;
  prime_number dut (.*);
  initial begin
    a=0;
    for(i=0;i<=30;i=i+1)begin
      a=i;
    #5;
    end
  $finish;
  end
  initial begin
    $dumpfile("prime_number.vcd");
    $dumpvars(0,tb);
    $monitor("Time=%0t a=%d prime=%b",$time,a,prime);
  end
endmodule
