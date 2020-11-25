<div id="cpen211_error_highlight"><pre><code>`define MREAD 2'b01
`define MWRITE 2'b10
`define MNOT 2'b00



module lab7_top(KEY,SW,LEDR,HEX0,HEX1,HEX2,HEX3,HEX4,HEX5);
  input [3:0] KEY;
  input [9:0] SW;
  output [9:0] LEDR;
  output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;

  //comparators
  wire [8:0] mem_addr;
  reg rsel, wsel;
  wire msel;
  wire [1:0] mem_cmd;

  wire write, N, V, Z;

  //LED and Switch control
  reg LEDON, SWON;
  

  //cpu feedback
  wire [15:0] read_data, write_data, dout;
  
	//cpu(clk,  reset,  in,          mdata,     out,     N, V,  Z,mem_addr,   mem_cmd);
  cpu CPU(~KEY[0], ~KEY[1], read_data, read_data, write_data, N, V, Z, mem_addr, mem_cmd);

  //sseg displays for easy debugging
  assign HEX5[6] = ~N;
  assign HEX5[3] = ~V;
  assign HEX5[0] = ~Z;
  assign {HEX5[5:4],HEX5[2:1]} = 4'b1;

  sseg H0(write_data[3:0],   HEX0);
  sseg H1(write_data[7:4],   HEX1);
  sseg H2(write_data[11:8],  HEX2);
  sseg H3(write_data[15:12], HEX3);
  //assign HEX4 = 7'b1111111;
  assign {HEX5[2:1],HEX5[5:4]} = 4'b1111; // disabled
  assign LEDR[8] = 1'b0;

			//clk  read_address, write_address,write,din,     dout
  RAM #(16,8, "test_tb.txt") MEM(KEY[0], mem_addr[7:0],mem_addr[7:0],write,write_data,dout);


  //RAM tri-state driver
  assign read_data = (msel & rsel) ? dout : 16'bz;
  //msel comparator
  assign msel = mem_addr[8] ? 1'b0 : 1'b1;
  //write AND
  assign write = wsel & msel;
  //read/write comparator
  always @(*) begin
    case (mem_cmd)
	`MREAD: {rsel, wsel} = 2'b10;
	`MWRITE: {rsel, wsel} = 2'b01;
	`MNOT: {rsel, wsel} = 2'b00;
	default: {rsel, wsel} = {2{1'bx}};
    endcase
  end


  //switch tri-state and circuit
  assign read_data = SWON ? {8'b0,SW[7:0]} : 16'bz;
  always @(*) begin
    case ({mem_cmd, mem_addr})
	11'b01_101000000: SWON = 1'b1;
	default: SWON = 1'b0;
    endcase
  end
	
  //LED VDFF and circuit

  vDFFE #(8) LEDcntrl(write_data[7:0], LEDON, ~KEY[0], LEDR[7:0]);
    always @(*) begin
    case ({mem_cmd, mem_addr})
	11'b10_100000000: LEDON = 1'b1;
	default: LEDON = 1'b0;
    endcase
  end
endmodule



module RAM(clk,read_address,write_address,write,din,dout);
  parameter data_width = 32; 
  parameter addr_width = 4;
  parameter filename = "data.txt";

  input clk;
  input [addr_width-1:0] read_address, write_address;
  input write;
  input [data_width-1:0] din;
  output [data_width-1:0] dout;
  reg [data_width-1:0] dout;

  reg [data_width-1:0] mem [2**addr_width-1:0];

  initial $readmemb(filename, mem);

  always @ (posedge clk) begin
    if (write)
      mem[write_address] <= din;
    dout <= mem[read_address]; // dout doesn't get din in this clock cycle 
                               // (this is due to Verilog non-blocking assignment "<=")
  end 
endmodule

module sseg(in,segs);
  input [3:0] in;
  output [6:0] segs;
  reg [6:0] segs;
   always @(*) begin
    //for each value, display it
      case (in)
	4'b0000: segs = 7'b1000000;//0
	4'b0001: segs = 7'b1111001;//1
	4'b0010: segs = 7'b0100100;//2
	4'b0011: segs = 7'b0110000;//3
	4'b0100: segs = 7'b0011001;//4
	4'b0101: segs = 7'b0010010;//5
	4'b0110: segs = 7'b0000010;//6
	4'b0111: segs = 7'b1111000;//7
	4'b1000: segs = 7'b0000000;//8
	4'b1001: segs = 7'b0011000;//9
	4'b1010: segs = 7'b0001000;//A
	4'b1011: segs = 7'b0000011;//b
	4'b1100: segs = 7'b1000110;//C
	4'b1101: segs = 7'b0100001;//d
	4'b1110: segs = 7'b0000110;//E
	4'b1111: segs = 7'b0001110;//F
      endcase
  end //always block


endmodule


module Dec(a, b);
  parameter n = 2;
  parameter m = 4;

  input [n-1:0] a;
  output [m-1:0] b;

  wire [m-1:0] b = 1 << a;  
endmodule

module Mux8(a0,a1,a2,a3,a4,a5,a6,a7, s, b);
  parameter k = 1;
  input [7:0] s;
  input [k-1:0] a7,a6,a5,a4,a3,a2,a1,a0;
  output [k-1:0] b;
  wire  [k-1:0] b = 	({k{s[0]}} & a0)|({k{s[1]}} & a1)|({k{s[2]}} & a2)|
			({k{s[3]}} & a3)|({k{s[4]}} & a4)|({k{s[4]}} & a4)|
			({k{s[5]}} & a5)|({k{s[6]}} & a6)|({k{s[7]}} & a7);

endmodule

module Mux4(a0,a1,a2,a3, s, b);
  parameter k = 1;
  input [1:0] s;
  input [k-1:0] a3,a2,a1,a0;
  output [k-1:0] b;
  reg [k-1:0] b;

  always @(*) begin
    case (s)
	2'b00: b = a0;
	2'b01: b = a1;
	2'b10: b = a2;
	2'b11: b = a3;
    endcase

  end

endmodule

module Mux3(a0,a1,a2, s, b);
  parameter k = 1;
  input [2:0] s;
  input [k-1:0] a2,a1,a0;
  output [k-1:0] b;
  reg [k-1:0] b;

  always @(*) begin
    case (s)
	3'b100: b = a0;
	3'b010: b = a1;
	3'b001: b = a2;
	default: b = {k{1'bx}};
    endcase

  end

endmodule


module vDFFE(in, load, clk, out);
  parameter n =1;
  input load, clk;
  input [n-1:0] in;
  output [n-1:0] out;
  wire [n-1:0] nextout;
  reg [n-1:0] out;

  assign nextout = (load ? in : out);

  always @(posedge clk)
	out = nextout;
  
endmodule



module checkovf(a, b, op, ovf);
  parameter n = 8;
  input [n-1:0] a, b;
  input[1:0] op;
  output ovf;

  
  assign ovf = (a[n-1] ^ b[n-1]) & ~op[1];

endmodule





