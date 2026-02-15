module tb_universal_register;
reg [3:0]p_in;
reg [1:0]sel;
reg rst;
reg clk;
reg serial_right;
reg serial_left;
wire [3:0]q;
universal_register dut (.*);
always #10 clk= ~ clk;
initial begin
    $dumpfile("universal_register.vcd");
    $dumpvars(0,tb_universal_register);
    clk= 0;
    rst= 1;
    sel = 2'b00;
    p_in = 4'b0000;
    serial_right = 0;
    serial_left = 0;
  
    #20 rst= 0;
    #20 sel=2'b11;
    p_in= 4'b1101;
    #20 sel=2'b00;
    #20 sel=2'b01;
    serial_right=1;
    #20 sel=2'b10;
    serial_left=1;
    
  
    #20$finish;
end
initial begin
  $monitor ("Time=%0t | rst=%b | clk=%b | sel=%b | q=%b",$time,rst,clk,sel,q);
end
endmodule
