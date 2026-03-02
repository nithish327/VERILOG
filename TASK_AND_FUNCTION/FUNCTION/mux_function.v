//Create a function that implements a multiplexer (selects 1 of 4 inputs).

module mux4_1_function(input wire[1:0]sel,
                        input wire i0,i1,i2,i3,
                        output reg y
                        );
  always @(*)begin
    y=mux_out(sel,i0,i1,i2,i3);
  end
  function mux_out;
    input [1:0]sel;
    input i0,i1,i2,i3;
    begin
      case(sel)
        2'b00 : mux_out = i0;
        2'b01 : mux_out = i1;
        2'b10 : mux_out = i2;
        2'b11 : mux_out = i3;
      endcase
    end
    endfunction 
endmodule
      
