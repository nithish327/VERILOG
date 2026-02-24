module tb;
  reg a,b;
  wire a_and_b,a_or_b;
  bit_op_task dut(.*);
  task bit_op;
    input x,y;
    begin
      a=x;
      b=y;
      #10;
    end
  endtask
  initial begin
    $monitor("Time =%0t a=%b b=%b a_and_b=%b a_or_b=%b",$time,a,b,a_and_b,a_or_b);
    $dumpfile("bit_op_task.vcd");
    $dumpvars(1,tb);
    bit_op (0,1);#10
    bit_op (1,1);#10
    bit_op (1,0);#10
    $finish;
  end
endmodule
