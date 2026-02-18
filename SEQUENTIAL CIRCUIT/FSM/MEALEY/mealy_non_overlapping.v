module mealey_non_overlapping(input clk,rst,in, output reg out);
  reg [3:0]state,next_state;
  parameter s0 = 2'b00,
  s1 = 2'b01,
  s2 = 2'b10,
  s3 = 2'b11;
  always @(posedge clk or posedge rst) begin
    if(rst)
      state <=s0;
    else
      state <= next_state;
  end
    always @(*)begin
      case(state)
        s0:begin
          if (in)
            next_state = s1;
          else
            next_state = s0;
        end
         s1:begin
          if (in)
            next_state = s1;
          else
            next_state = s2;
        end
         s2:begin
          if (in)
            next_state = s3;
          else
            next_state = s0;
        end
         s3:begin
          if (in)
            next_state = s0;
          else
            next_state = s2;
        end
      endcase
    end
  always @(posedge clk )begin
        if(state==s3 && in)
          out <=1;
        else
          out <=0;
      end
      endmodule
      
