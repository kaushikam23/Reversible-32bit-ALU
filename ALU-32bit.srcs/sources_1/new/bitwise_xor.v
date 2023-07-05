`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2023 13:23:01
// Design Name: 
// Module Name: bitwise_xor
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


module bitwise_xor(
  input [31:0] a,
  input [31:0] b,
  output [31:0] result
);
  wire [31:0] xor_output;

  // Instantiate 32 instances of the xor_gate module
  xor_gate u_xor[31:0](
    .a(a),
    .b(b),
    .z(xor_output)
  );

  // Assign the xor_output to the result
  assign result = xor_output;
endmodule