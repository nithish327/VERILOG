module factorial_function(input wire [3:0]a,
                          output reg [7:0]factorial
);
  integer i;
always @ (*)begin
    factorial=fact(a);
end
  function [7:0]fact;
    input [3:0]a;
begin
  fact=1;
  for(i=1;i<=a;i=i+1)begin
    fact=fact*i;
  end
end
endfunction
endmodule
