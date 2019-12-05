module sub1(
input ina, inb, c_in,
output sub, c_out);

wire c1, s1;

adder1 a1 (ina, inb, c_in, sub, c1);
adder1 a2 (~ina, inb, c_in, s1, c_out);

endmodule
