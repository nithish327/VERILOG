module ring_counter_tb;
parameter n=7;
reg clk;
reg rst;
wire [3:0]q;
ring_counter dut (.*);
always 
#10 clk = ~clk;
initial begin 
  $dumpfile("ring_counter.vcd");
  $dumpvars(1,ring_counter_tb);
  $monitor("Time=%0t clk=%b rst=%b | q=%b",$time,clk,rst,q);
    rst = 1;
    clk = 0;
    
    #15 rst =0;
    #120;
    rst = 1;
    #10;
    rst = 0;
  #80$finish;
end
endmodule
