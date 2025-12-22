module tristate(
  x,
  y,
  en
wen )
    begin
      
      if(en == 0)
        y = 1'bz;
      
      else
        y = x;
      
    end
  
endmodule