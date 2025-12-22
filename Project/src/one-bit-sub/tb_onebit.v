`include "onebit.v"
module tb_onebit;

reg a, b, bin;
wire d, bout;

onebit uut(.a(a), .b(b), .bin(bin), .d(d), .bout(bout));

initial begin
  $dumpfile("tb_onebit.vcd");
  $dumpvars(0,tb_onebit);
end

initial begin
    $monitor("Time: %0t | a: %b | b: %h | bin: %h | d: %h | bout: %b",
            $time, a, b, bin, d, bout);

    a    = 0;
    b    = 0;
    bin  = 0;

    #1

    a    = 0;
    b    = 0;
    bin  = 1;

    #1

    a    = 0;
    b    = 1;
    bin  = 0;

    #1

    a    = 0;
    b    = 1;
    bin  = 1;

    #1

    a    = 1;
    b    = 0;
    bin  = 0;

    #1

    a    = 1;
    b    = 0;
    bin  = 1;

    #1

    a    = 1;
    b    = 1;
    bin  = 0;

    #1
    
    a    = 1;
    b    = 1;
    bin  = 1;

    #6

    $finish(2);
end

endmodule