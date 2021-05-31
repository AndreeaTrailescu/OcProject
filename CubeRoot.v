module CubeRoot(
  input signed [31:0] D,      //input
  input clk, rst,
  output signed [10:0] rez,   //rezultat radical
  output signed [32:0] r      //rest
);

wire [32:0] f;                     //factor
wire [3:0] i;                      //iterator

  Iterator inst1(.clk(clk), .rst(rst), .i(i));
  Factor inst2(.rez(rez), .i(i), .rst(rst), .f(f));
  DataPath inst3(.D(D), .i(i), .rst(rst), .f(f), .rez(rez), .r(r));
 
endmodule   


module test;
  reg clk,rst;
  reg signed [31:0] D;
  wire signed [32:0] r;
  wire signed [10:0] rez;
  
    
    CubeRoot inst(.D(D), .clk(clk), .rst(rst), .rez(rez),.r(r));
  
initial begin
      clk = 1'b1; 
      rst = 1'b0;
      D = -32'd1000000;
      #50 rst = 1'b1;
      #800 rst = 1'b0;
      
      D = 32'd75366;
      #50 rst = 1'b1;
      #800 rst = 1'b0;
      
      D = 32'd1730482;
      #50 rst = 1'b1;
      #800 rst = 1'b0;
      
      D = -32'd27000000;
      #50 rst = 1'b1;
      #800 rst = 1'b0;

      D = 32'd421;
      #50 rst = 1'b1;
      #800 rst = 1'b0;

      D = -32'd1;
      #50 rst = 1'b1;
      #800 rst = 1'b0;

      D = -32'd12345678;
      #50 rst = 1'b1;
      #800 $finish;
end 

initial begin
  forever
      #25 clk = ~clk;
end

endmodule