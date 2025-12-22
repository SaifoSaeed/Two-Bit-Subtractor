module mux_g(
  out, 
  in1, in2, in3, in4, 
  cntrl1, cntrl2
);
  input in1, in2, in3, in4, cntrl1, cntrl2;
  output reg out;

  always @(in1 or in2 or in3 or in4 or cntrl1 or cntrl2) begin
    case ({cntrl1, cntrl2})
      2'b00 : out <= in1;
      2'b01 : out <= in2;
      2'b10 : out <= in3;
      2'b11 : out <= in4;
    endcase
    end
endmodule