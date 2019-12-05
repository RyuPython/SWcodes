`timescale 1ns/1ns
module mux21_16b(
input[15:0] ina, inb,
input sel,
output reg[15:0] out);

always @(*) begin
#3 case(sel)
1'b0: out = ina;
1'b1: out = inb;
endcase
end

endmodule
