module sub16(
input[15:0] ina, inb,
output[15:0] out4311,
output overflow);

wire c1, c2, c3;

sub4 s41(ina[3:0], inb[3:0], 1'b0, out4311[3:0], c1);
sub4 s42(ina[7:4], inb[7:4], c1, out4311[7:4], c2);
sub4 s43(ina[11:8], inb[11:8], c2, out4311[11:8], c3);
sub4 s44(ina[15:12], inb[15:12], c3, out4311[15:12], overflow);

endmodule
