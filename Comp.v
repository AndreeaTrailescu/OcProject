module Comp(
  input [32:0] acc,
  input [32:0] f,
  output reg comp
);

always @ (f or acc) 
begin
  if(f <= acc)
    comp = 1'b1;
  else
    comp = 1'b0;
end
endmodule  