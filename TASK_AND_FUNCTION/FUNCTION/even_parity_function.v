module even_parity_function(input wire [7:0]data,
              output reg parity
             );
  always @(*)begin
    parity=calculate_parity(data);
  end
  function calculate_parity;
    input [7:0]d;
    begin
      calculate_parity = ~^d;
    end
  endfunction
endmodule
