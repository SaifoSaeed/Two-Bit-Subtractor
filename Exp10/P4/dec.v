module dec(in, en, out);
  
  input [1:0] in;
  input en;

  output reg [3:0] out;
  
  always @(*)
    begin
      
      if(en == 1'b0)
        out <= 'b0;
      else
        out <= 2**in;
      
    end

endmodule