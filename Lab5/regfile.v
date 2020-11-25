module regfile(data_in,writenum,write,readnum,clk,data_out);
  input [15:0] data_in;
  input [2:0] writenum, readnum;
  input write, clk;
  output [15:0] data_out;
  wire [7:0] tempw, tempr, towrite;
  wire [15:0] R0,R1,R2,R3,R4,R5,R6,R7;

  //decode where to write
  Dec #(3,8) top(writenum,tempw);
  //which R to write to (if any)
  assign towrite = tempw & {8{write}};

  //enable load of anything being written to
  vDFFE #(16) Rzero(data_in, towrite[0], clk, R0);
  vDFFE #(16) Rone(data_in, towrite[1], clk, R1);
  vDFFE #(16) Rtwo(data_in, towrite[2], clk, R2);
  vDFFE #(16) Rthree(data_in, towrite[3], clk, R3);
  vDFFE #(16) Rfour(data_in, towrite[4], clk, R4);
  vDFFE #(16) Rfive(data_in, towrite[5], clk, R5);
  vDFFE #(16) Rsix(data_in, towrite[6], clk, R6);
  vDFFE #(16) Rseven(data_in, towrite[7], clk, R7);



  //decode where to read
  Dec #(3,8) bot(readnum, tempr);
  //what to read
  Mux8 #(16) outp(R0,R1,R2,R3,R4,R5,R6,R7,tempr,data_out);

endmodule

