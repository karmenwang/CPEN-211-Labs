<div id="cpen211_error_highlight"><pre><code>
module datapath_tb;
  reg [15:0] mdata, sximm8, sximm5;
  reg [7:0] PC;
  reg [2:0] writenum, readnum;
  reg write, clk, loada, loadb, loadc, loads,  asel, bsel, err;
  reg [1:0] shift, ALUop, vsel;
  wire [15:0] datapath_out;
  wire [2:0] status_out;
  //PC [15:0] datapath_in;

// bigger vsel 1:0
//part of status Z_out;



  datapath DUT(writenum, write, readnum, PC, sximm5, clk, loada, mdata, sximm8, loadb, shift, asel, bsel, ALUop, loadc, loads, vsel, datapath_out, status_out);


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
  input [2:0] exp_Sout; 
    begin
        if(datapath_out!=exp_datapath_out) begin
		$display("**ERROR** data: %b expected: %b", datapath_out, exp_datapath_out);
		err = 1;
          end

	if(status_out!=exp_Sout) begin
		$display("**ERROR** status_out: %b expected: %b", status_out, exp_Sout);
		err = 1;
          end
    end
  endtask

//stores a value in locations register
  task store;
  input [7:0] value;
  input [2:0] location;
  input [1:0] from;

  begin
    sximm8 = {{8{value[7]}},value};
    vsel = from;
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
  write = 1'b0; loada = 1'b0; loadb = 1'b0; asel = 1'b0; bsel = 1'b0; loadc = 1'b0; loads = 1'b0; vsel = 2'b10; shift = 2'b0; 


  //set new wires
  mdata = 16'b0; sximm8 = 16'b0; sximm5 = 16'b0;
 

  //temporary assign until Lab7 and Lab8
  PC = 8'b0;
  mdata = 16'b0;
  #10;

//initial test

  //assign R0
  store(8'd5, 3'b000, 2'b01);
  //assign R1
  store(8'd7, 3'b001, 2'b01);
  //assign R2
  store(8'd3, 3'b010, 2'b01);
  //assign R3
  store(8'd2, 3'b011, 2'b01);

  //adding R0 and R1
  do(2'b00, 3'b000, 3'b001);
//check
  #10;
  check(16'd12, 3'b000);
  //store sum
  store(8'b0, 3'b100, 2'b11);

  //adding R2 and R3
  do(2'b00, 3'b010, 3'b011);
//check
  #10;
  check(16'd5, 3'b000);				
  //store sum
  store(8'b0, 3'b101, 2'b11);

  //subtracting R5 from R4
  do(2'b01, 3'b100, 3'b101);
  //store difference in R0
  store(8'b0, 3'b000, 1'b11);
//check
  #10;
  check(16'd7, 3'b000);				

  #50;


//z_out equals 1
  //assign R0
  store(8'd4, 3'b000, 2'b01);
  //assign R1
  store(8'd3, 3'b001, 2'b01);
  //assign R2
  store(8'd1, 3'b010, 2'b01);
  //assign R3
  store(8'd6, 3'b011, 2'b01);

  //adding R0 and R1
  do(2'b00, 3'b000, 3'b001);
//check
  #10;
  check(16'd7, 3'b000);		
  //store sum in R4
  store(8'b0, 3'b100, 2'b11);

  //adding R2 and R3
  do(2'b00, 3'b010, 3'b011);
//check
  #10;
  check(16'd7, 3'b000);	
  //store sum in R5
  store(8'b0, 3'b101, 2'b11);

  //subtracting R5 from R4
  do(2'b01, 3'b100, 3'b101);
  //store difference in R0
  store(8'b0, 3'b000, 2'b11);
//check
  #10;
  check(16'd0, 3'b001);	

  #50;

//Test 3
  //assign R0
  store(8'd3, 3'b000, 2'b01);
  //assign R1
  store(8'd11, 3'b001, 2'b01);
  //assign R6
  store(8'd16, 3'b110, 2'b01);

  //adding R0 and R1
  do(2'b00, 3'b000, 3'b001);
//check
  #10;
  check(16'd14, 3'b000);
  //store sum
  store(8'b0, 3'b111, 2'b11);

  //subtracting R7 from R6
  do(2'b01, 3'b110, 3'b111);
//check
  #10;
  check(16'd2, 3'b000);
  //store difference in R5
  store(8'b0, 3'b101, 2'b11);

  //AND R5 and R0
  do(2'b10, 3'b101, 3'b000);
//check
  #10;
  check(16'd2, 3'b000);


  //~R7
  do(2'b11, 3'b101, 3'b111);
//check
  #10;
  check(16'b1111111111110001, 3'b010); 


  #50;


//lab test
  //assign R0
  store(8'd7, 3'b000, 2'b01);
  //assign R1
  store(8'd2, 3'b001, 2'b01);

  //adding R0 shifted left and R1
  shift = 2'b01;
  do(2'b00, 3'b001, 3'b000);
//check
  #10;
  check(16'd16, 3'b000);

  #20;
  
  
  
  $stop; //forever clock
end
endmodule
