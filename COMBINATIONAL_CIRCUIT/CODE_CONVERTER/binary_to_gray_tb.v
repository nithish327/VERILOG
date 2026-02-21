module tb;
  reg [3:0]binary;
  wire [3:0]gray;
  integer i;
  binary_to_gray dut(.*);
  initial begin
    for(i=0; i<=15;i=i+1)begin
      binary = i;
      #10;
    end
    $finish;
  end
    initial begin
      $dumpfile("binary_to_gray.vcd");
      $dumpvars(0,tb);
      $monitor("Time=%0t binary=%b | gray =%b",$time,binary,gray);
    end
    endmodule
    
