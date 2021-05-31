module Sub(
  input [32:0] acc,
  input [32:0] mux2,
  output reg [32:0] sub,
  output reg signed [32:0] r
);

always @ (acc or mux2)
begin
  sub = acc - mux2;
  r = sub;              //restul este ultimul rezultat al scaderii
end
endmodule