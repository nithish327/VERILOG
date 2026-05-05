module tb;
  parameter N=8;
  reg PCLK;
  reg PRESETn;
  reg TRANSFER;
  reg READ_WRITE;
  reg [N-1:0]apb_write_paddr,apb_read_paddr;
  reg [N -1:0]apb_write_data;
  wire PREADY;
  wire [N -1:0]PRDATA;
  wire [N -1:0]PADDR;
  wire [N -1:0]PWDATA;
  wire [N -1:0]apb_read_data_out;
  wire PWRITE,PSELx,PENABLE;
  
  top_module #(N) dut (.PCLK(PCLK),
                   .PRESETn(PRESETn),
                   .TRANSFER(TRANSFER),
                   .READ_WRITE(READ_WRITE),
                   .PREADY(PREADY),
                   .apb_write_paddr(apb_write_paddr),
                   .apb_read_paddr(apb_read_paddr),
                   .apb_write_data(apb_write_data),
                   .PRDATA(PRDATA),
                   .PADDR(PADDR),
                   .PWDATA(PWDATA),
                   .apb_read_data_out(apb_read_data_out),
                   .PWRITE(PWRITE),.PSELx(PSELx),.PENABLE(PENABLE));
  always #5 PCLK = ~PCLK;
  
  task APB_write;
    input[N-1:0]addr;
    input [N-1:0]data;
    begin
      @(posedge PCLK);
      READ_WRITE =1;
      TRANSFER =1;
      apb_write_paddr =addr;
      apb_write_data = data;
      @(posedge PCLK);
      @(posedge PCLK);
      wait (PREADY==1);
      @(posedge PCLK);
      TRANSFER=0;
      
    end
  endtask
  
  task APB_read;
    input[N-1:0]addr;
    begin
      @(posedge PCLK);
      READ_WRITE =0;
      TRANSFER =1;
      apb_read_paddr = addr;
      
      @(posedge PCLK);
      @(posedge PCLK);
      
      wait (PREADY==1);
      @(posedge PCLK);
      TRANSFER=0;
      
    end
  endtask
  
  initial begin
    $dumpfile("top_module.vcd");
    $dumpvars(0,tb);
    PRESETn = 0;
    PCLK =0;
    TRANSFER=0;
    READ_WRITE =0;
    apb_write_paddr =0;
    apb_write_data =0;
    apb_read_paddr =0;
    
    #15 PRESETn =1;
    APB_write(8'h00,8'd15);
    APB_write(8'h04,8'd5);
    APB_write(8'h08,8'd0);
    APB_write(8'h0c,8'd1);
    APB_read(8'h10);
    #30;
    $display("ALU OUT =%d",apb_read_data_out);
    APB_write(8'h00,8'd15);
    APB_write(8'h04,8'd5);
    APB_write(8'h08,8'd1);
    APB_write(8'h0c,8'd1);
    APB_read(8'h10);
    #30;
    $display("ALU OUT =%d",apb_read_data_out);
    APB_write(8'h00,8'd15);
    APB_write(8'h04,8'd5);
    APB_write(8'h08,8'd2);
    APB_write(8'h0c,8'd1);
    APB_read(8'h10);
    #30;
    $display("ALU OUT =%d",apb_read_data_out);
    APB_write(8'h00,8'd15);
    APB_write(8'h04,8'd5);
    APB_write(8'h08,8'd3);
    APB_write(8'h0c,8'd1);
    APB_read(8'h10);
    #30;
    $display("ALU OUT =%d",apb_read_data_out);
    APB_write(8'h00,8'd15);
    APB_write(8'h04,8'd5);
    APB_write(8'h08,8'd7);
    APB_write(8'h0c,8'd1);
    APB_read(8'h10);
    #30;
    $display("ALU OUT =%d",apb_read_data_out);
    #50 $finish;
  end
endmodule
  
