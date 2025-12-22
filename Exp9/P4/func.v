module func(
    f,
    x,
    y,
    z
);
  
  input wire x,y,z;
  output wire f;
  
  assign f = (x & y) | (~z);
  
endmodule


