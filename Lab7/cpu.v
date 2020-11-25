<div id="cpen211_error_highlight"><pre><code>// LAB6 cpu
// Robert Bradley and Karmen Wang
// 77543304 and 54144183
//  18/10/26
module cpu(clk,reset,in,mdata,out,N,V,Z,mem_addr,mem_cmd);
  input clk, reset;
  input [15:0] in, mdata;
  output [15:0] out;
  output N, V, Z;
  output [8:0] mem_addr;
  output [1:0] mem_cmd;

  wire [15:0] inloaded;
  wire [8:0] PC;

  //decoder outputs/ inputs to datapath
  wire [1:0] ALUop, shift, op;
  wire [15:0] sximm5, sximm8;
  wire [2:0] location, opcode;

  //state inputs/outputs
  wire write, loada, loadb, loadc, asel, bsel;
  wire [2:0] nsel;
  wire [1:0] vsel;

  //lab7 state outputs
  wire load_pc, load_ir, reset_pc, load_addr, addr_sel;
  wire [1:0] mem_cmd;

  //lab7 transtitions
  wire [8:0] next_pc, added_pc, data_addr;


  //state machine -- step through clock cycles
  state_cntrl statemachine(reset,clk,opcode,op,nsel,vsel,write,loada,loadb,loadc,asel,bsel,
                           load_pc, load_ir, reset_pc, load_addr, addr_sel, mem_cmd);
  //load the input 
  vDFFE #(16) instruct(mdata,load_ir,clk,inloaded);

  //send input to the decoder
  instruct_dec dec_i(inloaded, nsel, ALUop, sximm5, sximm8, shift, location, opcode, op);

  //send to datapath
		// 			 PC***			 mdata
  datapath DP(location, write, location, PC, sximm5, clk, loada, mdata, sximm8,       
		 loadb, shift, asel, bsel, ALUop, loadc, loadc, vsel, out, {V,N,Z});

  //functions for the program counter
  assign next_pc = reset_pc ? 9'b0 : added_pc;
  vDFFE #(9) ProgramCounter(next_pc,load_pc,clk,PC);
  assign added_pc = PC + 9'b1;

  //data address
  vDFFE #(9) DataAddress(out[8:0], load_addr, clk, data_addr);
  
  assign mem_addr = addr_sel? PC : data_addr;




endmodule



`define Reset 		5'b00000
`define GetA 		5'b00001
`define GetB 		5'b00010
`define FUNC 		5'b00011
`define WriteReg 	5'b00100
`define Writelmm 	5'b00101
`define DECODE 		5'b00111
`define RGETB 		5'b01000
`define READ 		5'b01001
`define PASS 		5'b01010
`define IF1 		5'b01011
`define IF2 		5'b01100
`define UpdatePC 	5'b01101
//lab7
`define LDRread 	5'b01110
`define LDRaddr 	5'b01111
`define LDRwr 		5'b10000
`define STRread 	5'b10001
`define STRaddr		5'b10010
`define STRval 		5'b10011
`define STRwr 		5'b10100
`define LDRfinal	5'b10101
`define STRfinal 	5'b10110

`define HALT 		5'b11111

//mem_cmd
`define MREAD 2'b01
`define MWRITE 2'b10
`define MNOT 2'b00


//load_pc load_ir reset_pc load_addr addr_sel mem_cmd
module state_cntrl(reset,clk,opcode,op,nsel,vsel,write,loada,loadb,loadc,asel,bsel, load_pc, load_ir, reset_pc, load_addr, addr_sel, mem_cmd);
  //start, reset and clk
  input reset, clk;
  input [2:0] opcode;
  input [1:0] op;


  //other outputs
  output [2:0] nsel;
  reg [2:0] nsel;
  output [1:0] vsel, mem_cmd;
  reg [1:0] vsel, mem_cmd;
  output loada, loadb, loadc, write, asel, bsel, load_pc, load_ir, reset_pc, load_addr, addr_sel;
  reg loada, loadb, loadc, write, asel, bsel, load_pc, load_ir, reset_pc, load_addr, addr_sel;


  //states
  wire [4:0] pr_st;  //present state
  reg [4:0] next_st; //next state

  always @(posedge clk) begin
    //MOV function loop (opcode == 110)
    //ALU functions loop (opcode == 101)
    casex ({reset,opcode,pr_st,op})
//reset
									             
	11'b1_xxx_xxxxx_xx: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next   rest  lpc l  ir   respc ld_ad  adsel mem
	{`Reset, 11'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, `MNOT};

