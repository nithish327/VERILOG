/* Write a Verilog module that blinks an LED at 1 Hz using a 50 MHz clock. The LED must
toggle every 0.5 seconds. Inputs are clk and rst, output is led.  */

module led_blinks(input clk,rst,
                  output reg led
                  );
  
  reg [2:0]count; 
  always@(posedge clk)begin
    if (rst)begin
      count <= 0;
      led <= 0;
    end
    else begin
      if (count == 5-1)begin
        count <= 0;
        led <= ~led;
      end
      else
        count <= count+1;
    end
  end
      
      
    
endmodule
