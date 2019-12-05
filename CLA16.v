module cla16b(
input [15:0] a1, b1,
input cin,
output [15:0] sum,
output cout);

wire c3, c7, c11;

CLA4 cla1 (a1[3:0], b1[3:0], cin, sum[3:0], c3);
CLA4 cla2 (a1[7:4], b1[7:4], c3, sum[7:4], c7);
CLA4 cla3 (a1[11:8], b1[11:8], c7, sum[11:8], c11);
CLA4 cla4 (a1[15:12], b1[15:12], c11, sum[15:12], cout);

endmodule
