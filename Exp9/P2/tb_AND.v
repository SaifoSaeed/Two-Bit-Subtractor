module tb_AND;

reg x, y;
wire z;

AND_G and_gate(x,y,z);

initial begin
    $dumpfile("tb_AND.vcd");
    $dumpvars(0, tb_AND);
end

initial begin
    $monitor("Time: %0t | x: %h | y: %h | z: %h",
                 $time, x, y, z);

    x = 0;
    y = 0;

    #5

    x = 1;
    y = 0;

    #5

    x = 0;
    y = 1;

    #5

    x = 1;
    y = 1;

    #10

    $finish(2);
end

endmodule