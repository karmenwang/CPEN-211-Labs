
`define ON  10'b000000001
`define OFF 10'b000000000
`define n1 7'b1111001
`define n2 7'b0100100
`define n3 7'b0110000
`define n4 7'b0011001
`define n5 7'b0010010

module lab4_tb();  //testbench module
  reg [9:0] SW;
  reg [3:0] KEY;
  wire [6:0] HEX0;

  lab4_top dut(SW,KEY,HEX0);

  

  initial begin

//START WITH SCROLLING THROUGH THE CYCLE
    SW = `ON; KEY = 4'b0011; //should display first value 1
    #10 
    SW = `ON; KEY = 4'b0010; //releasing button should hold the value at 1 (first num) and allow user to active next press properly
    #5
    $display ("Initial Setup:  ");
    $display ("Expected output: %b", `n1);
    $display ("HEX0 output is : %b", HEX0);

    SW = `ON; KEY = 4'b0011; //should display next value 2
    #10
    SW = `ON; KEY = 4'b0010; //release
    #5
    $display ("                     ");
    $display ("Expected output: %b", `n2);
    $display ("HEX0 output is : %b", HEX0);

    SW = `ON; KEY = 4'b0011; //should display next value 3
    #10 
    SW = `ON; KEY = 4'b0010;
    #5 
    $display ("                     ");
    $display ("Expected output: %b", `n3);
    $display ("HEX0 output is : %b", HEX0);
 
    SW = `ON; KEY = 4'b0011; //should display next value 4
    #10
    SW = `ON; KEY = 4'b0010;
    #5
    $display ("                     ");
    $display ("Expected output: %b", `n4);
    $display ("HEX0 output is : %b", HEX0);

    SW = `ON; KEY = 4'b0011; //should display last value 5
    #10
    SW = `ON; KEY = 4'b0010;
    #5
    $display ("                     ");
    $display ("Expected output: %b", `n5);
    $display ("HEX0 output is : %b", HEX0);

    SW = `ON; KEY = 4'b0011; //since cycle is done, next press should reset the cycle and print first value 1
    #10
    SW = `ON; KEY = 4'b0010;
    #5
    $display ("                     ");
    $display ("Expected output: %b", `n1);
    $display ("HEX0 output is : %b", HEX0);

    SW = `ON; KEY = 4'b0011; //increment a few more times(shows: 2)
    #10
    SW = `ON; KEY = 4'b0010;
    #5
    $display ("                     ");
    $display ("Expected output: %b", `n2);
    $display ("HEX0 output is : %b", HEX0);

//TESTING RESET BUTTON KEY[0]
    SW = `ON; KEY = 4'b0000;
    SW = `ON; KEY = 4'b0011;  //reset button (key1) is pressed, value showed should be 1
    #10
    SW = `ON; KEY = 4'b0000;
    #5 
    $display ("            ");
    $display ("RESET BUTTON IS PRESSED ");
    $display ("Expected output: %b", `n1);
    $display ("HEX0 output is : %b", HEX0);

