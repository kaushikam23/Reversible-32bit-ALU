`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2023 13:41:16
// Design Name: 
// Module Name: NOT_GATE_TB
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
module NOT_GATE_TB;
    reg A;
    wire C;
    
    NOT_GATE uut (.c(C),.a(A));
    
     reg clk=0;
     always #5 clk = ~clk;

  // Test case
  initial begin
    // Initialize inputs
    A = 0;       
    #5     
    $display("A=%b,  C_out=%b", A,C);

    A = 1;    
    #5    
    $display("A=%b,   C_out=%b", A,C);   

    $finish; // End simulation
  end
endmodule