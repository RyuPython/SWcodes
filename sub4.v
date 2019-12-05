module sub4(
input[3:0] ina, inb,
input c_in,
output[3:0] out,
output over);

wire c1, c2, c3;

sub1 s1(ina[0], inb[0], c_in, out[0], c1);
sub1 s2(ina[1], inb[1], c1, out[1], c2);
sub1 s3(ina[2], inb[2], c2, out[2], c3);
sub1 s4(ina[3], inb[3], c3, out[3], over);

endmodule
