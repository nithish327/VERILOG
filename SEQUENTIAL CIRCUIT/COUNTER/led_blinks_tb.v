
module tb;
  reg clk,rst;
  wire led;
  reg count ;
  led_blinks DUT (.clk(clk),.rst(rst),.led(led));
  always #5 clk = ~ clk; 
  
  initial begin
    $dumpfile("led_blinks.vcd");
    $dumpvars(0,tb);
    rst =1 ;
    clk =1;
    count =0;
    
    #10 rst = 0;
    
    
    $monitor("time = %0t count = %0b  led = %b ",$time,count,led);
    #200$finish;
  end
endmodule
