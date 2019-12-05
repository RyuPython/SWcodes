`timescale 1ns/1ns
module mux41_tb();
  wire [3:0] y;
  reg [3:0] a,b,c,d;
  reg sel1,sel2;
  integer i;
  
  mux41 u1(a,b,c,d, sel1,sel2, y);
  
  initial begin
    a = $random;
    b = $random;
    c = $random;
    d = $random;
    sel1 = 0;
    sel2 = 0;
  end

  always
    for(i=0; i<32; i=i+1)
     #2 sel1 = sel1 + 1;
  always
    for(i=0; i<32; i=i+1)
     #1 sel2 = sel2 + 1;

endmodule
