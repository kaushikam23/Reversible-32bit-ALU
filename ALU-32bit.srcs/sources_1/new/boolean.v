`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2023 21:58:44
// Design Name: 
// Module Name: bool_block
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


module bool_block(
  input [31:0] a,
  input [31:0] b,
  input [1:0] sel,
  output reg [31:0] out
);

  wire [31:0] o1, o2, o3, o4;
  bitwise_and u1(.a(a), .b(b), .result(o1));
  bitwise_or u2(.a(a), .b(b), .result(o2));
  bitwise_xor u3(.a(a), .b(b), .result(o3));
  bitwise_complement u4(.a(a), .con(1'b1), .b(o4));
  
 always @*
  begin
    case (sel)
      2'b00:  out = o1;
      2'b01: out = o2;
      2'b10: out = o3;
      2'b11: out = o4;
      default: out = 32'bx;
    endcase
  end
    
endmodule

