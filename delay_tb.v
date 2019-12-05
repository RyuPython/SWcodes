`timescale 10ns/10ns
module delay_tb();

reg in, ctrl;
wire out_4311;
integer i, j;

initial begin
in = 0;
ctrl = 0;
end

notif0 #(4, 6, 8) n1(out_4311, in, ctrl);

always @(*) begin
for(i=0; i<33; i= i+1)
#10 case(in)
0: in=1;
1: in=1'hx;
1'hx: in=1'hz;
1'hz: in=0;
endcase
end

always @(*) begin
for(j=0; j<33; j = j+1)
#20 case(ctrl)
0: ctrl=1;
1: ctrl=1'hx;
1'hx: ctrl=1'hz;
1'hz: ctrl=0;
endcase
end

endmodule
