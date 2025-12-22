module tb_mux;

reg in1, in2, in3, in4, cntrl1, cntrl2;
wire out;

mux_g MUX(out, in1, in2, in3, in4, cntrl1, cntrl2);

initial begin
  $dumpfile("tb_mux.vcd");
  $dumpvars(0,tb_mux);
end

initial begin
  $monitor("Time: %0t | in1: %h | in2: %h | in3: %h | in4: %h | cntrl1: %h | cntrl2: %h | out: %h",
                 $time, in1, in2, in3, in4, cntrl1, cntrl2, out);

  in1     = 0;
  in2     = 0;
  in3     = 0;
  in4     = 0;
  cntrl1  = 0;
  cntrl2  = 0;

  #1

  in1    = 0;
  in2    = 1;
  in3    = 1;
  in4    = 1;
  cntrl1 = 0;
  cntrl2 = 0;

  #1

  in1    = 0;
  in2    = 1;
  in3    = 0;
  in4    = 0;
  cntrl1 = 0;
  cntrl2 = 1;

  #1

  in1    = 0;
  in2    = 1;
  in3    = 0;
  in4    = 1;
  cntrl1 = 1;
  cntrl2 = 1;
  
  #4

  $finish(2);

end

endmodule