`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2023 00:41:10
// Design Name: 
// Module Name: bitwise_compliment
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
module bitwise_complement(
  input [31:0] a,
  input con,
  output [31:0] b
);

  wire [31:0] s1;
  wire [31:0] s2;
  
  bitwise_xor u1(
    .a(a),
    .b(32'b1111_1111_1111_1111_1111_1111_1111_1111),
    .result(s1)
  );
  
  assign s2 = s1 + 1'b1; // 1's complement
  assign b = con ? s2 : s1; // 2's complement
  
endmodule


