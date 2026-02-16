module mod_counter_tb;
parameter n=10;
reg clk;
reg rst;
wire [3:0]count;
mod_counter dut (.*);
always 
#10 clk = ~clk;
initial begin 
  $dumpfile("mod_counter.vcd");
  $dumpvars(1,mod_counter_tb);
  $monitor("Time=%0t clk=%b rst=%b | count=%b",$time,clk,rst,count);
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
