`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2023 15:15:42
// Design Name: 
// Module Name: bitwise_and_tb
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


module bitwise_and_tb;
  wire [31:0] r;
  reg [31:0] A;
  reg [31:0] B;

  // Instantiate the DUT (Design Under Test)
  bitwise_and uut (.a(A), .b(B), .result(r));

  initial begin
    A = 32'b10101010_00000000_10101010_00000000;
    B = 32'b10101010_10101010_10101010_10101010;

    #10; // Wait for combinational logic to settle
    $display("Output C: %b", r);
   $finish; // End the simulation
  end
endmodule
