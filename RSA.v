module RSA(
input reg [1022:0] stream,
output [1022:0] out_4311);

reg [6:0] arry[146:0];
reg [5:0] tgBASE[146:0];
integer fr, r, i, j;

fr = $fopen("sample.txt", "r");

r = $fscanf(file, "%b", stream);

always @(*) begin
for(i=0; i<146; i = i+1)begin
j = i * 6;
arry[i] <= stream[j+6:j];
