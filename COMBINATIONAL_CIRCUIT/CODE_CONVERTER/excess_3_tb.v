module tb;
  reg [3:0]bcd;
  wire [3:0]y;
  integer i;
  excess_3 dut(.*);
  initial begin
    for (i=0; i<=9;i=i+1)begin
      bcd=i;
      #10;
    end
    $finish;
  end
    initial begin
      $dumpfile("excess_3.vcd");
      $dumpvars(0,tb);
      $monitor("Time=%0t bcd=%b | xs_3=%b",$time,bcd,y);
    end
    endmodule
    
