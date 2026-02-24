module tb;
  reg [7:0]data;
  wire parity;
  integer i;
  odd_parity_function dut (.*);
  initial begin
    for (i=0; i<=15; i=i+1)begin
      data=i;
      #10;
  end
    $finish;
  end
  initial begin
    $dumpfile("odd_parity_function.vcd");
    $dumpvars(0,tb);
    $monitor("Time=%0t data=%b parity=%b",$time, data ,parity);
  end
endmodule
