//Design configurable full adder using parameter construct (Test it for 8 bitand 16 bit full adder). Use $Strobe for Displaying result on transcript

module full_adder #(parameter N=8)(input [N-1:0]a,b,
                                input c,
                                output reg [N-1:0]sum,
                                output reg carry
                  );
  always @ (*)begin
    {carry,sum} = a + b + c;
  end
endmodule
