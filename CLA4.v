`timescale 1ns/1ns
module CLA4(
input[3:0] a, b,
input c_in,
output[3:0] s,
output c_out
);
wire [3:0] p, g, c;
wire m1, m2, m3, m4, m5, m6, m7, m8, m9, m10;

xor #6 x0(p[0], a[0], b[0]),
x1(p[1], a[1], b[1]),
x2(p[2], a[2], b[2]),
x3(p[3], a[3], b[3]);

and #7 a0(g[0], a[0], b[0]),
a1(g[1], a[1], b[1]),
a2(g[2], a[2], b[2]),
a3(g[3], a[3], b[3]);

and #7 ad1(m1, p[0], c_in),
ad2(m2, p[1], g[0]),
ad3(m3, p[1], p[0], c_in),
ad4(m4, p[2], g[1]),
ad5(m5, p[2], p[1], g[0]),
ad6(m6, p[2], p[1], p[0], c_in),
ad7(m7, p[3], g[2]),
ad8(m8, p[3], p[2], g[1]),
ad9(m9, p[3], p[2], p[1], g[0]),
ad10(m10, p[3], p[2], p[1], p[0], c_in);

or #7 o0(c[0], g[0], m1),
o1(c[1], g[1], m2, m3),
o2(c[2], g[2], m4, m5, m6),
o3(c[3], g[3], m7, m8, m9, m10);

assign c_out = c[3];

xor #6 xo0(s[0], p[0], c_in),
xo1(s[1], p[1], c[0]),
xo2(s[2], p[2], c[1]),
xo3(s[3], p[3], c[2]);

endmodule
