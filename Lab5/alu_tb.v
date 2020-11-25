
module ALU_tb;
  reg [15:0] data, data1;
  reg [1:0] control;
  wire [15:0] out;
  wire Z;
  reg err;

  ALU DUT(data, data1, control, out, Z);

  task check;
  input [15:0] expected;
  input expz;
    begin
	if(out!=expected) begin
		$display("**ERROR** output: %b expected: %b", out,expected);
		err = 1;
	end
	if (Z != expz) begin
		$display("**ERROR** Z: %b expected: %b", Z,expz);
		err = 1;
	end
    end
  endtask

  initial begin 
  err =0;
  //add
  data = 16'd1; data1 = 16'd1; control = 2'b00; #5;
  check(16'd2,1'b0);

  data = 16'b00100; data1 = 16'b101; control = 2'b00; #5;
  check(16'd9,1'b0);


  //subtract
  data = 16'd5; data1 = 16'd2; control = 2'b01; #5;
  check(16'd3,1'b0);

  data = 16'd4; data1 = 16'd2; control = 2'b01; #5;
  check(16'd2,1'b0);

  data = 16'd27; data1 = 16'd10; control = 2'b01; #5;
  check(16'd17,1'b0);


  //and
  data = 16'b0000000000000111; data1 = 16'b0000000000000100; control = 2'b10; #5;
  check(16'b0000000000000100,1'b0);

  data = 16'b0000000001111111; data1 = 16'b0000000001100100; control = 2'b10; #5;
  check(16'b0000000001100100,1'b0);

  data = 16'b0000000000000000; data1 = 16'b0000011111111100; control = 2'b10; #5;
  check(16'b0000000000000000,1'b1);

  data = 16'b0000000000000101; data1 = 16'b0000000000000000; control = 2'b10; #5;
  check(16'b0000000000000000,1'b1);

  //not
  data = 16'b0000000000000101; data1 = 16'b0000000000000000; control = 2'b11; #5;
  check(16'b1111111111111111,1'b0);

  data = 16'b0000000000000101; data1 = 16'b1111111101111110; control = 2'b11; #5;
  check(16'b0000000010000001,1'b0);
 
  end
endmodule

