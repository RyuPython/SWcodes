module mux41(a,b,c,d, sel1,sel2, y);
  input [3:0]a,b,c,d;
  input sel1, sel2;
  output reg [3:0]y;
    
  always @(*) begin
    if(~sel1&~sel2)
      y=a;
    else if(~sel1&sel2)
      y=b;
    else if(sel1&~sel2)
      y=c;
    else
      y=d;
  end
endmodule
