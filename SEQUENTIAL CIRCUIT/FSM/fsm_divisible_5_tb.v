 module tb;
  reg in,clk,rst;
  wire out;
  integer i;
  integer error_count;
  integer remainder;
  fsm_divisible_5 dut (.*);
  always #5 clk=~clk;
  task send_bit(input bit_input);
    begin
    in=bit_input;
      @(posedge clk);
      
      remainder = (remainder*2 + bit_input) % 5; 
      if(out !==(remainder==0))begin
        $display("Error at time %0t Input=%b Expected=%b Result=%b",$time,bit_input,remainder==0,out);
      error_count = error_count +1;
      end
      else begin
        $display("Pass at time %0t Input=%b Result=%b",$time,bit_input,out);
      end
    end
  endtask
    
initial begin
    rst = 1;
    clk = 1;
    in =0;
    error_count =0;
    remainder =0;

    #20 rst = 0;
    #5 send_bit(1);
    #5 send_bit(0);
    #5 send_bit(1);
    #5 send_bit(1);
    #5 send_bit(0);
    #5 send_bit(1);
    #5 send_bit(0);
    #5 send_bit(1);
  
  for(i=0; i<20; i=i+1)begin
    send_bit($random % 2);
    if (error_count ==0)
      $display("ALL CASES ARE PASS");

    $finish;
end 
end
initial begin
  $dumpfile ("fsm_divisible_5.vcd");
  $dumpvars(0,tb);
end
endmodule
