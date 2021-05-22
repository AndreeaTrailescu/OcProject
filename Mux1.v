module Mux1(
  input signed [31:0] D,
  input [3:0] i,
  output reg [2:0] mux1
);

always @ (D or i)
begin
  case(i)
          
    0: mux1 = {1'b0, D[31:30]};
    1: mux1 = D[29:27];
    2: mux1 = D[26:24];
    3: mux1 = D[23:21];
    4: mux1 = D[20:18];
    5: mux1 = D[17:15];
    6: mux1 = D[14:12];
    7: mux1 = D[11:9];
    8: mux1 = D[8:6];
    9: mux1 = D[5:3];
    10: mux1 = D[2:0];
    default : mux1 = 0;
endcase
end
endmodule


    