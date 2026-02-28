//To design a state diagram and implement a circuit that outputs a "1" if the aggregate serial binary input is divisible by 5, we first need to understand the problem and then translate it into Verilog code.

module fsm_divisible_5(input wire in, clk,rst,
                  output reg out 
                  );
  reg [2:0]state,n_state;
  parameter s0 = 3'b000,
  s1 = 3'b001,
  s2 = 3'b010,
  s3 = 3'b011,
  s4 = 3'b100;
  always @(posedge clk or posedge rst )begin
    if (rst)
      state <= 0;
    else
      state <= n_state;
  end
  always @(*)begin
    case(state)
      s0: begin
        if (in)
          n_state = s1;
        else 
          n_state = s0;
        end
    
      s1: begin
        if (in)
          n_state = s3;
        else 
          n_state =  s2;
        end
    
      s2: begin
        if (in)
          n_state = s0;
        else 
          n_state = s4;
        end

      s3: begin
        if (in)
          n_state = s2;
        else 
          n_state = s1;
        end

      s4: begin
        if (in)
          n_state = s4;
        else 
          n_state = s3;
        end
      default: n_state = s0;
    endcase
  end
  always @(*)begin
    if (n_state == s0)
      out =1;
    else 
      out = 0;
  end
  endmodule
