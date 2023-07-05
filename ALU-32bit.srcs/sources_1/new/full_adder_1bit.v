`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2023 23:26:17
// Design Name: 
// Module Name: full_adder_1bit
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

module full_adder(
  input a,
  input b,
  input carry_in,
  output sum,
  output carry_out
);
wire t1,t2,t3,t4,t5;
xor_gate u1(.a(a), .b(b), .z(t1));
xor_gate u2(.a(t1), .b(carry_in), .z(sum));
and_gate u3(.A(a), .B(b), .C(t2));
and_gate u4(.A(a), .B(carry_in), .C(t3));
and_gate u5(.A(b), .B(carry_in), .C(t4));
or_gate u6(.a(t2), .b(t3), .z(t5));
or_gate u7(.a(t5), .b(t4), .z(carry_out));

 // assign sum = a ^ b ^ carry_in;
 //assign carry_out = (a & b) | (a & carry_in) | (b & carry_in);
 
 endmodule