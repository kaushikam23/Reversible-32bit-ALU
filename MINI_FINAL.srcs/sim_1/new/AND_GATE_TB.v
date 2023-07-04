`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2023 13:17:28
// Design Name: 
// Module Name: NAND_GATE_TB
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


module AND_GATE_TB;
    reg A,B;
    wire C;
    
    AND_GATE uut (.C(C),.A(A), .B(B));
    
     reg clk=0;
     always #5 clk = ~clk;

  // Test case
  initial begin
    // Initialize inputs
    A = 0;
    B = 0;
    
    #5     
    $display("A=%b, B=%b, C_out=%b", A,B,C);

    A = 0;
    B = 1;
    
    #5    
    $display("A=%b, B=%b,  C_out=%b", A,B,C);
    A = 1;
    B = 0;
    
    #5    
    $display("A=%b, B=%b,  C_out=%b", A,B,C);
    
    A = 1;
    B = 1;
    
    #5     
    $display("A=%b, B=%b, C_out=%b", A,B,C);

    $finish; // End simulation
  end
endmodule
