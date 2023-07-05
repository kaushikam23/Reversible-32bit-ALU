`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2023 23:37:45
// Design Name: 
// Module Name: adder_32bit
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

module ripple_carry_adder_32bit (
  input [31:0] a,
  input [31:0] b,
  input control,
  output [31:0] sum,
  output carry_out
);
 
  wire [31:0] carry;
  wire [31:0] sum_temp;
  wire [31:0] b_mux;
  wire [31:0] f;
  wire [31:0] h;
  
  // Generate the bitwise XOR complement of b  
  bitwise_xor u1(.a(b), .b(32'b1111_1111_1111_1111_1111_1111_1111_1111), .result(f));
  assign h= f+32'b1;
  
  assign b_mux = control ? h : b;
  
  assign carry[0] = 0; // Assign 0 to carry-in of the LSB
  
  genvar i;
  generate
    for (i = 0; i < 32; i = i + 1) begin : adder_gen
      full_adder adder(
        .a(a[i]),
        .b(b_mux[i]),
        .carry_in(carry[i]),
        .sum(sum_temp[i]),
        .carry_out(carry[i+1])
      );
    end
  endgenerate

  assign sum = sum_temp;
  assign carry_out = carry[31];
endmodule
