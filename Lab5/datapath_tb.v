
module datapath_tb;
  reg [15:0] datapath_in;
  reg [2:0] writenum, readnum;
  reg write, clk, loada, loadb, loadc, loads,  asel, bsel, vsel, err;
  reg [1:0] shift, ALUop;
  wire [15:0] datapath_out;
  wire Z_out;

  datapath DUT(datapath_in, writenum, write, readnum, clk, loada, loadb, shift, asel, bsel, ALUop, loadc, loads, vsel, datapath_out, Z_out);

  initial begin
    //clock
  clk = 0; #5;
  forever begin
	clk = 1; #5;
	clk = 0; #5;
    end
  end

  task check;
  input [15:0] exp_datapath_out;
  input exp_Zout; 
    begin
        if(datapath_out!=exp_datapath_out) begin
		$display("**ERROR** data: %b expected: %b", datapath_out, exp_datapath_out);
		err = 1;
          end

	if(Z_out!=exp_Zout) begin
		$display("**ERROR** z: %b expected: %b", Z_out, exp_Zout);
		err = 1;
          end
    end
  endtask

//stores a value in locations register
  task store;
  input [15:0] value;
  input [2:0] location;
  input new;

  begin
    datapath_in = value;
    vsel = new;
    writenum = location;
    write = 1'b1;
    #10; //clock
    write = 1'b0;
  end
  endtask

//performs an operation with values stored in location 1 and 2
  task do;
  input [1:0] op;
  input [2:0] loc1, loc2;
  
  begin
	//prep A
	readnum = loc1;
	loada = 1'b1;
	#10;//clock
	loada = 1'b0;
	//prep B
	readnum = loc2;
	loadb = 1'b1;
	#10;//clock
	loadb = 1'b0;


	//perform operation
	ALUop = op;
	#10;
	loadc = 1'b1;
	loads = 1'b1;
	#10;//clock
	loadc = 1'b0;
	loads = 1'b0;
  end
  endtask

  initial begin
  err = 0;
  
  //datapath_in = ; writenum, write, readnum, clk, loada, loadb, shift, asel, bsel, ALUop, loadc, loads, vsel;
  //general intro declarations
  write = 1'b0; loada = 1'b0; loadb = 1'b0; asel = 1'b0; bsel = 1'b0; loadc = 1'b0; loads = 1'b0; vsel = 1'b1; shift = 2'b0; #5;


//initial test

  //assign R0
  store(16'd5, 3'b000, 1'b1);
  //assign R1
  store(16'd7, 3'b001, 1'b1);
  //assign R2
  store(16'd3, 3'b010, 1'b1);
  //assign R3
  store(16'd2, 3'b011, 1'b1);

  //adding R0 and R1
  do(2'b00, 3'b000, 3'b001);
//check
  #10;
  check(16'd12, 1'b0);
  //store sum
  store(16'b0, 3'b100, 1'b0);

  //adding R2 and R3
  do(2'b00, 3'b010, 3'b011);
//check
  #10;
  check(16'd5, 1'b0);
  //store sum
  store(16'b0, 3'b101, 1'b0);

  //subtracting R5 from R4
  do(2'b01, 3'b100, 3'b101);
  //store difference in R0
  store(16'b0, 3'b000, 1'b0);
//check
  #10;
  check(16'd7, 1'b0);

  #50;


//z_out equals 1
  //assign R0
  store(16'd4, 3'b000, 1'b1);
  //assign R1
  store(16'd3, 3'b001, 1'b1);
  //assign R2
  store(16'd1, 3'b010, 1'b1);
  //assign R3
  store(16'd6, 3'b011, 1'b1);

  //adding R0 and R1
  do(2'b00, 3'b000, 3'b001);
//check
  #10;
  check(16'd7, 1'b0);
  //store sum
  store(16'b0, 3'b100, 1'b0);

  //adding R2 and R3
  do(2'b00, 3'b010, 3'b011);
//check
  #10;
  check(16'd7, 1'b0);
  //store sum
  store(16'b0, 3'b101, 1'b0);

  //subtracting R5 from R4
  do(2'b01, 3'b100, 3'b101);
  //store difference in R0
  store(16'b0, 3'b000, 1'b0);
//check
  #10;
  check(16'd0, 1'b1);

  #50;

//Test 3
  //assign R0
  store(16'd3, 3'b000, 1'b1);
  //assign R1
  store(16'd11, 3'b001, 1'b1);
  //assign R6
  store(16'd16, 3'b110, 1'b1);

  //adding R0 and R1
  do(2'b00, 3'b000, 3'b001);
//check
  #10;
  check(16'd14, 1'b0);
  //store sum
  store(16'b0, 3'b111, 1'b0);

  //subtracting R7 from R6
  do(2'b01, 3'b110, 3'b111);
//check
  #10;
  check(16'd2, 1'b0);
  //store difference in R5
  store(16'b0, 3'b101, 1'b0);

  //AND R5 and R0
  do(2'b10, 3'b101, 3'b000);
//check
  #10;
  check(16'd2, 1'b0);

  //~R7
  do(2'b11, 3'b101, 3'b111);
//check
  #10;
  check(16'b1111111111110001, 1'b0);

  #20;
  
  
  
  $stop; //forever clock
end
endmodule
