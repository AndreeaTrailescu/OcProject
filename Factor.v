module Factor(
  input signed [10:0] rez,
  input [3:0] i,
  input rst,
  output reg signed [32:0] f
);

reg signed [31:0] a;

always @ (i or rst)
begin 
  if (rst == 1'b0)
      a = 0;
    else
      begin
        if (i == 0)
          f = 1;
        else
          begin
            a = rez;
            a = a>>(11 - i);
            f = 3*a*a + 3*a + 1;
          end
      end
end

endmodule
  
        