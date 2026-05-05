module ALU_slave#(parameter N=8)(input PCLK,PRESETn,
                 input PWRITE,PSELx,PENABLE,
                 input [N-1:0]PADDR,PWDATA,
                 output reg PREADY,
                 output reg [N-1:0]PRDATA);
  reg [N-1:0]mem[255:0];
  reg [N-1:0]opa_reg;
  reg [N-1:0]opb_reg;
  reg [2:0]opcode_reg;
  reg start_reg;
  reg [N-1:0]result_reg;
  wire [N-1:0]out;
  
  
  ALU #(N) dut (.a(opa_reg),.b(opb_reg),.opcode(opcode_reg),.y(out));
  
  always@(posedge PCLK or negedge PRESETn)begin
    if(!PRESETn)begin
      PREADY <=0;
      PRDATA <=0;
      opa_reg =0;
      opb_reg =0;
      opcode_reg =0;
      start_reg =0;
      result_reg =0;
    end
    else begin
      PREADY <=0;
      if(PENABLE && PSELx)begin
        PREADY <=1;
        if(PWRITE)begin
          case(PADDR)
            8'h00 : opa_reg <= PWDATA;
            8'h04 : opb_reg <= PWDATA;
            8'h08 : opcode_reg <= PWDATA[2:0];
            8'h0c: begin
              start_reg <= PWDATA[0];
              if(start_reg)
                result_reg <= out;
            end
            
          endcase
        end
    else begin
      
      case(PADDR)
        8'h10: PRDATA <= result_reg;
        default : PRDATA <=0;
      endcase
    end
      end
    end
  end
endmodule
