module multi4(
input[15:0] ina,
input[3:0] inb,
output[31:0] mul,
output overflow);

reg[18:0] m1, m2, m3, m4, m_total1, m_total2;
reg over1, over2, over3;

always @(*) begin
m1 = inb[0]? ina : 0;
m2 = inb[1]? ina << 1 : 0;
m3 = inb[2]? ina << 2 : 0;
m4 = inb[3]? ina << 3 : 0;
end

adder16 a1 (m1, m2, m_total1, over1);
adder16 a2 (m3, m4, m_total2, over2);
adder16 a3 (m_total1, m_total2, mul, over3);

or o1 (overflow, over1, over2, over3);

endmodule
