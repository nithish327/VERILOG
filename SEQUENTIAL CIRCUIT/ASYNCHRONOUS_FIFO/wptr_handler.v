module wptr_handler #(parameter A)(
  input w_clk,
  input w_rst,
  input w_en,
  input [A:0]g_rptr_sync,
  output reg [A:0]b_wptr,g_wptr,
  output reg full);
  wire t_full;
  wire [A:0]b_wptr_nxt,g_wptr_nxt;

  assign b_wptr_nxt=b_wptr+(w_en && !full);
  assign g_wptr_nxt=(b_wptr_nxt^(b_wptr_nxt>>1));

  always @(posedge w_clk or posedge w_rst)begin
    if(w_rst)begin
      b_wptr <= 0;
      g_wptr <= 0;
      full <= 0;
    end
    else begin
      b_wptr <= b_wptr_nxt;
      g_wptr <= g_wptr_nxt;
      full<=t_full;
    end
  end
  
  assign t_full = (g_wptr_nxt=={~g_rptr_sync[A:A-1],g_rptr_sync[A-2:0]});
endmodule
    
