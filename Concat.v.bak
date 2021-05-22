module Concat(
  input comp,
  input [3:0] i,
  input rst,
  input sign,
  output reg signed [10:0] rez
);

reg signed [10:0] aux;
always @ (rst or comp or i)
begin
  if (rst == 1'b0)
      rez = 11'd0;
  else 
    begin
      rez[11 - i] = comp;
      if(sign == 0 && i == 11)
        begin
          aux = -rez;
          rez = aux;
        end
    end
end
endmodule