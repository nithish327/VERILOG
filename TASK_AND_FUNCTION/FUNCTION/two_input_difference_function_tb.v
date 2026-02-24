module tb;
  reg [1:0]a,b;
  wire [1:0]diff;
  integer i;
  two_input_diff dut(.*);
  initial begin
    for(i=0;i<=3;i=i+1)begin
    a=i;b=~i;
      #10;
  end
  $finish;
  end
  initial begin
    $dumpfile("two_bit_diff.vcd");
    $dumpvars(0,tb);
    $monitor("Time=%0t a=%b b=%b diff=%b",$time,a,b,diff);
  end
endmodule
    
