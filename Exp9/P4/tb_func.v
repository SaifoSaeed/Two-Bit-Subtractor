module tb_func;
  
  reg x,y,z;
  wire f;
  
  func functionf(f,x,y,z);
  
  initial begin 
      $dumpfile("tb_func.vcd");
      $dumpvars(0,tb_func);
  end

  initial begin
    $monitor("Time: %0t | x: %h | y: %h | z: %h | f: %h",
                 $time, x, y, z, f);
    
    x = 0;
    y = 0;
    z = 0;

    #2

    x = 0;
    y = 0;
    z = 1;

    #2

    x = 0;
    y = 1;
    z = 0;

    #2

    x = 0;
    y = 1;
    z = 1;

    #2

    x = 1;
    y = 0;
    z = 0;

    #2

    x = 1;
    y = 0;
    z = 1;

    #2

    x = 1;
    y = 1;
    z = 0;

    #2

    x = 1;
    y = 1;
    z = 1;

    #2

    $finish(2);
  
  end

endmodule