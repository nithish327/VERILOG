module tb_adder_task;
  reg [7:0]a,b;
  wire [7:0]sum;
  adder dut(.*);
  task apply_input;
    input [7:0]x,y;
    begin
      a=x;
      b=y;
      #10;
      $display("Time =%0t a=%b b=%b sum=%b",$time, a,b,sum);
    end
  endtask
  
  initial begin
    apply_input(8'b00101101,8'b11010010);
  end
endmodule
    
      
