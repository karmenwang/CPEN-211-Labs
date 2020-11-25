
module shifter(in,shift,sout);

  input [15:0] in;
  input [1:0] shift;
  output [15:0] sout;
  reg [15:0] sout;

  always @(*) begin
  //shift in direction, and assign new bit
  case (shift)
    2'b00: sout = in;
    2'b01: {sout,sout[0]} = {in<<1,1'b0};
    2'b10: {sout,sout[15]} = {in>>1,1'b0};
    2'b11: {sout} = {in[15],in[15:1]};
    
  endcase
  end
  
endmodule
