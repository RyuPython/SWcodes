`timescale 1ns/1ns
module adder16_tb();
reg[15:0] ina, inb;
wire[15:0] out;
wire over;
integer i;

adder16 a16 (ina, inb, out, over);

initial begin
ina = 0;
inb = 0;
end

always @(*)
for(i=0; i<33; i = i+1)
#1 ina = ina+1;

always @(*)
for(i=0; i<33; i = i+1)
#1 inb = inb+1;

endmodule
