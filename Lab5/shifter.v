
module shifter(in,shift,sout);

  input [15:0] in;
  input [1:0] shift;
  output [15:0] sout;
  reg [15:0] sout;

  always @(*) begin
  //shift in direction
  case (shift)
    2'b00: sout = in;
    2'b01: sout = in<<1;
    2'b10: sout = in>>1;
    2'b11: sout = in>>1;
    
  endcase
  //assign new bit
   case (shift)
    2'b00: sout = in;
    2'b01: sout[0] = 1'b0;
    2'b10: sout[15] = 1'b0;
    2'b11: sout[15] = in[14];
    
  endcase
  end
  
endmodule
