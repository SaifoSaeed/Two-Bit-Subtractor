`include "twobit.v"
module tb_twobit;

reg [1:0] a, b;
reg bin;
wire [1:0] d;
wire bout;

integer i;

twobit uut(.a(a), .b(b), .bin(bin), .d(d), .bout(bout));

initial begin
  $dumpfile("tb_twobit.vcd");
  $dumpvars(0,tb_twobit);
end

initial begin
    $monitor("Time: %0t | a: %h | b: %h | bin: %h | d: %h | bout: %h",
            $time, a, b, bin, d, bout);

    for (i = 0; i < 32; i = i + 1) begin
        {a, b, bin} = i[4:0]; 
        
        #2;
    end

    $finish(2);
end

endmodule