//TESTING "BACKWARDS" SCROLLING 
    SW = `OFF; KEY = 4'b0011;  //turning SW0 off changes direction of cycle, next value after 1 should be 5
    #10
    SW = `OFF; KEY = 4'b0010;
    #5
    $display ("                    ");
    $display ("BACKWARDS SCROLLING ");
    $display ("Expected output: %b", `n5);
    $display ("HEX0 output is : %b", HEX0);

    SW =`OFF; KEY = 4'b0011;  //cycle goes "backwards" now, next value should be 4
    #10
    SW = `OFF; KEY = 4'b0010;
    #5
    $display ("                     ");
    $display ("Expected output: %b", `n4);
    $display ("HEX0 output is : %b", HEX0);

    SW = `OFF; KEY = 4'b0011;  //4 to 3
    #10
    SW = `OFF; KEY = 4'b0010;
    #5
    $display ("                     ");
    $display ("Expected output: %b", `n3);
    $display ("HEX0 output is : %b", HEX0);

    SW = `OFF; KEY = 4'b0011;  //3 to 2
    #10
    SW = `OFF; KEY = 4'b0010;
    #5
    $display ("                  ");
    $display ("Expected output: %b", `n2);
    $display ("HEX0 output is : %b", HEX0);

    SW = `OFF; KEY = 4'b0011;  //2 to 1
    #10
    SW = `OFF; KEY = 4'b0010;
    #5
    $display ("                     ");
    $display ("Expected output: %b", `n1);
    $display ("HEX0 output is : %b", HEX0);

    SW = `OFF; KEY = 4'b0011;  //1 to 5 (cycle ends so it should restart with 5, the backwards cycle, as long as switch is off)
    #10
    SW = `OFF; KEY = 4'b0010;
    #5
    $display ("                     ");
    $display ("Expected output: %b", `n5);
    $display ("HEX0 output is : %b", HEX0);

//RESETING WITH SW[0] OFF
    SW = `OFF; KEY = 4'b0000; 
    SW = `OFF; KEY = 4'b0001;  //resetting while in reverse (should show 4)
    #10
    SW = `OFF; KEY = 4'b0010;
    #5
    $display ("             ");
    $display ("RESETING WITH SW[0] OFF  ");
    $display ("Expected output: %b", `n4);
    $display ("HEX0 output is : %b", HEX0);

//TESTING OUTPUT WITH RANDOM KEYS ON
    SW = `OFF; KEY = 4'b1110;  //output should have no effect when other keys are pressed
    #10
    SW = `OFF; KEY = 4'b0010;
    #5
    $display ("                     ");
    $display ("Expected output: %b", `n4);
    $display ("HEX0 output is : %b", HEX0);

    SW = `OFF; KEY = 4'b0111;  //should show next value (3) regardless whether key 2 is on 
    #10
    SW = `OFF; KEY = 4'b0010;
    #5
    $display ("                     ");
    $display ("Expected output: %b", `n3);
    $display ("HEX0 output is : %b", HEX0);

    SW = `ON; KEY = 4'b0011;  //changes direction, 3 to 4
    #10
    SW = `OFF; KEY = 4'b0010;
    #5
    $display ("                         ");
    $display ("CHANGE DIRECTION SW[0] OFF");
    $display ("Expected output: %b", `n4);
    $display ("HEX0 output is : %b", HEX0);

    SW = `OFF; KEY = 4'b0011;  //checking direction 4 to 3
    #10
    SW = `OFF; KEY = 4'b0010;
    #5
    $display ("                     ");
    $display ("Expected output: %b", `n3);
    $display ("HEX0 output is : %b", HEX0);

//TESTING OUTPUT WITH RANDOM SWITCHES ON
    SW = 10'b110110010; KEY=4'b0011;  //turning on random switches should not alter output results
    #10
    SW = 10'b110010010; KEY = 4'b0010;//still incrementing backwards in the cycle
    #5
    $display ("                     ");
    $display ("Expected output: %b", `n2);
    $display ("HEX0 output is : %b", HEX0);

    SW = 10'b0000100111; KEY = 4'b0011;  //turning on random switches should not alter output results
    #10
    SW = `ON; KEY = 4'b0010;		 //SW[0] is ON which means cycle will increment in the original direction
    #5
    $display ("                     ");
    $display ("Expected output: %b", `n3); 
    $display ("HEX0 output is : %b", HEX0);

    SW=10'b0001001011; KEY=4'b0011;  //turning on random switches should not alter output results
    #10
    SW = `ON; KEY = 4'b0010;	     //SW[0] is ON which means cycle will increment in original direction
    #5
    $display ("                     ");
    $display ("Expected output: %b", `n4);
    $display ("HEX0 output is : %b", HEX0);


$stop;
 end

endmodule