//HALT
	11'b0_xxx_11111_xx: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next   rest  lpc l  ir   respc ld_ad  adsel mem
	{`HALT, 11'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, `MNOT};

//in pos reset -> IF1								    		      
	11'b0_xxx_00000_xx: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <=
	//next   rest ldpc  ldir  respc ld_ad adsel mem
	{`IF1, 11'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, `MNOT};

//pos IF1
	11'b0_xxx_01011_xx: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next   rest ldpc  ldir  respc ld_ad adsel  mem
	{`IF2, 11'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, `MREAD};
//pos IF2
	11'b0_xxx_01100_xx: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next      rest ldpc  ldir  respc ld_ad adsel   mem
	{`UpdatePC, 11'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, `MREAD};
//pos UpdatePC
	11'b0_xxx_01101_xx: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next     rest ldpc  ldir  respc ld_ad adsel   mem
	{`DECODE, 11'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, `MNOT};



//DECODE State
	//dec->MOV							    		 	
	11'b0_110_00111_10: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	{`Writelmm, 18'b0};

	//dec->MOV2	    		     							  
	11'b0_110_00111_00: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next  nsel   vsel   write loada loadb loadc asel bsel  rest
	{`RGETB, 3'b001, 2'b11, 1'b0, 1'b0, 1'b0, 1'b0,1'b0,1'b0, 7'b0};

	//dec->HALT
	11'b0_111_00111_xx: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next  rest
	{`HALT, 11'b0, 7'b0};
	
	//dec->ALU							    			
	11'b0_101_00111_xx: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next  rest
	{`GetA, 11'b0, 7'b0};

	//dec->LDR
	11'b0_011_00111_xx: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next  rest
	{`LDRread, 11'b0, 7'b0};

	//dec->STR
	11'b0_100_00111_xx: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next  rest
	{`STRread, 11'b0, 7'b0};







//MOV loop
	//opcode MOV						    		      
	11'b0_xxx_00101_10: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next    nsel   vsel  write  rest   rest
	{`IF1, 3'b100, 2'b01, 1'b1, 5'b0, 7'b0};
	
//MOV registered	
	//RGETB							    		       
	11'b0_xxx_01000_00: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next  nsel   vsel   write loada loadb loadc asel bsel rest
	{`READ, 3'b001, 2'b11, 1'b0, 1'b0, 1'b1, 1'b0,1'b0,1'b0, 7'b0};
	//pos READ							    		       
	11'b0_xxx_01001_00: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next  nsel   vsel   write loada loadb loadc asel bsel rest
	{`WriteReg, 3'b001, 2'b11, 1'b0, 1'b0, 1'b0, 1'b1,1'b1,1'b0, 7'b0};
	//PASS							    		       
	11'b0_xxx_01010_00: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next  nsel   vsel   write loada loadb loadc asel bsel ldpc  ldir  respc ldadd addsel mem
	{`IF1, 3'b010, 2'b11, 1'b1, 1'b0, 1'b0, 1'b0,1'b1,1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, `MNOT};



//FUNCTION loop
	//getA							   		      
	11'b0_xxx_00001_xx: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next  nsel   vsel   write loada loadb loadc asel bsel rest
	{`GetB, 3'b100, 2'b11, 1'b0, 1'b1, 1'b0, 1'b0,1'b0,1'b0, 7'b0};
	//getB 								    	    
	11'b0_xxx_00010_xx: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next  nsel   vsel   write loada loadb loadc asel bsel rest
	{`FUNC, 3'b001, 2'b11, 1'b0, 1'b0, 1'b1, 1'b0,1'b0,1'b0, 7'b0};

//FUNCTIONS
	//add						    	   	 	    
	11'b0_xxx_00011_00: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next        nsel   vsel   write loada loadb loadc asel bsel rest
	{`WriteReg, 3'b000, 2'b11, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 7'b0};
	//CMP Subtract						    	   	     
	11'b0_xxx_00011_01: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next        nsel   vsel   write loada loadb loadc asel bsel rest
	{`WriteReg, 3'b000, 2'b11, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 7'b0};
	//AND						    	   	 	    
	11'b0_xxx_00011_10: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next        nsel   vsel   write loada loadb loadc asel bsel rest
	{`WriteReg, 3'b000, 2'b11, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 7'b0};
	//NOT						    	   	 	     
	11'b0_xxx_00011_11: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next        nsel   vsel   write loada loadb loadc asel bsel rest
	{`WriteReg, 3'b000, 2'b11, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 7'b0};
	//WriteReg CMP (don't write)						     
	11'b0_xxx_00100_01: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next  nsel   vsel   write loada loadb loadc asel bsel rest
	{`IF1, 3'b010, 2'b11, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 7'b0};
	//WriteReg						    		     
	11'b0_xxx_00100_xx: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next  nsel   vsel   write loada loadb loadc asel bsel rest
	{`IF1, 3'b010, 2'b11, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 7'b0};



//LDR loop
	//LDR read
	11'b0_xxx_01110_xx: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next     nsel   vsel   write loada loadb loadc asel bsel ldpc  ldir  respc ldadd addsel mem
	{`LDRaddr, 3'b100, 2'b11, 1'b0, 1'b1, 1'b0, 1'b0,1'b0,1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, `MNOT};
	//LDR add
	11'b0_xxx_01111_xx: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next    nsel   vsel   write loada loadb loadc asel bsel ldpc  ldir  respc ldadd addsel mem
	{`LDRwr, 3'b000, 2'b00, 1'b0, 1'b0, 1'b0, 1'b1,1'b0,1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, `MREAD};
	//LDR write
	11'b0_xxx_10000_xx: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next       nsel   vsel   write loada loadb loadc asel bsel ldpc  ldir  respc ldadd addsel mem
	{`LDRfinal, 3'b010, 2'b00, 1'b0, 1'b0, 1'b0, 1'b0,1'b0,1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, `MREAD};
	//LDR final
	11'b0_xxx_10101_xx: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next  nsel   vsel   write loada loadb loadc asel bsel ldpc  ldir  respc ldadd addsel mem
	{`IF1, 3'b010, 2'b00, 1'b1, 1'b0, 1'b0, 1'b0,1'b0,1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, `MREAD};

//STR loop
	//STR read (getA)
	11'b0_xxx_10001_xx: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next      nsel   vsel   write loada loadb loadc asel bsel ldpc  ldir  respc ldadd addsel mem
	{`STRaddr, 3'b100, 2'b00, 1'b0, 1'b1, 1'b0, 1'b0,1'b0,1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, `MNOT};
	//STR addr (load address)
	11'b0_xxx_10010_xx: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next      nsel   vsel  write loada loadb loadc asel bsel ldpc  ldir  respc ldadd addsel mem
	{`STRval, 3'b100, 2'b00, 1'b0, 1'b0, 1'b0, 1'b1,1'b0,1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, `MNOT};	//address should be done
	//STR value (stores address and getsB)
	11'b0_xxx_10011_xx: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next    nsel   vsel   write loada loadb loadc asel bsel ldpc  ldir  respc ldadd addsel mem
	{`STRwr, 3'b010, 2'b00, 1'b0, 1'b0, 1'b1, 1'b0,1'b1,1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, `MNOT}; 
	//STR write
	11'b0_xxx_10100_xx: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next       nsel   vsel   write loada loadb loadc asel bsel ldpc  ldir  respc ldadd addsel mem
	{`STRfinal, 3'b010, 2'b00, 1'b0, 1'b0, 1'b0, 1'b1,1'b1,1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, `MNOT}; //change
	//STR final
	11'b0_xxx_10110_xx: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel
	,load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= 
	//next  nsel   vsel   write loada loadb loadc asel bsel ldpc  ldir  respc ldadd addsel mem
	{`IF1, 3'b010, 2'b00, 1'b0, 1'b0, 1'b0, 1'b0,1'b0,1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, `MWRITE}; //change


	default: {next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel,
	load_pc,load_ir,reset_pc,load_addr,addr_sel,mem_cmd} <= {22{1'bx}};
    endcase
  end
  
  assign pr_st = next_st;

endmodule

module instruct_dec(in, nsel, ALUop, sximm5, sximm8, shift, location, opcode, op);
  input [15:0] in;
  input [2:0] nsel;
  output [1:0] ALUop, shift, op;
  output [15:0] sximm5, sximm8;
  output [2:0] location, opcode;

  wire [2:0] Rn, Rd, Rm;
  wire [4:0] imm5;
  wire [7:0] imm8;

  assign imm5 = in[4:0];
  assign imm8 = in[7:0];

  assign ALUop = in[12:11];
  assign shift = in[4:3];

  assign Rn = in[10:8];
  assign Rd = in[7:5];
  assign Rm = in[2:0];

  //choose location
  Mux3 #(3) locsel(Rn,Rd,Rm, nsel, location);
  
  assign op = in[12:11];
  assign opcode = in[15:13];

  //do the sign extension
  assign sximm5 = {{11{imm5[4]}},imm5};
  assign sximm8 = {{8{imm8[7]}},imm8};

endmodule



