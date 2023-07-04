`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2023 14:03:27
// Design Name: 
// Module Name: OR_GATE_TB
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


module OR_GATE_TB;
  reg a, b;
  wire z;

  // Instantiate the XOR gate
  OR_GATE uut(
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
