
module up_down_counter_tb;
reg clk;
reg rst;
reg mode;
wire [3:0]count;
up_down_counter dut (.*);
always 
#10 clk = ~clk;
integer i;
initial begin 
  $dumpfile("up_down_counter.vcd");
  $dumpvars(1,up_down_counter_tb);
  $monitor("Time=%b clk=%b rst=%b | count=%b",$time,clk,rst,count);
    rst = 1;
    clk = 0;
    
    #15 rst =0;
  mode =1;
  for (i=0; i<20; i=i+1)begin
        #20;
        end
  mode =0;
  for (i=0; i<20; i=i-1)begin
        #20;
  end
  
  #80$finish;
end
endmodule
