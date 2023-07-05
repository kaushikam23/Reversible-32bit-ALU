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

  reg [31:0] a;
  reg [31:0] b;
  wire [31:0] result;

  bitwise_and dut (
    .result(result),
    .a(a),
    .b(b)
  );

  initial begin
    // Initialize input values
    a = 32'h12345678;
    b = 32'h87654321;

    // Wait for a few simulation cycles
    #10;

    // Display input values and result
    $display("Input a: %h", a);
    $display("Input b: %h", b);
    $display("Result: %h", result);

    // Finish simulation
    $finish;
  end

endmodule
