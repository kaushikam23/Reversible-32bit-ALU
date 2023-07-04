`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2023 14:53:16
// Design Name: 
// Module Name: xor_gate_tb
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

module XOR_GATE_TB;
  reg a, b;
  wire z;

  // Instantiate the XOR gate
  XOR_GATE uut(
    .z(z),
    .a(a),
    .b(b)
  );

  // Stimulus generation
  initial begin
    // Test case 1: a=0, b=0
    a = 0;
    b = 0;
    #10;
   

    // Test case 2: a=1, b=0
    a = 1;
    b = 0;
    #10;
   

    // Test case 3: a=0, b=1
    a = 0;
    b = 1;
    #10;
    

    // Test case 4: a=1, b=1
    a = 1;
    b = 1;
    #10;
    
$monitor("Test Case 1: a=%b, b=%b, z=%b", a, b, z);
    // Stop simulation
    $finish;
  end
endmodule
