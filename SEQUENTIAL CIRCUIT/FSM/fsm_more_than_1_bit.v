//To design a Finite State Machine (FSM) in Verilog that detects more than one "1" in the last three samples.

module fsm (input wire d_in, clk,rst,
           output reg d_out
           );
  reg [1:0]state,next_state;
  parameter s0 = 2'b00,
  s1 = 2'b01, 
  s2 = 2'b10,
  s3 = 2'b11;
  always @(posedge clk or posedge rst)begin
    if (rst)
      state <= 0;
    else
      state <= next_state;
  end
  always @(*)begin
    case(state)
     s0:begin 
       if(d_in)begin
         next_state = s1;
         d_out = 0;
       end
       else begin
         next_state = s0;
         d_out = 0;
       end
     end
     s1:begin 
       if(d_in)begin
         next_state = s3;
         d_out = 1;
       end
       else begin
         next_state = s2;
         d_out = 0;
       end
     end
     s2:begin 
       if(d_in)begin
         next_state = s1;
         d_out = 1;
       end
       else begin
         next_state = s0;
         d_out = 0;
       end
     end
     s3:begin 
       if(d_in)begin
         next_state = s3;
         d_out = 1;
       end
       else begin
         next_state = s2;
         d_out = 1;
       end
     end
    endcase
  end
endmodule
    
