`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2023 14:10:16
// Design Name: 
// Module Name: HALF_ADDER_TB
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


module HALF_ADDER_TB;
    wire sum,carry;
    reg a,b;
    
    half_adder uut (.sum(sum), .carry(carry),.a(a),.b(b));
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
    
$monitor("Test Case 1: a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);
    // Stop simulation
    $finish;
  end
endmodule
