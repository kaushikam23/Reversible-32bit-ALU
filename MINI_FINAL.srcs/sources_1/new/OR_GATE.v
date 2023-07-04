`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2023 15:32:16
// Design Name: 
// Module Name: or_gate
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

module OR_GATE(output z, input a, input b);
  wire t1,t2;
  toffoli_gate u1(.z(t1), .a(a),.b(1'b1), .c(1'b1));
  toffoli_gate u2(.z(t2), .a(b), .b(1'b1), .c(1'b1));
  toffoli_gate u3(.z(z), .a(t1), .b(t2), .c(1'b1));
endmodule
