`include "basic.v"
module tb_basic;

reg a, b;
wire c_and, c_or, c_xor;

and_g AND_G (a, b, c_and);
or_g OR_G   (a, b, c_or);
xor_g XOR_G (a, b, c_xor);
    
initial begin
    $dumpfile("tb_basic.vcd");
    $dumpvars(0,tb_basic);
end

initial begin
    $monitor("Time: %0t | a: %b | b: %h | c_and: %b | c_or: %b | c_xor: %b",
    $time, a, b, c_and, c_or, c_xor);

    a = 0;
    b = 0;

    #1

    a = 0;
    b = 1;

    #1

    a = 1;
    b = 0;

    #1

    a = 1;
    b = 1;

    #1

    $finish(2);

end

endmodule