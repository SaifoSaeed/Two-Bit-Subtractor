`include "../one-bit-sub/onebit.v"
module twobit(
    a,
    b,
    bin,
    d,
    bout
);

input wire [1:0] a, b;
input wire bin;

output wire [1:0] d;
output wire bout;

wire w1;
onebit SUB1(.a(a[0]), .b(b[0]), .bin(bin), .d(d[0]), .bout(w1));
onebit SUB2(.a(a[1]), .b(b[1]), .bin(w1), .d(d[1]), .bout(bout));

endmodule