module tb_tristate;
  
  reg x,en;
  wire y;
  
  tristate tri_g(x,y,en);
  
  initial begin 
      $dumpfile("tb_tristate.vcd");
      $dumpvars(0,tb_tristate);
  end

  initial begin
    $monitor("Time: %0t | x: %h | y: %h | en: %h",
                 $time, x, y, en);
    
    x = 0;
    en = 0;

    #2

    x = 0;
    en = 1;

    #2

    x = 1;
    en = 0;

    #2

    x = 1;
    en = 1;

    #10

    $finish(2);
  
  end

endmodule