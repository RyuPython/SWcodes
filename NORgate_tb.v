`timescale 1ns/1ns
module NORgate_tb();

wire z_4311;
reg clk1,clk2;

NORgate j1(clk1,clk2,z_4311);

initial begin
clk1 = 0;
clk2 = 0;
end

always
#1 clk1=~clk1;
always
#2 clk2=~clk2;

endmodule