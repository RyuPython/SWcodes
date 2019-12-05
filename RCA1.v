`timescale 1ns/1ns
module adder1(
input ina, inb, c_in,
output sum, c_out);

wire s1, c1, c2;

xor #6 x1(s1, ina, inb);
and #7 a1(c1, ina, inb);

xor #6 x2(sum, s1, c_in);
and #7 a2(c2, s1, c_in);

xor #6 x3(c_out, c2, c1);

endmodule
