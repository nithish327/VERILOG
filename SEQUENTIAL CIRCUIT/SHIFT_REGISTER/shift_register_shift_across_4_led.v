/*Implement a 4-bit shift register that shifts a pattern across 4 LEDs.
Requirements:
Input: clk, rst, shift_in
Output: led[3:0]
Shift every 0.5 seconds */

module shift_registers(input clk,rst,shift_in,
                       output reg[3:0]led);
  reg shift_clk;
  reg [15:0]count; 
  always@(posedge clk)begin
    if (rst)begin
      count <= 0;
      shift_clk <= 0;
    end
    else begin
      if (clk == 25000000-1)begin
        count <= 0;
        shift_clk <= ~shift_clk;
      end
      else
        count <= count++;
    end
  end
      
      
    always@(posedge clk or posedge rst)begin
      if(rst)
        led <= 4'b0000;
      else
        led <= {shift_in,led[2:0]};
    end
        
endmodule
