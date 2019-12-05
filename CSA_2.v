module csa16b2(
input [15:0] a1, b1,
input cin,
output[15:0] sum,
output cout);

wire[15:0] sum0, sum1;
wire Cout_0, Cout_1;

rca16b rca0 (a1, b1, 1'b0, sum0, Cout_0);
rca16b rca1 (a1, b1, 1'b1, sum1, Cout_1);

mux21_16b m1 (sum0, sum1, cin, sum);
mux_21 m2 (Cout_0, Cout_1, cin, cout);

endmodule
