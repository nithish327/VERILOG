/Develop a task that performs both AND and OR operations on two inputs.

module bit_op_task(input wire a,b,
                  output reg a_and_b,a_or_b
                  );
  always @(*)begin
    bit_op(a,b,a_and_b,a_or_b);
  end
  task bit_op;
    input a,b;
    output a_and_b,a_or_b;
    begin
    a_and_b = a&b;
    a_or_b = a|b;
    end
    endtask
endmodule
    
