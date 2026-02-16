module johnson_counter_tb;
reg clk;
reg rst;
wire [3:0]q;
johnson_counter dut (.*);
always#10 clk = ~clk;
initial begin 
  $dumpfile("johnson_counter.vcd");
  $dumpvars(0,johnson_counter_tb);
  $monitor("Time=%0t clk=%b rst=%b | q=%b",$time,clk,rst,q);
    rst = 1;
    clk = 0;
  

    #15 rst =0;
    #120;
    $finish;
end
endmodule
