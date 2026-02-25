//Design a task that accepts an 8-bit input and outputs its binary reversed form.

module bit_reverse_task(input wire [7:0]a,
                        output reg [7:0]b
                       );
  integer i;
  always @(*)begin
    binary(a,b);
  end
  task binary;
    input [7:0]a;
    output reg [7:0]b;
    begin
      for(i=0;i<=7;i=i+1)begin
        b[i]=a[7-i];
      end
      
    end
  endtask
endmodule

