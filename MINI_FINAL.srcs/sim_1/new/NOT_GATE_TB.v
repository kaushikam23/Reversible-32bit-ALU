`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2023 00:46:30
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
module not_gate_tb;
    reg A;
    wire C;
    
    not_gate uut (.c(C),.a(A));
    
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

