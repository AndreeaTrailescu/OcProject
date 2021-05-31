module Acc(
  input [32:0] sub,
  input [2:0] mux1,
  input [3:0] i,
  input rst,
  output reg [32:0] acc
);

always @ (i or rst)
begin
  if (rst == 1'b0)
    acc = mux1;
  else
    acc = mux1 + (sub<<3);
end
endmodule