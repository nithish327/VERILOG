//Design 8:3 priority encoder using casez statements.

module priority_encoder(input [7:0]d,
                        output reg [2:0]y
                       );
  reg z;
  always @(*)begin
    casez(d)
      8'b1??????? : y=3'd7;
      8'b01?????? : y=3'd6;
      8'b001????? : y=3'd5;
      8'b0001???? : y=3'd4;
      8'b00001??? : y=3'd3;
      8'b000001?? : y=3'd2;
      8'b0000001? : y=3'd1;
      8'b00000001 : y=3'd0;
    endcase
  end
endmodule
      
      
