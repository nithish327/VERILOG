module up_counter_tb;
reg clk;
reg rst;
wire [3:0]count;
up_counter dut (.*);
always 
#10 clk = ~clk;
integer i;
initial begin 
  $dumpfile("up_counter.vcd");
  $dumpvars(1,up_counter_tb);
  $monitor("Time=%b clk=%b rst=%b | count=%b",$time,clk,rst,count);
    rst = 1;
    clk = 0;
    
    #15 rst =0;
  for (i=0; i<20; i=i+1)begin
        #20;
        end
  #200$finish;
end
endmodule
