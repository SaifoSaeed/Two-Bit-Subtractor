`include "../basic/basic.v"

module onebit(
    a,
    b,
    bin,
    d,
    bout
);

input wire a, b, bin;
output d, bout;
wire xor_1_out, and_1_out, and_2_out;

xor_g XOR1(.a(a), .b(b), .c(xor_1_out));
xor_g XOR2(.a(bin), .b(xor_1_out), .c(d));

and_g AND1(.a(~a), .b(b), .c(and_1_out));
and_g AND2(.a(~xor_1_out), .b(bin), .c(and_2_out));

or_g OR1(.a(and_2_out), .b(and_1_out), .c(bout));

endmodule