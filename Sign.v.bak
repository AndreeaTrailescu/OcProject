module Sign(
  input signed [31:0] in,
  input rst,
  output reg signed [31:0] D,
  output reg sign
);

always @ (in or rst)
begin
  if (rst == 1'b0)
    begin
    if (in < 0)
      begin
        D = ~in + 32'd1;
        sign = 1'b0;
      end
    else
      begin
        D = in;
        sign = 1'b1;
      end
    end
end
endmodule    
    