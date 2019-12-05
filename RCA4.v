module adder4(
input [3:0] ina, inb,
input cin,
output [3:0] sum,
output cout);

wire c1, c2, c3;

adder1 a1 (ina[0], inb[0], cin, sum[0], c1);
adder1 a2 (ina[1], inb[1], c1, sum[1], c2);
adder1 a3 (ina[2], inb[2], c2, sum[2], c3);
adder1 a4 (ina[3], inb[3], c3, sum[3], cout);

endmodule
