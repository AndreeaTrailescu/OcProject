module Mux1(
  input signed [31:0] D,
  input [3:0] i,
  output reg sign,
  output reg [2:0] mux1
);

reg signed [31:0] in;
always @ (D or i)
begin

  if(D < 0)
    begin
      sign = 0;             //se seteaza semnul (0-negativ,1-pozitiv)
      in = ~D + 1;          //in cazul in care inputul e negativ, se face transformarea in C2
    end
  else
    begin
      sign = 1;
      in = D;
    end
  
  case(i)
    
    //selectia grupurilor de cate 3 biti
    0: mux1 = {1'b0, in[31:30]};
    1: mux1 = in[29:27];
    2: mux1 = in[26:24];
    3: mux1 = in[23:21];
    4: mux1 = in[20:18];
    5: mux1 = in[17:15];
    6: mux1 = in[14:12];
    7: mux1 = in[11:9];
    8: mux1 = in[8:6];
    9: mux1 = in[5:3];
    10: mux1 = in[2:0];
    default : mux1 = 0;
endcase
end
endmodule


    