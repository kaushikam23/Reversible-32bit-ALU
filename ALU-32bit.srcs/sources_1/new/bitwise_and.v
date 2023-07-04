`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2023 05:09:39
// Design Name: 
// Module Name: bitwise_and
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


module bitwise_and(
  output [31:0] result,
  input [31:0] a,
  input [31:0] b

);
  wire [31:0] and_output;

  // Instantiate 32 instances of the and_gate module
  and_gate u_and[31:0](
    .result(and_output),
    .a(a),
    .b(b)
  );

  // Assign the and_output to the result
  assign result = and_output;
endmodule


