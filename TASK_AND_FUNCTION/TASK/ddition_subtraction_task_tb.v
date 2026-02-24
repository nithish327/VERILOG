module tb;
  reg a,b;
  wire sum,diff;
  add_sub_task dut(.*);
  task input_a_b;
    input x,y;
    begin
      a=x;
      b=y;
      #10;
    end
  endtask
  initial begin
    $dumpfile("add_sub_task.vcd");
    $dumpvars(0,tb);
    $monitor("Time =%0t a=%b b=%b sum=%b diff=%b",$time,a,b,sum,diff);
    input_a_b(1,0);
    input_a_b(0,1);
    input_a_b(0,0);
    input_a_b(1,1);
  end
endmodule
    
