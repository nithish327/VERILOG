// Create a task that performs both addition and subtraction and returns two outputs.
module add_sub_task(input wire a,b,
                    output reg sum,diff
                   );
  always @(*)begin
    operation_sum_diff(a,b,sum,diff);
  end
  task operation_sum_diff;
    input a,b;
    output sum,diff;
    begin
      sum= a+b;
      diff= a-b;
    end
  endtask
endmodule
