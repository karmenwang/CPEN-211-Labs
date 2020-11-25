
module shifter_tb;
  reg [15:0] data;
  reg [1:0] control;
  wire [15:0] out;
  reg err;

  shifter DUT(data, control, out);

  task check;
  input [15:0] expected;
    begin
	if(out!=expected) begin
		$display("**ERROR** output: %b expected: %b", out,expected);
		err = 1;
	end
$display("PASS output: %b expected: %b", out,expected);
    end
  endtask

  initial begin 
  err =0;
  //no shift
  data = 16'b0100011000100111; control = 2'b00; #5;
  check( 16'b0100011000100111);

  data = 16'b0101010110101001; control = 2'b00; #5;
  check( 16'b0101010110101001);

  //shift left by 1 bit, least significant bit is 0
  data = 16'b1111000011001111; control = 2'b01; #5;
  check( 16'b1110000110011110);

  data = 16'b1110000110011110; control = 2'b01; #5;
  check( 16'b1100001100111100);

  data = 16'b1100100111011010; control = 2'b01; #5;
  check( 16'b1001001110110100);


  //shift right by 1 bit MSB is 0
  data = 16'b1110000110011110; control = 2'b10; #5;
  check( 16'b0111000011001111);

  data = 16'b0100011000100111; control = 2'b10; #5;
  check( 16'b0010001100010011);

  data = 16'b0101010110101001; control = 2'b10; #5;
  check( 16'b0010101011010100);

  //shift right by 1 bit, MSB is copying B[15]
  data = 16'b1110000110011110; control = 2'b11; #5;
  check( 16'b1111000011001111);

  data = 16'b0100011000100111; control = 2'b11; #5;
  check( 16'b1010001100010011);

  data = 16'b0101010110101001; control = 2'b11; #5;
  check( 16'b1010101011010100);

end
endmodule
