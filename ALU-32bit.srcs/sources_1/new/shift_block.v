`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2023 00:08:43
// Design Name: 
// Module Name: shift_block
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
module single_bit_shift(
  input [31:0] data,
  input control,  
  output reg [31:0] shifted_data
);

  wire [31:0] temp_shifted_data;
  wire [31:0] temp_shifted_data1;

  // Logical Left Shift (1 bit)
  assign temp_shifted_data = {data[30:0], 1'b0};

  // Logical Right Shift (1 bit)
  assign temp_shifted_data1 = {1'b0, data[31:1]};

  always @*
  begin
    case (control)
      1'b0: shifted_data <= temp_shifted_data;
      1'b1: shifted_data <= temp_shifted_data1;
      default: shifted_data <= 32'bx;
    endcase
  end

endmodule


// example for 4 bit shift:
//module top_module(
//  input [3:0] data,
//  input left_shift,
//  input right_shift,
//  output [3:0] shifted_data
//);

//  // Instantiate single_bit_shift module 4 times
//  single_bit_shift inst0 (
//    .data(data),
//    .left_shift(left_shift),
//    .right_shift(right_shift),
//    .shifted_data(shifted_data)
//  );

//  single_bit_shift inst1 (
//    .data(shifted_data),
//    .left_shift(left_shift),
//    .right_shift(right_shift),
//    .shifted_data(shifted_data)
//  );

//  single_bit_shift inst2 (
//    .data(shifted_data),
//    .left_shift(left_shift),
//    .right_shift(right_shift),
//    .shifted_data(shifted_data)
//  );

//  single_bit_shift inst3 (
//    .data(shifted_data),
//    .left_shift(left_shift),
//    .right_shift(right_shift),
//    .shifted_data(shifted_data)
//  );

//endmodule

