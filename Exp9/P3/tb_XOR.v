module tb_XOR;

reg x, y;
wire z;

XOR_G XOR_gate(x,y,z);

initial begin
    $dumpfile("tb_XOR.vcd");
    $dumpvars(0, tb_XOR);
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