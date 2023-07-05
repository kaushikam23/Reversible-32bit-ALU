`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2023 23:39:33
// Design Name: 
// Module Name: adder_32bit_tb
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

module ripple_carry_adder_32bit_tb;
  reg [31:0] a;
  reg [31:0] b;
  reg control;
  wire [31:0] sum;
  wire carry_out;
  
  // Instantiate the 32-bit ripple carry adder
  ripple_carry_adder_32bit uut(
    .a(a),
    .b(b),
    .control(control),
    .sum(sum),
    .carry_out(carry_out)
  );

  // Stimulus generation
  initial begin
    // Test case 1: a=10, b=5
    a = 10;
    b = 5;
    control=1;
    #10;
    $display("Test Case 1: a=%d, b=%d, sum=%d, carry_out=%d", a, b, sum, carry_out);

    // Test case 2: a=255, b=1
    a = 255;
    b = 1;
    control=1;
    #10;
    $display("Test Case 2: a=%d, b=%d, sum=%d, carry_out=%d", a, b, sum, carry_out);

    // Test case 3: a=0, b=0
    a = 0;
    b = 50;
    control=0;
    #10;
    $display("Test Case 3: a=%d, b=%d, sum=%d, carry_out=%d", a, b, sum, carry_out);

    // Test case 4: a=12345, b=6789
    a = 12345;
    b = 6789;
    control=1;
    #10;
    $display("Test Case 4: a=%d, b=%d, sum=%d, carry_out=%d", a, b, sum, carry_out);

    // Stop simulation
    $finish;
  end
endmodule
