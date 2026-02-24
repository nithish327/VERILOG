//Create a function that returns the XOR of all bits of an input (odd parity).

module odd_parity_function(input wire [7:0]data,
              output reg parity
             );
  always @(*)begin
    parity=calculate_parity(data);
  end
  function calculate_parity;
    input [7:0]d;
    begin
      calculate_parity = ^d;
    end
  endfunction
endmodule
