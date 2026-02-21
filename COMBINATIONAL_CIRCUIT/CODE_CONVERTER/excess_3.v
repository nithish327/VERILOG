module excess_3(input wire [3:0]bcd,
                output reg [3:0]y
               );
  always @(*) begin
    y = bcd + 4'b0011;
  end 
  endmodule
    
    
