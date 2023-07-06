`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2023 01:17:29
// Design Name: 
// Module Name: comparator_block
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

module comparator_block (
  input [31:0] a,
  input [31:0] b,
  input [1:0]con,
  output reg [31:0] out  
);
     wire gt;
     wire lt;
     wire eq;
     wire neq;

 
  assign gt = (a > b); 
  assign lt = (a < b);  
  assign eq = (a == b); 
  assign neq = (a != b);
  
always @*
  begin
    case (con)
      2'b00: out <= gt;
      2'b01: out <= lt;
      2'b10: out<= eq;
      2'b11: out<= neq;
      default: out <= 1'bx;
    endcase
  end

endmodule
