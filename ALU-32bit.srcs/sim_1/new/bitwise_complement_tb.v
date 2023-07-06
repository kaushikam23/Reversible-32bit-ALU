`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2023 21:32:54
// Design Name: 
// Module Name: bitwise_complement_tb
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

module bitwise_complement_tb;
  reg [31:0] A;
  reg  con;
  wire [31:0] B;

  // Instantiate the DUT (Design Under Test)
  bitwise_complement uut (.a(A), .con(con), .b(B));

  initial begin
    A = 32'b10101010_00000000_10101010_00000000;
    con = 0;
    #10; // Wait for combinational logic to settle
    $display("Output C: %b", B);
    
    A = 32'b10101010_00000000_10101010_00000000;
    con = 1;
    #10; // Wait for combinational logic to settle
    $display("Output C: %b", B);
   $finish; // End the simulation
  end
endmodule