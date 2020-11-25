
//State Machines and the Hex Display
//Inputs:
//  SW - Used to change directions of the display order
//  KEY - KEY0 used to display the next number, Key1 used to reset HEX display
//Output:  HEX0 - HEX display
//prints 12345

module lab4_top(SW,KEY,HEX0);

  // defining numbers on HEX display
  `define n0 7'b1000000

  `define n1 7'b1111001
  `define n2 7'b0100100
  `define n3 7'b0110000
  `define n4 7'b0011001
  `define n5 7'b0010010

  `define n6 7'b0000010
  `define n7 7'b1111000
  `define n8 7'b0000000
  `define n9 7'b0011000

  `define SW 3			
  `define S1 3'b000		// we use 3 bits because we have 5 states 
  `define S2 3'b001		// states are represented in the greycode binary value of the state
  `define S3 3'b010
  `define S4 3'b011
  `define S5 3'b100

  input [9:0] SW;	//Used to change directions of the display order
  input [3:0] KEY;	//KEY - KEY0 used to display the next number, Key1 used to reset HEX0 display, SW0 used to change directions
  output [6:0] HEX0;	//Data driven to Hex0
  reg [6:0] HEX0;

  wire clk = ~KEY[0];
  wire reset = ~KEY[1];
  wire in = SW[0];
  
  wire [2:0] present_state, next_state_reset;
  reg [2:0] next_state;

  vDFF #(`SW) STATE(clk, next_state_reset, present_state);

  //reset logic
  assign next_state_reset = reset ? `S1 : next_state;

  //next state and output logic
  always @(*) begin
    case(present_state)
      `S1: {next_state, HEX0} = {(in ? `S2 : `S5),`n1};	//if switch is on then program goes in one direction
      `S2: {next_state, HEX0} = {(in ? `S3 : `S1),`n2};	//turning switch off will cause numbers to print in opposite direction
      `S3: {next_state, HEX0} = {(in ? `S4 : `S2),`n3};
      `S4: {next_state, HEX0} = {(in ? `S5 : `S3),`n4};
      `S5: {next_state, HEX0} = {(in ? `S1 : `S4),`n5};
      default: {next_state,HEX0} = {`S1,`n1}; //default is in original state or '1'
    endcase
  end
endmodule



//D flip flop module used to detect rising edge of clk and store previous and present states
module vDFF(clk, in, out);
  parameter n=1; //width
  input clk;
  input [n-1:0] in;
  output [n-1:0] out;
  reg[n-1:0] out;

  always @ (posedge clk)
    out = in;

endmodule
