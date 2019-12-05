module ALU(
input[15:0] ina, inb,
input[1:0] sel,
output[15:0] out4311,
output overflow);

reg[15:0] add, sub, mul, div, out;
reg over_a, over_s, over_m, over_d, over;

adder16 a1 (ina, inb, add, over_a);
sub16 s1 (ina, inb, sub, over_s);
multi16 m1 (ina, inb, mul, over_m);
div16 d1 (ina, inb, mul, over_d);

always @(*) begin
case(sel)
2'b00: out = add;
2'b01: out = sub;
2'b10: out = mul;
2'b11: out = div;
default: out = 0;
endcase
case(sel)
2'b00: over = over_a;
2'b01: over = over_s;
2'b10: over = over_m;
2'b11: over = over_d;
default: over = 0;
endcase
end

assign out4311 = out, overflow = over;

endmodule
