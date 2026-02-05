module p_encoder(output y0,y1,y2,input [7:0]d);
assign y0= d[4]|d[5]|d[6]|d[7];
assign y1= (d[2]|d[3]) & ~(d[4]|d[5]|d[6]|d[7]) | d[6]|d[7];
assign y2= d[1] &  ~(d[2]|d[3]|d[4]|d[5]|d[6]) | d[3]& ~(d[4]|d[5]|d[6]) | d[5]&~(d[6]) | d[7];
endmodule
