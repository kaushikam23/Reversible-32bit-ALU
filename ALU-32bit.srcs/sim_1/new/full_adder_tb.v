`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2023 23:49:56
// Design Name: 
// Module Name: full_adder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module full_adder_tb;
  reg a, b, carry_in;
  wire sum, carry_out;
  
  // Instantiate the full adder
  full_adder uut(
    .a(a),
    .b(b),
    .carry_in(carry_in),
    .sum(sum),
    .carry_out(carry_out)
  );

  // Stimulus generation
  initial begin
    // Test case 1: a=0, b=0, carry_in=0
    a = 0;
    b = 0;
    carry_in = 0;
    #10;
    $display("Test Case 1: a=%b, b=%b, carry_in=%b, sum=%b, carry_out=%b", a, b, carry_in, sum, carry_out);

    // Test case 2: a=1, b=0, carry_in=0
    a = 1;
    b = 0;
    carry_in = 0;
    #10;
    $display("Test Case 2: a=%b, b=%b, carry_in=%b, sum=%b, carry_out=%b", a, b, carry_in, sum, carry_out);

    // Test case 3: a=0, b=1, carry_in=0
    a = 0;
    b = 1;
    carry_in = 0;
    #10;
    $display("Test Case 3: a=%b, b=%b, carry_in=%b, sum=%b, carry_out=%b", a, b, carry_in, sum, carry_out);

    // Test case 4: a=1, b=1, carry_in=0
    a = 1;
    b = 1;
    carry_in = 0;
    #10;
    $display("Test Case 4: a=%b, b=%b, carry_in=%b, sum=%b, carry_out=%b", a, b, carry_in, sum, carry_out);

    // Test case 5: a=0, b=0, carry_in=1
    a = 0;
    b = 0;
    carry_in = 1;
    #10;
    $display("Test Case 5: a=%b, b=%b, carry_in=%b, sum=%b, carry_out=%b", a, b, carry_in, sum, carry_out);

    // Test case 6: a=1, b=0, carry_in=1
    a = 1;
    b = 0;
    carry_in = 1;
    #10;
    $display("Test Case 6: a=%b, b=%b, carry_in=%b, sum=%b, carry_out=%b", a, b, carry_in, sum, carry_out);

    // Test case 7: a=0, b=1, carry_in=1
    a = 0;
    b = 1;
    carry_in = 1;
    #10;
    $display("Test Case 7: a=%b, b=%b, carry_in=%b, sum=%b, carry_out=%b", a, b, carry_in, sum, carry_out);

   a = 1;
    b = 1;
    carry_in = 1;
    #10;
    $display("Test Case 7: a=%b, b=%b, carry_in=%b, sum=%b, carry_out=%b", a, b, carry_in, sum, carry_out);

// Stop simulation
    $finish;
  end
endmodule