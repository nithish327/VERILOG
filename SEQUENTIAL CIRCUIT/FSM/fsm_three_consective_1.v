// Design an FSM (Finite state machine) which will detect three consecutive 1’s with overlapping. And use the Mealy Machine.


module fsm(input wire d_in,clk,rst,
          output reg d_out
          );
  reg [1:0]state,next_state;
  parameter s0 = 2'b00,
  s1 = 2'b01,
  s2 = 2'b10;
  always @(posedge clk or negedge rst)begin
    if(!rst)
      state <= s0;
    else
      state <= next_state;
  end
  always @(*)begin
    case(state)
      s0: next_state = (d_in)? s1:s0;
      s1: next_state = (d_in)? s2:s0;
      s2: next_state = (d_in)? s2:s0;
    endcase
  end
  always @(*)begin
  if(state == s2 && d_in)
    d_out =1;
  else
    d_out =0;
  end
endmodule
