//Write Verilog code for sequence detector 10110 in Moore - overlapping
module fsm (input wire d_in,clk,rst,
           output reg d_out
           );
  reg [2:0]state,next_state;
  parameter s0 = 3'b000,
  s1 = 3'b001,
  s2 = 3'b010,
  s3 = 3'b011,
  s4 = 3'b100,
  s5 = 3'b101;
  always @ (posedge clk or posedge rst)begin
    if (rst)
      state <= s0;
    else
      state <= next_state;
  end
  always @(*)begin
    case(state)
      s0 : next_state = (d_in)?s1:s0;
      s1 : next_state = (d_in)?s1:s2;
      s2 : next_state = (d_in)?s3:s0;
      s3 : next_state = (d_in)?s4:s2;
      s4 : next_state = (d_in)?s1:s5;
      s5 : next_state = (d_in)?s1:s0;
    endcase
  end
  always @(*)begin 
    if(state == s5)
      d_out =1;
    else
      d_out =0;
  end
endmodule 
