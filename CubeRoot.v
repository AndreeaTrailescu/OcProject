module CubeRoot(
  input signed [31:0] D,      //input
  input clk, rst, sign,
  output signed [10:0] rez,  //rezultat radical
  output signed [32:0] r           //rest
);

wire signed [32:0] f;              //factor
wire [3:0] i;

  Iterator inst1(.clk(clk), .rst(rst), .i(i));
  Factor inst2(.rez(rez), .i(i), .rst(rst), .f(f));
  DataPath inst3(.D(D), .i(i), .rst(rst), .f(f), .sign(sign), .rez(rez), .r(r));
 
endmodule   


module test;
  reg clk,rst,sign;
  reg signed [31:0] D;
  wire signed [32:0] r;
  wire signed [10:0] rez;
  
    
    CubeRoot inst(.D(D), .clk(clk), .rst(rst), .sign(sign), .rez(rez),.r(r));
  
initial begin
      clk = 1'b1; 
      sign = 0;
      rst = 1'b0;
      D = -32'd421;
      #50 rst = 1'b1;
      D = ~D + 1;
      #600 rst = 1'b0;
      $display("%b = %d", rez, rez);
      
      sign = 1;
      D = 32'd75366;
      #50 rst = 1'b1;
      #600 rst = 1'b0;
      
      D = 32'd1730482;
      #50 rst = 1'b1;
      #600 rst = 1'b0;
      
      D = 32'd1000;
      #50 rst = 1'b1;
      #600 rst = 1'b0;

      D = 32'd421;
      #50 rst = 1'b1;
      #900 $finish;
end 

initial begin
  forever
      #25 clk = ~clk;
end

endmodule