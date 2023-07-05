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
  output reg [31:0] result,
  input [31:0] a,
  input [31:0] b
);
  reg [31:0] and_output;

  // Instantiate 32 instances of the and_gate module
  genvar i;
  generate
    for (i = 0; i < 32; i = i + 1) begin : AND_INST
      and_gate u_and (
        .C(and_output[i]),
        .A(a[i]),
        .B(b[i])
      );
    end
  endgenerate

  // Assign the and_output to the result
  always @*
    result = and_output;

endmodule


