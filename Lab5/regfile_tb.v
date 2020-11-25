module regfile_tb;
  reg err, write, clk;
  reg [15:0] in;
  reg [2:0] location;
  wire [15:0] out;

  regfile dut(in, location, write, location, clk, out);


  initial begin
    //clock
  clk = 0; #5;
  forever begin
	clk = 1; #5;
	clk = 0; #5;
    end
  end

  task checkread;
  input [15:0] datain;
    begin
	if(regfile_tb.dut.data_out!=datain) begin
	  $display("***ERROR***");
	  err = 1;
	end
    end
  endtask

  initial begin
  err = 0;
	#20;
//check pos 1
	in = 16'd9;
	write = 1;
	location = 3'b000;
	#10;
	checkread(in);

//check pos 2
	in = 16'd9;
	write = 1;
	location = 3'b001;
	#10;
	checkread(in);

//check pos 3
	in = 16'd9;
	write = 1;
	location = 3'b010;
	#10;
	checkread(in);

//check pos 4
	in = 16'd9;
	write = 1;
	location = 3'b011;
	#10;
	checkread(in);

//check pos 5
	in = 16'd9;
	write = 1;
	location = 3'b100;
	#10;
	checkread(in);

//check pos 6
	in = 16'd9;
	write = 1;
	location = 3'b101;
	#10;
	checkread(in);

//check pos 7
	in = 16'd9;
	write = 1;
	location = 3'b110;
	#10;
	checkread(in);

//check pos 8
	in = 16'd9;
	write = 1;
	location = 3'b111;
	#10;
	checkread(in);



	#500;
	

  

  $stop; // stop the clock
  end
endmodule


