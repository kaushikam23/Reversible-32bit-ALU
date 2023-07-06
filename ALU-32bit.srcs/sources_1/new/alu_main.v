`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2023 01:55:47
// Design Name: 
// Module Name: alu_main
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


module alu_main(
    input [31:0] A,
    input [31:0] B,
    input [7:0] CONTROL,
    output reg [31:0] OUT    
    );
    
    wire [31:0] t1,t2,t3,t4;
    wire carry;
    
    single_bit_shift u1(.data(A), .control(CONTROL[5]), .shifted_data(t1));
    bool_block u2(.a(A), .b(B), .sel(CONTROL[4:3]), .out(t2));
    ripple_carry_adder_32bit u3(.a(A), .b(B), .control(CONTROL[2]), .sum(t3), .carry_out(carry));
    comparator_block u4(.a(A), .b(B), .con(CONTROL[1:0]), .out(t4));
    
    always @*
    begin
    case(CONTROL[7:6])
    2'b00: begin
               OUT=t1;               
               end
    2'b01: begin
               OUT=t2;               
               end
    2'b10: begin
               OUT=t3;              
               end
    2'b11: begin
               OUT=t4;
               end
    default: OUT=32'bx;
    endcase
    end
    
endmodule
