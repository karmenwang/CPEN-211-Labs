// LAB6 cpu
// Robert Bradley and Karmen Wang
// 77543304 and 54144183
//  18/10/26

module cpu_tb;
  reg clk, reset, s, load;
  reg [15:0] in;
  wire [15:0] out;
  wire N,V,Z,w;

  reg err;

  cpu DUT(clk,reset,s,load,in,out,N,V,Z,w);

  initial begin
    clk = 0; #5;
    forever begin
      clk = 1; #5;
      clk = 0; #5;
    end
  end

  initial begin
    err = 0;

// setting state inputs 
   //reset is on
    reset = 1; s = 0; load = 0; in = 16'b0;
    #10;
  //reset is off
    reset = 0; 
    #10;
  //sending instructions to the decoder
    in = 16'b110_10_000__000_00_110; //MOV R0, #6
    load = 1;
    #10;
    load = 0;
    s = 1;
    #10
    s = 0;
    @(posedge w); // wait for w to go high again
    #10;
    if (cpu_tb.DUT.DP.REGFILE.R0 !== 16'h6) begin
      err = 1;
      $display("FAILED: MOV R0, #6");
      $stop;
    end

    in = 16'b110_10_001__000_00_101; //MOV R1, #5"
    load = 1;
    #10;
    load = 0;
    s = 1;
    #10
    s = 0;
    @(posedge w); // wait for w to go high again
    #10;
    if (cpu_tb.DUT.DP.REGFILE.R1 !== 16'h5) begin
      err = 1;
      $display("FAILED: MOV R1, #5");
      $stop;
    end

    in = 16'b101_00_001__010_01_000; //ADD  R1, R0 with left shift and putting it into R2
    load = 1;
    #10;
    load = 0;
    s = 1;
    #10
    s = 0;
    @(posedge w); // wait for w to go high again
    #10;
    if (cpu_tb.DUT.DP.REGFILE.R2 !== 16'h11) begin
      err = 1;
      $display("FAILED: ADD R2, R1, R0, LSL#1");
      $stop;
    end


    in = 16'b110_10_111__000_10_111; //MOV R7, #23
    load = 1;
    #10;
    load = 0;
    s = 1;
    #10
    s = 0;
    @(posedge w); // wait for w to go high again
    #10;
    if (cpu_tb.DUT.DP.REGFILE.R7 !== 16'h17) begin
      err = 1;
      $display("FAILED: MOV R7, #23");
      $stop;
    end

in = 16'b101_01_111__000_00_001; // CMP R7, R1
    load = 1;
    #10;
    load = 0;
    s = 1;
    #10
    s = 0;
    @(posedge w); // wait for w to go high again
    #10;
    if (cpu_tb.DUT.DP.REGFILE.R0 !== 16'h6) begin
      err = 1;
      $display("FAILED: CMP R7, R1 ");
      $stop;
    end
    if (cpu_tb.DUT.DP.status_out !== 3'b000) begin
      err = 1;
      $display("FAILED: status != 000 ");
      $stop;
    end

in = 16'b101_01_001__000_00_001; // CMP R1, R1
    load = 1;
    #10;
    load = 0;
    s = 1;
    #10
    s = 0;
    @(posedge w); // wait for w to go high again
    #10;
    if (cpu_tb.DUT.DP.datapath_out !== 16'h0) begin
      err = 1;
      $display("FAILED: CMP R1, R1 ");
      $stop;
    end
    if (cpu_tb.DUT.DP.status_out !== 3'b001) begin
      err = 1;
      $display("FAILED: status != 001 ");
      $stop;
    end

in = 16'b101_01_000__000_00_111; // CMP R0, R7
    load = 1;
    #10;
    load = 0;
    s = 1;
    #10
    s = 0;
    @(posedge w); // wait for w to go high again
    #10;
    if (cpu_tb.DUT.DP.datapath_out !== 16'b1111111111101111) begin
      err = 1;
      $display("FAILED: CMP R0, R7 ");
      $stop;
    end
    if (cpu_tb.DUT.DP.status_out !== 3'b010) begin
      err = 1;
      $display("FAILED: status != 010 ");
      $stop;
    end

in = 16'b101_11_000__011_00_000; // MVN R3, R0
    load = 1;
    #10;
    load = 0;
    s = 1;
    #10
    s = 0;
    @(posedge w); // wait for w to go high again
    #10;
    if (cpu_tb.DUT.DP.datapath_out !== 16'b1111111111111001) begin
      err = 1;
      $display("FAILED: MVN R3, R0 ");
      $stop;
    end
    if (cpu_tb.DUT.DP.status_out !== 3'b010) begin
      err = 1;
      $display("FAILED: status != 010 ");
      $stop;
    end

in = 16'b101_00_011__010_00_111; // ADD R2, R3, R7
    load = 1;
    #10;
    load = 0;
    s = 1;
    #10
    s = 0;
    @(posedge w); // wait for w to go high again
    #10;
    if (cpu_tb.DUT.DP.datapath_out !== 16'b0000000000010000) begin
      err = 1;
      $display("FAILED: ADD R2, R3, R7 ");
      $stop;
    end
    if (cpu_tb.DUT.DP.status_out !== 3'b100) begin
      err = 1;
      $display("FAILED: status != 100 ");
      $stop;
    end





    in = 16'b110_10_000__000_00_111; //MOV R0, #7
    load = 1;
    #10;
    load = 0;
    s = 1;
    #10
    s = 0;
    @(posedge w); // wait for w to go high again
    #10;
    if (cpu_tb.DUT.DP.REGFILE.R0 !== 16'h7) begin
      err = 1;
      $display("FAILED: MOV R0, #7");
      $stop;
    end
    
    in = 16'b110_00_000__011_00_000; // MOV R3, R0
    load = 1;
    #10;
    load = 0;
    s = 1;
    #10
    s = 0;
    @(posedge w); // wait for w to go high again
    #10;
    if (cpu_tb.DUT.DP.datapath_out !== 16'h7) begin
      err = 1;
      $display("FAILED: MOV R3, R0 ");
      $stop;
    end
    if (cpu_tb.DUT.DP.status_out !== 3'b000) begin
      err = 1;
      $display("FAILED: status != 000 ");
      $stop;
    end



    if (~err) begin
	 $display("INTERFACE OK");
	end


    $stop;
  end
endmodule

