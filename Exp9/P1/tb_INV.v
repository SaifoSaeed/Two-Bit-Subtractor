module tb_INV;

reg x;
wire y;

INV inverter(x,y);

initial begin
    $dumpfile("tb_INV.vcd");
    $dumpvars(0, tb_INV);
end

initial begin
    $monitor("Time: %0t | x: %h | y: %h",
                 $time, x, y);

    x = 0;

    #5

    x = 1;

    #10

    $finish(2);
end

endmodule