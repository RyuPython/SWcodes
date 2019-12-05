module rca16b(
input [15:0] a1, b1,
input cin,
output [15:0] sum,
output cout);

wire c1, c2, c3;

adder4 a41 (a1[3:0], b1[3:0], cin, sum[3:0], c1);
adder4 a42 (a1[7:4], b1[7:4], c1, sum[7:4], c2);
adder4 a43 (a1[11:8], b1[11:8], c2, sum[11:8], c3);
adder4 a44 (a1[15:12], b1[15:12], c3, sum[15:12], cout);

endmodule
