`timescale 1ns/1ns
module mux_21(
input ina, inb,
input sel,
output reg out);

always @(*) begin
#3 case(sel)
1'b0: out = ina;
1'b1: out = inb;
endcase
end

endmodule
