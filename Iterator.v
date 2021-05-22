module Iterator(
  input clk,rst,
  output reg [3:0] i
);

always @(posedge(clk) or negedge(rst))
begin
  if(rst == 1'b0)
    i = 0;
  else if (i != 11)
    i = i + 1;
end
endmodule