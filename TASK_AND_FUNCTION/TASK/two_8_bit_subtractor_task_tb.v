module tb_adder_task;
  reg [7:0]a,b;
  wire [7:0]sub;
  adder dut(.*);
  task apply_input;
    input [7:0]x,y;
    begin
      a=x;
      b=y;
      #10;
      $display("Time =%0t a=%b b=%b sub=%b",$time, a,b,sub);
    end
  endtask
  
  initial begin
    $dumpfile("adder.vcd");
    $dumpvars(0,tb_adder_task);
    apply_input(8'b00101101,8'b11010010);
  end
endmodule
    
      
