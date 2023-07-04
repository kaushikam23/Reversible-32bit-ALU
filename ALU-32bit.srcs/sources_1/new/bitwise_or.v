`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2023 05:18:12
// Design Name: 
// Module Name: bitwise_or
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

module bitwise_or(
output [31:0] result,
  input [31:0] a,
  input [31:0] b
  
);
  wire [31:0] or_output;

  // Instantiate 32 instances of the or_gate module
  or_gate u_or[31:0](
    .z(or_output),
        .a(a),
        .b(b)
);
  // Assign the or_output to the result
  assign result = or_output;
endmodule