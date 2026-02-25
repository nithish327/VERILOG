//Implement a function to return 1 if input is a prime number, else 0.

module prime_number(input wire [7:0]a,
                   output reg prime
                   );
  integer i;
  always @(*)begin
    prime = p(a);
  end
  function p;
    input [7:0]a;
    begin
      if (a<=2)
      p = 0;
      else begin
        p=1;
        for(i=2;i<a;i=i+1)begin
          if (a%i==0)
            p=0;
        end
      end
    end
  endfunction
endmodule
    
