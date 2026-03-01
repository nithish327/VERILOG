// Write a function to compare two inputs and return 1 if equal.
module compare_function(input wire [3:0]a,b,
                        output reg result
                       );
  always @(*)begin
    result=compare_bit(a,b);
  end
  function compare_bit;
    input [3:0]bit_1,bit_2;
    begin
      if(bit_1 == bit_2)
        compare_bit =1;
      else
        compare_bit=0;
    end
  endfunction
endmodule
