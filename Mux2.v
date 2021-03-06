module Mux2(
  input comp,
  input [32:0] f,
  output reg [32:0] mux2
);

always @ (comp or f)
begin
  if(comp == 1'b1)
    mux2 = f;
  else
    mux2 = 0;
end
endmodule    