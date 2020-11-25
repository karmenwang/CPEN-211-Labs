
module datapath(datapath_in, writenum, write, readnum, clk, loada, loadb, shift, asel, bsel, ALUop, loadc, loads, vsel, datapath_out, Z_out);
  input [15:0] datapath_in;
  input [2:0] writenum, readnum;
  input write, clk, loada, loadb, loadc, loads,  asel, bsel, vsel;
  input [1:0] shift, ALUop;
  output [15:0] datapath_out;
  output Z_out;

  //middle wires
  wire [15:0] data_in, data_out, Atemp, Btemp, out, sout, Ain, Bin;
  wire Z;
  
  //unit 1
  regfile U0(data_in, writenum, write, readnum, clk, data_out);

  //unit 2
  ALU U2(Ain, Bin, ALUop, out, Z);

  //unit 3, 4, 5
  vDFFE #(16) A(data_out, loada, clk, Atemp);
  vDFFE #(16) B(data_out, loadb, clk, Btemp);
  vDFFE #(16) C(out, loadc, clk, datapath_out);

  //unit 6
  assign Ain = asel ? 16'b0 : Atemp;
  //unit 7
  assign Bin = bsel ? {11'b0, datapath_in[4:0]} : sout;

  //unit 8
  shifter U1(Btemp,shift,sout);

  //unit 9
  assign data_in = vsel ? datapath_in : datapath_out;

  //unit 10
  vDFFE #(1) status(Z, loads, clk, Z_out);

  





endmodule
