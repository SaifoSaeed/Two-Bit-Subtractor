module and_g(
    a,
    b,
    c
);

input wire a, b;
output wire c;

assign c = a & b;
    
endmodule

module or_g(
    a,
    b,
    c
);

input wire a, b;
output wire c;

assign c = a | b;
    
endmodule

module xor_g(
    a,
    b,
    c
);

input wire a, b;
output wire c;

assign c = a ^ b;
    
endmodule

