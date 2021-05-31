module Factor(
  input signed [10:0] rez,
  input [3:0] i,
  input rst,
  output reg [32:0] f
);

reg signed [31:0] a;          //unul din valorile prezise pentru obtinerea rezultatului

always @ (i or rst)
begin 
  if (rst == 1'b0)
      a = 0;
    else
      begin
        if (i == 0)
          f = 1;                      //la inceput cand a = 0 si b = 1 => f = 1
        else
          begin
            a = rez;
            a = a>>(11 - i);          //se observa din exemplu ca a devine pe parcurs rezultatul final shiftat la dreapta cu valoarea iteratiei-1
            f = 3*a*a + 3*a + 1;      //calcularea factorului tinand cont ca b = 1 la inceputul iteratiei
          end
      end
end

endmodule
  
        