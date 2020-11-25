// LAB6 cpu
// Robert Bradley and Karmen Wang
// 77543304 and 54144183
//  18/10/26
module datapath(writenum, write, readnum, PC, sximm5, clk, loada, mdata, sximm8, loadb, shift, asel, bsel, ALUop, loadc, loads, vsel, datapath_out, status_out);
  input [15:0] mdata, sximm8, sximm5;
  input [7:0] PC;
  input [2:0] writenum, readnum;
  input write, clk, loada, loadb, loadc, loads,  asel, bsel;
  input [1:0] shift, ALUop, vsel;
  output [15:0] datapath_out;
  output [2:0] status_out;


  //middle wires
  wire [15:0] data_in, data_out, Atemp, Btemp, out, sout, Ain, Bin;
  wire Z, overflow;
  wire [2:0] status_in;
  
  //unit 1
  regfile REGFILE(data_in, writenum, write, readnum, clk, data_out);

  //unit 2
  ALU U2(Ain, Bin, ALUop, out, Z);

  //unit 3, 4, 5
  vDFFE #(16) A(data_out, loada, clk, Atemp);
  vDFFE #(16) B(data_out, loadb, clk, Btemp);
  vDFFE #(16) C(out, loadc, clk, datapath_out);

  //unit 6
  assign Ain = asel ? 16'b0 : Atemp;
  //unit 7
  assign Bin = bsel ? sximm5 : sout;

  //unit 8
  shifter U1(Btemp,shift,sout);

  //unit 9
  Mux4 #(16) U0(mdata, sximm8, {8'b0,PC}, datapath_out, vsel, data_in);

  //unit 10
  vDFFE #(3) stat(status_in, loads, clk, status_out);

  checkovf #(16) overflowcheck(Ain, Bin, ALUop, overflow);
  assign status_in = {overflow,out[15],Z};

  

endmodule


