module tb_dec;

reg [1:0] in;
reg en;
wire [3:0] out;

dec decoder(in, en, out);

initial begin
  $dumpfile("tb_dec.vcd");
  $dumpvars(0,tb_dec);
end

initial begin
  $monitor("Time: %0t | in: %b | en: %h | out: %b",
                 $time, in, en, out);

  in = 2'b00;
  en = 0;

  #2

  in = 2'b01;
  en = 0;

  #2  

  in = 2'b01;
  en = 1;

  #2  

  in = 2'b11;
  en = 1;

  #8

  $finish(2);

end

endmodule