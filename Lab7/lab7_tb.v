<div id="cpen211_error_highlight"><pre><code>
module lab7_tb;
  reg [3:0] KEY;
  reg [9:0] SW;
  wire [9:0] LEDR; 
  wire [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
  reg err;

  lab7_top DUT(KEY,SW,LEDR,HEX0,HEX1,HEX2,HEX3,HEX4,HEX5);

  initial forever begin
    KEY[0] = 1; #5;
    KEY[0] = 0; #5;
  end

  initial begin
    err = 0;
    KEY[1] = 1'b0; // reset asserted
    // check if program from Figure 8 in Lab 7 handout can be found loaded in memory
    if (DUT.MEM.mem[0] !== 16'b1101000000001010) begin err = 1; $display("FAILED: mem[0] wrong; "); $stop; end
    if (DUT.MEM.mem[1] !== 16'b0110000000000000) begin err = 1; $display("FAILED: mem[1] wrong; "); $stop; end
    if (DUT.MEM.mem[2] !== 16'b1101010000000111) begin err = 1; $display("FAILED: mem[2] wrong; "); $stop; end
    if (DUT.MEM.mem[3] !== 16'b1000000010000000) begin err = 1; $display("FAILED: mem[3] wrong; "); $stop; end
    if (DUT.MEM.mem[4] !== 16'b0110000001000000) begin err = 1; $display("FAILED: mem[4] wrong; "); $stop; end
    if (DUT.MEM.mem[5] !== 16'b1100000001101010) begin err = 1; $display("FAILED: mem[5] wrong; "); $stop; end
    if (DUT.MEM.mem[6] !== 16'b1101000100001011) begin err = 1; $display("FAILED: mem[6] wrong; "); $stop; end
    if (DUT.MEM.mem[7] !== 16'b1000000101100000) begin err = 1; $display("FAILED: mem[7] wrong; "); $stop; end
    if (DUT.MEM.mem[8] !== 16'b0110000100100000) begin err = 1; $display("FAILED: mem[8] wrong; "); $stop; end
    if (DUT.MEM.mem[9] !== 16'b1110000000000000) begin err = 1; $display("FAILED: mem[9] wrong; "); $stop; end
    if (DUT.MEM.mem[10] !== 16'b0000000000010100) begin err = 1; $display("FAILED: mem[10] wrong; "); $stop; end
    if (DUT.MEM.mem[11] !== 16'b0000000000010000) begin err = 1; $display("FAILED: mem[11] wrong; "); $stop; end


    #10; // wait until next falling edge of clock
    KEY[1] = 1'b1; // reset de-asserted, PC still undefined if as in Figure 8

    #10; // waiting for RST state to cause reset of PC

    if (DUT.CPU.PC !== 9'b0) begin err = 1; $display("FAILED: PC is not reset to zero."); $stop; end

    @(posedge DUT.CPU.PC or negedge DUT.CPU.PC);  // wait here until PC changes; 
    if (DUT.CPU.PC !== 9'h1) begin err = 1; $display("FAILED: PC should be 1."); $stop; end

    @(posedge DUT.CPU.PC or negedge DUT.CPU.PC);  // wait here until PC changes; PC set to 2 *after* executing MOV R0, 0x0014

    if (DUT.CPU.PC !== 9'h2) begin err = 1; $display("FAILED: PC should be 2."); $stop; end
    if (DUT.CPU.DP.REGFILE.R0 !== 16'ha) begin err = 1; $display("FAILED: R0 should be 14."); $stop; end  // MOV R0, 0x0014 should have occurred

    @(posedge DUT.CPU.PC or negedge DUT.CPU.PC);  // wait here until PC changes; PC set to 3 *after* executing LDR R0, [R0]

    if (DUT.CPU.PC !== 9'h3) begin err = 1; $display("FAILED: PC should be 3."); $stop; end
    if (DUT.CPU.DP.REGFILE.R0 !== 16'h14) begin err = 1; $display("FAILED: R0 should be 0x14."); $stop; end  

    @(posedge DUT.CPU.PC or negedge DUT.CPU.PC);  // wait here until PC changes; PC set to 3 *after* executing MOV R4, #7

    if (DUT.CPU.PC !== 9'h4) begin err = 1; $display("FAILED: PC should be 4."); $stop; end
    if (DUT.CPU.DP.REGFILE.R4 !== 16'h7) begin err = 1; $display("FAILED: R4 should be 0x7."); $stop; end 

    @(posedge DUT.CPU.PC or negedge DUT.CPU.PC);  // wait here until PC changes; PC set to 3 *after* executing STR R4, [R0]

    if (DUT.CPU.PC !== 9'h5) begin err = 1; $display("FAILED: PC should be 5."); $stop; end
    if (DUT.MEM.mem[20] !== 16'h7) begin err = 1; $display("FAILED: mem[20] should be 0x7."); $stop; end 

    @(posedge DUT.CPU.PC or negedge DUT.CPU.PC);  // wait here until PC changes; PC set to 4 *after* executing LDR R2, [R0]

    if (DUT.CPU.PC !== 9'h6) begin err = 1; $display("FAILED: PC should be 6."); $stop; end
    if (DUT.CPU.DP.REGFILE.R2 !== 16'h7) begin err = 1; $display("FAILED: R2 should be 0x7."); $stop; end

    @(posedge DUT.CPU.PC or negedge DUT.CPU.PC);  // wait here until PC changes; PC set to 5 *after* executing MOV R3, R2, LSL #1
   
    if (DUT.CPU.PC !== 9'h7) begin err = 1; $display("FAILED: PC should be 7."); $stop; end
    if (DUT.CPU.DP.REGFILE.R3 !== 16'he) begin err = 1; $display("FAILED: R3 should be 0xe."); $stop; end  

    @(posedge DUT.CPU.PC or negedge DUT.CPU.PC);  // wait here until PC changes; PC set to 6 *after* executing MOV R1, C
    if (DUT.CPU.PC !== 9'h8) begin err = 1; $display("FAILED: PC should be 8."); $stop; end
    if (DUT.CPU.DP.REGFILE.R1 !== 16'hb) begin err = 1; $display("FAILED: R1 should be 0xb."); $stop; end  

    @(posedge DUT.CPU.PC or negedge DUT.CPU.PC);  // wait here until PC changes; PC set to 7 *after* STR R3, [R1]

    if (DUT.CPU.PC !== 9'h9) begin err = 1; $display("FAILED: PC should be 9."); $stop; end
    if (DUT.MEM.mem[11] !== 16'he) begin err = 1; $display("FAILED: mem[11] should be 0xe."); $stop; end 

    @(posedge DUT.CPU.PC or negedge DUT.CPU.PC);  // wait here until PC changes; PC set to 8 *after* LDR R1, [R1]
   
    if (DUT.CPU.PC !== 9'ha) begin err = 1; $display("FAILED: PC should be 10."); $stop; end
    if (DUT.CPU.DP.REGFILE.R1 !== 16'he) begin err = 1; $display("FAILED: R1 wrong should be 0xe;"); $stop; end

    //HALT
    #20;
    if (DUT.CPU.statemachine.pr_st !== 5'b11111) begin err = 1; $display("FAILED: State is not in HALT;"); $stop; end

     
    if (~err) $display("INTERFACE OK");
    $stop;
  end
endmodule



