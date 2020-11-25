// LAB6 cpu
// Robert Bradley and Karmen Wang
// 77543304 and 54144183
//  18/10/26
module cpu(clk,reset,s,load,in,out,N,V,Z,w);
  input clk, reset, s, load;
  input [15:0] in;
  output [15:0] out;
  output N, V, Z, w;

  wire [15:0] inloaded;

  //decoder outputs/ inputs to datapath
  wire [1:0] ALUop, shift, op;
  wire [15:0] sximm5, sximm8;
  wire [2:0] location, opcode;

  //state inputs/outputs
  wire write, loada, loadb, loadc, asel, bsel;
  wire [2:0] nsel;
  wire [1:0] vsel;

  //temporary assign until Lab7 and Lab8
  assign PC = 8'b0;
  assign mdata = 16'b0;

  //state machine -- step through clock cycles
  state_cntrl statemachine(s,reset,clk,opcode,op,w,nsel,vsel,write,loada,loadb,loadc,asel,bsel);
  //load the input 
  vDFFE #(16) instruct(in,load,clk,inloaded);

  //send input to the decoder
  instruct_dec dec_i(inloaded, nsel, ALUop, sximm5, sximm8, shift, location, opcode, op);

  //send to datapath
		// 			    PC***			 mdata
  datapath DP(location, write, location, in[7:0], sximm5, clk, loada, 16'b0, sximm8,    
		//             asel  bsel    
		 loadb, shift, asel, bsel, ALUop, loadc, loadc, vsel, out, {V,N,Z});



endmodule



`define Wait 4'b0000
`define GetA 4'b0001
`define GetB 4'b0010
`define FUNC 4'b0011
`define WriteReg 4'b0100
`define Writelmm 4'b0101
`define DECODE 4'b0111
`define RGETB 4'b1000
`define READ 4'b1001
`define PASS 4'b1010
//1011
//1100
//1101
//1110
//1111



module state_cntrl(s,reset,clk,opcode,op,w,nsel,vsel,write,loada,loadb,loadc,asel,bsel);
  //start, reset and clk
  input s, reset, clk;
  input [2:0] opcode;
  input [1:0] op;

  //wait
  output w;
  reg w;

  //other outputs
  output [2:0] nsel;
  reg [2:0] nsel;
  output [1:0] vsel;
  reg [1:0] vsel;
  output loada, loadb, loadc, write, asel, bsel;
  reg loada, loadb, loadc, write, asel, bsel;


  //states
  wire [3:0] pr_st;  //present state
  reg [3:0] next_st; //next state

  always @(posedge clk) begin
    //MOV function loop (opcode == 110)
    //ALU functions loop (opcode == 101)
    casex ({reset,s,opcode,pr_st,op})
//reset
								                      //w    next   rest
	11'b1x_xxx_xxxx_xx: {w,next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel} <= {1'b0,`Wait, 11'b0};
//no start in position wait
								    		      //w    next   rest
	11'b00_xxx_0000_xx: {w,next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel} <= {1'b1,`Wait, 11'b0};
//start in position wait -> decode
								    		       //w    next     rest
	11'b01_xxx_0000_xx: {w,next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel} <= {1'b1,`DECODE, 11'b0};






//DECODE State
								    		 	//w    next     rest
	11'b0x_110_0111_10: {w,next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel} <= {1'b0,`Writelmm, 11'b0};
		    		     							 //w    next     nsel  vsel  write  loada loadb loadc asel bsel 
	11'b0x_110_0111_00: {w,next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel} <= {1'b0, `RGETB, 3'b001, 2'b11, 1'b0, 1'b0, 1'b0, 1'b0,1'b0,1'b0};
								    			//w    next     rest
	11'b0x_101_0111_xx: {w,next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel} <= {1'b0,`GetA, 11'b0};







//MOV loop
	//opcode MOV
								    		      //w    next     nsel  vsel  write  rest
	11'b0x_xxx_0101_10: {w,next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel} <= {1'b0, `Wait, 3'b100, 2'b01, 1'b1, 5'b0};
	//MOV registered
								    		      //w    next     nsel  vsel  write  loada loadb loadc asel bsel 
	//11'b0x_xxx_0101_00: {w,next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel} <= {1'b0, `RGETB, 3'b001, 2'b11, 1'b0, 1'b0, 1'b0, 1'b0,1'b0,1'b0};
								    		      //w    next     nsel  vsel  write  loada loadb loadc asel bsel 
	11'b0x_xxx_1000_00: {w,next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel} <= {1'b0, `READ, 3'b001, 2'b11, 1'b0, 1'b0, 1'b1, 1'b0,1'b0,1'b0};
								    		      //w    next      nsel  vsel  write  loada loadb loadc asel bsel 
	11'b0x_xxx_1001_00: {w,next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel} <= {1'b0, `PASS, 3'b001, 2'b11, 1'b0, 1'b0, 1'b0, 1'b1,1'b1,1'b0};
								    		      //w    next      nsel  vsel  write  loada loadb loadc asel bsel 
	11'b0x_xxx_1010_00: {w,next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel} <= {1'b0, `Wait, 3'b010, 2'b11, 1'b1, 1'b0, 1'b0, 1'b0,1'b1,1'b0};



//FUNCTION loop
	//getA							   		     //w    next     nsel  vsel  write loada loadb loadc asel bsel 
	11'b0x_xxx_0001_xx: {w,next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel} <= {1'b0, `GetB, 3'b100, 2'b11, 1'b0, 1'b1, 1'b0, 1'b0,1'b0,1'b0};
	//getB 								    	    //w    next     nsel  vsel  write loada loadb loadc asel bsel
	11'b0x_xxx_0010_xx: {w,next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel} <= {1'b0, `FUNC, 3'b001, 2'b11, 1'b0, 1'b0, 1'b1, 1'b0,1'b0,1'b0};
//FUNCTIONS
	//add						    	   	 	     //w    next        nsel     vsel  write loada loadb loadc  asel  bsel
	11'b0x_xxx_0011_00: {w,next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel} <= {1'b0, `WriteReg, 3'b000, 2'b11, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0};
	//CMP Subtract						    	   	     //w    next        nsel     vsel  write loada loadb loadc  asel  bsel
	11'b0x_xxx_0011_01: {w,next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel} <= {1'b0, `WriteReg, 3'b000, 2'b11, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0};
	//AND						    	   	 	     //w    next        nsel     vsel  write loada loadb loadc  asel  bsel
	11'b0x_xxx_0011_10: {w,next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel} <= {1'b0, `WriteReg, 3'b000, 2'b11, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0};
	//NOT						    	   	 	     //w    next         nsel    vsel  write loada loadb loadc  asel  bsel
	11'b0x_xxx_0011_11: {w,next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel} <= {1'b0, `WriteReg, 3'b000, 2'b11, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0};
	//WriteReg CMP (don't write)						      //w    next     nsel  vsel  write loada loadb loadc asel bsel
	11'b0x_xxx_0100_01: {w,next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel} <= {1'b0, `Wait, 3'b010, 2'b11, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};
	//WriteReg						    		     //w    next     nsel    vsel  write loada loadb loadc asel bsel
	11'b0x_xxx_0100_xx: {w,next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel} <= {1'b0, `Wait, 3'b010, 2'b11, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0};
	default: {w,next_st,nsel,vsel,write,loada,loadb,loadc,asel,bsel} <= {15{1'bx}};
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




