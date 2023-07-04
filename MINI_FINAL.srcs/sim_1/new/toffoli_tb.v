`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2023 13:56:17
// Design Name: 
// Module Name: toffoli_tb
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


module ToffoliGate_TB;
  reg a,b,c;
  wire z;

  // Instantiate the Toffoli gate module
  toffoli_gate uut(.z(z), .a(a), .b(b), .c(c));

  // Clock generation
  reg clk;
  always #5 clk = ~clk;

  // Test case
  initial begin
    // Initialize inputs
    a = 0;
    b = 0;
    c = 0;
    #5     
    $display("A=%b, B=%b, C=%b, C_out=%b", a, b, c, z);

    a = 1;
    b = 1;
    c = 0;
    #5    
    $display("A=%b, B=%b, C=%b, C_out=%b", a,b,c,z);
    
     a = 1;
    b = 0;
    c = 1;
    #5    
    $display("A=%b, B=%b, C=%b, C_out=%b", a,b,c,z);
    
     a = 1;
    b = 1;
    c = 1;
    #5     
    $display("A=%b, B=%b, C=%b, C_out=%b", a,b,c,z);

    $finish; // End simulation
  end
endmodule
