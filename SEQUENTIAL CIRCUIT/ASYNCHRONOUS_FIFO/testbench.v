module tb #(parameter  W=8,D=32);
  parameter WRITE_CLOCK_PERIOD = 10,READ_CLOCK_PERIOD = 20;
  reg w_clk,r_clk,w_rst,r_rst;
  reg w_en,r_en;
  reg [W-1:0]data_in;
  wire [W-1:0]data_out;
  wire full,empty;
  
  async_fifo #(D,W) dut (.w_clk(w_clk),.r_clk(r_clk),.w_rst(w_rst),.r_rst(r_rst),.w_en(w_en),.r_en(r_en),.data_in(data_in),.data_out(data_out),.full(full),.empty(empty));
  
  initial begin 
    w_clk = 0;
    forever #(WRITE_CLOCK_PERIOD/2) w_clk = ~w_clk;
  end
  
  initial begin 
    r_clk = 0;
    forever #(READ_CLOCK_PERIOD/2) r_clk = ~r_clk;
  end
  
  initial begin
    w_rst = 1;
    r_rst = 1;
    w_en = 1;
    r_en = 0;
    
    //  fifo ful condition 
    
    repeat(35)begin
      @(negedge  w_clk);
      w_rst = 0;
      r_rst = 0;
      w_en = 1;
      r_en = 0;
      data_in = $random;
    end
    
    // fifo empty condition 
   
    
    repeat(35)begin
      @(negedge  r_clk);
      w_en = 0;
      r_en = 1;
    end
    
    repeat(32)begin
      @(negedge  w_clk);
      w_en = 1;
      r_en = 1;
      data_in = $random;
    end
    #10 $finish;
  end
  
  initial begin
    $dumpfile("async_fifo.vcd");
    $dumpvars(0,tb);
  end
  always @(posedge w_clk)begin
    if(w_en)begin
      if(full)
        $display(" TIME = %0t | FIFO IS FULL CAN'T WRITE RIGHT NOW",$time);
      else
        $strobe(" TIME = %0t | WRITE : DATA_IN =%0d | W_PTR = %0d",$time,data_in,dut.b_wptr);
    end
  end
  
  always @(posedge r_clk)begin
    if(r_en)begin
      if(empty)
        $display(" TIME = %0t | FIFO IS EMPTY CAN'T READ RIGHT NOW",$time);
      else
        $strobe(" TIME = %0t | READ : DATA_OUT =%0d | R_PTR = %0d",$time,data_out,dut.b_rptr);
    end
  end
endmodule
