module multi16(
input[15:0] ina, inb,
output[15:0] out4311,
output overflow);

reg[31:0] mul1, mul2, mul3, mul4, m_total1, m_total2;
reg[6:0] over;

multi4 m1 (ina, inb[3:0], mul1, over[0]);
multi4 m2 (ina, inb[7:4], mul2, over[1]);
multi4 m3 (ina, inb[11:8], mul3, over[2]);
multi4 m4 (ina, inb[15:12], mul4, over[3]);

adder16 a1 (mul1, mul2, m_total1, over[4]);
adder16 a2 (mul3, mul4, m_total2, over[5]);
adder16 a3 (m_total1, m_total2, out4311, over[6]);

or o1 (overflow, over[0], over[1], over[2], over[3], over[4], over[5], over[6], over[7]);

endmodule
