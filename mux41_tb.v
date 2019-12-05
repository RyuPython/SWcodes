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

for(i=0; i<1; i=i+1)
      sel1 = sel1 + 1;
  end
    
endmodule
