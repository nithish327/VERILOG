module tb_bi_dir_register;
reg sel;
reg rst;
reg clk;
reg serial_right;
reg serial_left;
wire [3:0]q;
bi_dir_register dut (.*);
always #10 clk= ~ clk;
initial begin
  $dumpfile("bi_dir_register.vcd");
  $dumpvars(0,tb_bi_dir_register);
    clk= 0;
    rst= 1;
    sel = 1'b0;
    serial_right = 0;
    serial_left = 0;
  
    #20 rst= 0;
    #20 sel=1'b0;
    serial_right=1;
    #20 sel=1'b1;
    serial_left=1;
    
  
    #20$finish;
end
initial begin
  $monitor ("Time=%0t | rst=%b | clk=%b | sel=%b | q=%b",$time,rst,clk,sel,q);
end
endmodule
