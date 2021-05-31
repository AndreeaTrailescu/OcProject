module DataPath(
  input signed [31:0] D,
  input [3:0] i,
  input rst,
  input [32:0] f,
  output signed [10:0] rez,
  output signed [32:0] r
);

wire [2:0] mux1;                   //iesirea primului multiplexor
wire [32:0] acc;                   //iesirea acumulatorului
wire comp, sign;                   //iesirea comparatorului si semnul input-ului
wire [32:0] mux2;                  //iesirea celui de-al doilea multiplexor
wire [32:0] sub;                   //diferenta dintre f si d


Mux1 inst1(.D(D), .i(i), .sign(sign), .mux1(mux1));
Acc inst2(.sub(sub), .mux1(mux1), .rst(rst), .i(i), .acc(acc));
Comp inst3(.acc(acc), .f(f), .comp(comp));
Mux2 inst4(.f(f), .comp(comp), .mux2(mux2));
Sub inst5(.acc(acc), .mux2(mux2), .sub(sub), .r(r));
Concat inst6(.comp(comp), .i(i), .rst(rst), .sign(sign), .rez(rez));

endmodule
