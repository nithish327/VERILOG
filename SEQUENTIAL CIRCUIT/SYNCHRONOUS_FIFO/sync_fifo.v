module synchronous_fifo(input clk,rst,
                        input [7:0]d_in,
                        input wr_en,rd_en,
                        output reg [7:0]d_out,
                        output full,
                        output empty
                        );
  reg [3:0]wr_ptr,rd_ptr;
  reg [7:0]mem[0:7];
  always @ (posedge clk or posedge rst)begin
    if(rst)
      wr_ptr<=0;
    else if (wr_en ==1 && !full)begin
      mem[wr_ptr]<= d_in;
      wr_ptr <= wr_ptr+1;
    end
  end
  always @ (posedge clk or posedge rst)begin
    
    if(rst)
      rd_ptr <=0;
    else if (rd_en ==1 && !empty)begin
      d_out <= mem[rd_ptr];
      rd_ptr<= rd_ptr+1;
    end
  end
  assign full =(wr_ptr+1==rd_ptr);
  assign empty =(wr_ptr==rd_ptr);
endmodule
